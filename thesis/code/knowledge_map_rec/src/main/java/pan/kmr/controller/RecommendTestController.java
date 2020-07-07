package pan.kmr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pan.kmr.mapper.source1.PeopleMapper;
import pan.kmr.mapper.source2.FoodMapper;
import pan.kmr.mapper.source2.PathMapper;
import pan.kmr.service.FindUid;
import pan.kmr.service.Recommend;
import pan.kmr.service.Sort;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Controller
public class RecommendTestController {
    @Autowired
    PathMapper pathMapper;
    @Autowired
    FoodMapper foodMapper;
    @Autowired
    FindUid findUid;
    @Autowired
    PeopleMapper peopleMapper;
    @Autowired
    Recommend recommend;
    @Autowired
    Sort sort;

    @RequestMapping("/test1")
    @ResponseBody
    Integer shortestPathLength(){ //测试最短路径寻找
       return recommend.shortestPathLength("竹笋","老母鸡");
    }

    @RequestMapping("/test2")
    @ResponseBody
    List<String> negativeFoods(){ //去除negativefoods
        int uid = findUid.getUserUidBySession();
        List<String> symptoms = peopleMapper.querySymptomByUid(uid);
        String peopleType = peopleMapper.queryTypeByUid(uid);
        ArrayList<String> negativeFoods=recommend.getNegativeFoods(symptoms,peopleType);
        ArrayList<String> basicFoods=foodMapper.getAllfnames();
        basicFoods.removeAll(negativeFoods);
       return basicFoods;
    }
    @RequestMapping("/test3")
    @ResponseBody
    double negativeFoods3(){
        int uid = findUid.getUserUidBySession();
        List<String> symptoms = peopleMapper.querySymptomByUid(uid);
        String peopleType = peopleMapper.queryTypeByUid(uid);
        List<String> lacks= peopleMapper.queryLackByUid(uid);
        List<String> preferences= peopleMapper.queryPreferenceByUid(uid);
        double a = recommend.calculateScore("红薯/地瓜", preferences, lacks, symptoms, peopleType);

        return a;
    }

    @GetMapping("/test4")
    @ResponseBody
    HashMap<String, Double> score(){
        int uid = findUid.getUserUidBySession();
        List<String> symptoms = peopleMapper.querySymptomByUid(uid);
        String peopleType = peopleMapper.queryTypeByUid(uid);
        List<String> lacks= peopleMapper.queryLackByUid(uid);
        List<String> preferences= peopleMapper.queryPreferenceByUid(uid);
        ArrayList<String> basicFoods=foodMapper.getAllfnames();
        ArrayList<String> negativeFoods=recommend.getNegativeFoods(symptoms,peopleType);
        basicFoods.removeAll(negativeFoods);

        HashMap<String,Double> scoreMap= new HashMap<String,Double>();
        for (String food:basicFoods) {
            double a = recommend.calculateScore(food, preferences, lacks, symptoms, peopleType);
            scoreMap.put(food,a);
        }
        List<String> f=sort.resultSort(scoreMap);
        System.out.println(f);
        return scoreMap;
    }

    @GetMapping("/test5")
    @ResponseBody
    List<String> foods(){
        int uid = findUid.getUserUidBySession();
        List<String> symptoms = peopleMapper.querySymptomByUid(uid);
        String peopleType = peopleMapper.queryTypeByUid(uid);
        List<String> lacks= peopleMapper.queryLackByUid(uid);
        List<String> preferences= peopleMapper.queryPreferenceByUid(uid);
        return recommend.personalRec(preferences,lacks,symptoms,peopleType);
    }

}
