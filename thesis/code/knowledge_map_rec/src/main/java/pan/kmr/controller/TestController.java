package pan.kmr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pan.kmr.bean.Food;
import pan.kmr.bean.FoodInformation;
import pan.kmr.mapper.source1.FoodInformationMapper;
import pan.kmr.mapper.source2.FoodMapper;

import java.util.ArrayList;
import java.util.List;

@Controller
public class TestController {
    @Autowired
    FoodMapper foodMapper;
    @Autowired
    FoodInformationMapper foodInformationMapper;

    @GetMapping("/allfoods")
    String allfoods(Model model) {
        List<FoodInformation> foods = foodInformationMapper.queryAllFoodInformation();
        model.addAttribute("foods", foods);
        return "allFoods";
    }

}
