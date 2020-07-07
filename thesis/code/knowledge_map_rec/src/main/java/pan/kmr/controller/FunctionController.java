package pan.kmr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pan.kmr.bean.FoodInformation;
import pan.kmr.mapper.source1.FoodInformationMapper;
import pan.kmr.mapper.source1.PeopleMapper;
import pan.kmr.mapper.source2.FoodMapper;
import pan.kmr.service.FindUid;

import java.util.ArrayList;
import java.util.List;

@Controller
public class FunctionController {
    @Autowired
    FoodInformationMapper foodInformationMapper;
    @Autowired
    FoodMapper foodMapper;
    @Autowired
    PeopleMapper peopleMapper;
    @Autowired
    FindUid findUid;

    @GetMapping("/form")
    public String tooForm(Model model){

        Integer oldAge= peopleMapper.queryAgeByUid(findUid.getUserUidBySession());
        model.addAttribute("oldAge",oldAge);
        return "form";
    }

    @GetMapping("/peopleType")
    public String forPeopleType(Model model){
        return "peopleType";
    }
    @GetMapping("/nutrient")
    public String forNutrient(Model model){
        return "nutrient";
    }

    @GetMapping("/symptom")
    public String forSymptom(Model model){
        return "symptom";
    }

    @GetMapping("/search")
    public String forSearch(Model model){
        return "search";
    }
    @GetMapping("/nutrient/protein")
    public String protein(Model model){
        List<String> fnames=foodMapper.positiveFoodByNutrient("蛋白质");
        String nutrient="蛋白质";
        List<FoodInformation> foods=new ArrayList<>();
        for (String f : fnames){
            if(foodInformationMapper.queryFoodByFname(f)!=null) {

                foods.add(foodInformationMapper.queryFoodByFname(f));
            }
        }
        model.addAttribute("nutrient",nutrient);
        model.addAttribute("foods",foods);
        return "nutrient";

    }
}
