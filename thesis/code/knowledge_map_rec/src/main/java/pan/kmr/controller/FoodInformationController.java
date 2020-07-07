package pan.kmr.controller;

import org.apache.ibatis.annotations.Param;
import org.neo4j.ogm.annotation.Relationship;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import pan.kmr.bean.FoodInformation;
import pan.kmr.mapper.source1.AccountMapper;
import pan.kmr.mapper.source1.FoodInformationMapper;
import pan.kmr.mapper.source2.FoodMapper;
import pan.kmr.service.FindUid;
import pan.kmr.service.RelatedFoods;

import java.util.ArrayList;
import java.util.List;

@Controller
public class FoodInformationController {
    @Autowired
    FoodMapper foodMapper;
    @Autowired
    FoodInformationMapper foodInformationMapper;
    @Autowired
    FindUid findUid;
    @Autowired
    RelatedFoods relatedFoods;
    @Autowired
    AccountMapper accountMapper;
    @GetMapping("/food/{img}")
    public String foodInformation(@PathVariable("img") String img, Model model){
        //sql
      FoodInformation foodInformation =foodInformationMapper.queryFoodByImg(img);
      String fname=foodInformation.getFname();

        //neo4j
      List<String> nutrients= foodMapper.muchNutrientByFname(fname); //该食物富含的元素neo4j
      List<String> negativeSymptom= foodMapper.negativeSymptomByFname(fname);//不利症状
      List<String> positiveSymptom=foodMapper.positiveSymptomByFname(fname);//有利症状
      List<String> negativePeople= foodMapper.negativePeopleByFname(fname);
      List<String> positivePeople= foodMapper.positivePeopleByFname(fname);
      List<String> feature=foodMapper.featureByFname(fname);

      model.addAttribute("foodInformation",foodInformation);
      model.addAttribute("nutrients",nutrients);
      model.addAttribute("negativeSymptom",negativeSymptom);
      model.addAttribute("positiveSymptom",positiveSymptom);
      model.addAttribute("positivePeople",positivePeople);
      model.addAttribute("negativePeople",negativePeople);

      //相关食物
      List<String> relates= relatedFoods.relatedFoods(feature,nutrients,positiveSymptom,positivePeople).subList(0,7) ;

      List<FoodInformation> foods=new ArrayList<>();
      for (String f : relates){
            if(foodInformationMapper.queryFoodByFname(f)!=null&&(!f.equals(fname))) {

                foods.add(foodInformationMapper.queryFoodByFname(f));
            }
      }
      int uid= findUid.getUserUidBySession();
      Integer liked=accountMapper.queryCommentByUidAndImg(uid,img);
      model.addAttribute("liked",liked);
      model.addAttribute("foods",foods);
      return "foodInformation";
    }

    @PostMapping("/like/{img1}")
    public String like(@PathVariable("img1") String img1,@Param("like") int like,Model model){
        model.addAttribute("img1",img1);
        int uid= findUid.getUserUidBySession();
        if(accountMapper.queryCommentByUidAndImg(uid,img1)==null){
            accountMapper.addComment(uid,img1,like);
        }else{
            accountMapper.updateComment(uid,img1,like);
        }

        return "redirect:/food/{img1}";
    }
}
