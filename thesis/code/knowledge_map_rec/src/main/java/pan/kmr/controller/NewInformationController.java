/**
 * 有关单表填写，修改，显示
 * 用户在注册后需要填写年龄和人群类型，如果选择了人群类型则忽略年龄，如果没有选择，则根据年龄判断。
 * 年龄的填写的必填的，但是人群类型不是。
 */
package pan.kmr.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import pan.kmr.mapper.source1.PeopleMapper;
import pan.kmr.service.FindUid;


@Controller
public class NewInformationController { //暂时只是测试前后端接受是否有问题，先不管数据库操作
    @Autowired
    PeopleMapper peopleMapper;

    @Autowired
    FindUid findUid;

    @PostMapping("/postForm") //登入后填写表格
    public String Show(@Param("symptom") String[] symptom,@Param("lack") String [] lack,
                       @Param("peopleType") String peopleType, @Param("preference") String [] preference,
                       @Param("age") int age, Model model) {

        int b = findUid.getUserUidBySession();//从session中得到的uid
        System.out.println(b);
        if(peopleMapper.queryTypeByUid(b)!=null){ //如果type为空，则说明是第一次填写。不为空则说明不是第一次填写，则需要先删除之前的记录。
                                                    //symptom等表是两个字段的组合主键，因此直接先删完后插入比update更方便（反正数据量很小）
            //修改才会做的操作
            peopleMapper.deleteAllLackByUid(b);
            peopleMapper.deleteAllPreferenceByUid(b);
            peopleMapper.deleteAllSymptomByUid(b);
            if (peopleType != null) { //uid+type写入数据库
                peopleMapper.updateTypeByUid(b, peopleType, age);
            } else {    //如果PeopleType是空的则根据age来判断人群种类
                String type1;
                if (0<=age && age<=6){
                    type1="幼儿";
                }else if(6<age && age<=12) {
                    type1="儿童";
                }else if(12<age && age<=17){
                    type1="青少年";
                } else if(45<age && age<=69){
                    type1="中年人";
                } else if(age>69){
                    type1="老年人";
                }else{
                    type1="一般人群";
                }
                peopleMapper.updateTypeByUid(b, type1, age);
            }
        }else {    //第一次填写才会做的操作
            if (peopleType != null) { //uid+type写入数据库
                peopleMapper.addType(b, peopleType, age);
            } else {
                String type1;
                if (0<=age && age<=6){
                    type1="幼儿";
                }else if(6<age && age<=12) {
                    type1="儿童";
                }else if(12<age && age<=17){
                    type1="青少年";
                } else if(45<age && age<=69){
                    type1="中年人";
                } else if(age>69){
                    type1="老年人";
                }else{
                    type1="一般人群";
                }
                peopleMapper.addType(b, type1, age);//根据age来判断人群种类
            }
        }
     //无论修改还是第一次填写都要做的操作：
        if (symptom != null) {   //uid+症状写入数据库
            for (String a : symptom) {
                peopleMapper.addSymptom(b, a);
            }
        }
        if (lack != null) {   //uid+缺乏元素写入数据库
            for (String a : lack) {
                peopleMapper.addLack(b, a);
            }
        }
        if (preference != null) {   //uid+缺乏元素写入数据库
            for (String a : preference) {
                peopleMapper.addPreference(b, a);
            }
        }
        return "redirect:/myInformation";
    }
}
