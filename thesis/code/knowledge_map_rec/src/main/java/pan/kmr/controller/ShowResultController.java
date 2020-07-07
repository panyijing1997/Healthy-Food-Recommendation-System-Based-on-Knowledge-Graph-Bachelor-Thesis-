package pan.kmr.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import pan.kmr.bean.FoodInformation;
import pan.kmr.mapper.source1.FoodInformationMapper;
import pan.kmr.mapper.source1.PeopleMapper;
import pan.kmr.mapper.source2.FoodMapper;
import pan.kmr.mapper.source2.SymptomMapper;
import pan.kmr.service.FindUid;
import pan.kmr.service.Recommend;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ShowResultController {
    @Autowired
    SymptomMapper symptomMapper;
    @Autowired
    FoodInformationMapper foodInformationMapper;
    @Autowired
    FoodMapper foodMapper;
    @Autowired
    FindUid findUid;
    @Autowired
    PeopleMapper peopleMapper;
    @Autowired
    Recommend recommend;

    @GetMapping("/personalRecommend")
    String personalRec(Model model){
        int uid = findUid.getUserUidBySession();
        List<String> symptoms = peopleMapper.querySymptomByUid(uid);
        String peopleType = peopleMapper.queryTypeByUid(uid);
        List<String> lacks= peopleMapper.queryLackByUid(uid);
        List<String> preferences= peopleMapper.queryPreferenceByUid(uid);
        List<String> fnames=recommend.personalRec(preferences,lacks,symptoms,peopleType);
        List<FoodInformation> foods=new ArrayList<>();
        for (String f : fnames){
            if(foodInformationMapper.queryFoodByFname(f)!=null) {

                foods.add(foodInformationMapper.queryFoodByFname(f));
            }
        }

        model.addAttribute("foods",foods.subList(0,8));
        return "PersonalRecommend";
    }

    @PostMapping("/search")
    String showSearchResult(@Param("fname") String fname, Model model){
        model.addAttribute("foodName",fname);
        List<FoodInformation> foods= foodInformationMapper.queryFoodByFnameLike(fname);
        model.addAttribute("foods",foods);
        return "search";
    }


    @PostMapping("/peopleType")
    String showChosenPeopleType(@Param("people") String people, Model model){
        System.out.println(people);
        model.addAttribute("people",people);
        //查找图数据库返回结果
        List<String> fnames=foodMapper.positiveFoodByPeopleType(people);
        List<FoodInformation> foods=new ArrayList<>();
        for (String f : fnames){
            if(foodInformationMapper.queryFoodByFname(f)!=null) {

                foods.add(foodInformationMapper.queryFoodByFname(f));
            }
        }
        model.addAttribute("foods",foods);
        return "peopleType";
    }


    @PostMapping("/nutrient")
    String showChosenNutrient(@Param("nutrient") String nutrient, Model model){
        model.addAttribute("nutrient",nutrient);

        //查找图数据库返回结果
        List<String> fnames=foodMapper.positiveFoodByNutrient(nutrient);
        List<FoodInformation> foods=new ArrayList<>();
        for (String f : fnames){
            if(foodInformationMapper.queryFoodByFname(f)!=null) {

                foods.add(foodInformationMapper.queryFoodByFname(f));
            }
        }
        model.addAttribute("foods",foods);
        return "nutrient";
    }



    @PostMapping("/symptom")
    String showChosenSymptom(@Param("symptom") String symptom, Model model){
        System.out.println(symptom);
        model.addAttribute("symptom",symptom);
        List<String> fnames= foodMapper.positiveFoodBySymptom(symptom);// 得到各种事物的名称。
        List<FoodInformation> foods=new ArrayList<FoodInformation>();
        for (String f : fnames){
            if(foodInformationMapper.queryFoodByFname(f)!=null) {

                foods.add(foodInformationMapper.queryFoodByFname(f));
            }
        }
        model.addAttribute("foods",foods);
        return "symptom";
    }


}
