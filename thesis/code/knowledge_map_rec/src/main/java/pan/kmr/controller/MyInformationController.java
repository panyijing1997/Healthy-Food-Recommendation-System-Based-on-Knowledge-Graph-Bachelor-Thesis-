package pan.kmr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pan.kmr.mapper.source1.AccountMapper;
import pan.kmr.mapper.source1.FoodInformationMapper;
import pan.kmr.mapper.source1.PeopleMapper;
import pan.kmr.service.FindUid;

import java.util.ArrayList;
import java.util.List;

@Controller
public class MyInformationController {
    @Autowired
    FindUid findUid;
    @Autowired
    FoodInformationMapper foodInformationMapper;
    @Autowired
    PeopleMapper peopleMapper;
    @Autowired
    AccountMapper accountMapper;

    @GetMapping("/myInformation")
    public String myInformation(Model model){
        int uid=findUid.getUserUidBySession();
        model.addAttribute("uid",uid);

        int age=0;

        List<String> lacks=peopleMapper.queryLackByUid(uid);
        List<String> symptoms= peopleMapper.querySymptomByUid(uid);
        List<String> preferences= peopleMapper.queryPreferenceByUid(uid);
        String type=peopleMapper.queryTypeByUid(uid);
        List<String> liked1=accountMapper.queryLikedFoodByUid(uid);
        List<String> unliked1=accountMapper.queryUnlikedFoodByUid(uid);

        List<String> liked=new ArrayList<String>();;
        List<String> unliked = new ArrayList<String>();

        for(String a:liked1){
            liked.add(foodInformationMapper.queryFoodByImg(a).getFname());
        }
        for(String a:unliked1){
            unliked.add(foodInformationMapper.queryFoodByImg(a).getFname());
        }
        if(type!=null) { age=peopleMapper.queryAgeByUid(uid);}
        model.addAttribute("lacks",lacks);
        model.addAttribute("symptoms",symptoms);
        model.addAttribute("preferences",preferences);
        model.addAttribute("type",type);
        model.addAttribute("age",age);
        model.addAttribute("liked",liked);
        model.addAttribute("unliked",unliked);
        return "myInformation";
    }
}
