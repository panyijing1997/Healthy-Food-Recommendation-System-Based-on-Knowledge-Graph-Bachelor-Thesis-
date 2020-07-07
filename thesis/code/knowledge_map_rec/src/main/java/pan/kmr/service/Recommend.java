package pan.kmr.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pan.kmr.bean.FoodInformation;
import pan.kmr.mapper.source1.AccountMapper;
import pan.kmr.mapper.source1.FoodInformationMapper;
import pan.kmr.mapper.source1.PeopleMapper;
import pan.kmr.mapper.source2.FoodMapper;
import pan.kmr.mapper.source2.PathMapper;

import javax.swing.colorchooser.AbstractColorChooserPanel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
public class Recommend {
    @Autowired
    PathMapper pathMapper;
    @Autowired
    FoodMapper foodMapper;
    @Autowired
    FindUid findUid;
    @Autowired
    PeopleMapper peopleMapper;
    @Autowired
    Sort sort;
    @Autowired
    AccountMapper accountMapper;
    @Autowired
    FoodInformationMapper foodInformationMapper;

    public ArrayList<String> getBasicFoods(int k){
        return null;
    }
    public ArrayList<String> getNegativeFoods(List<String> symptoms,String peopleType) {
        ArrayList<String> negativeFoods = new ArrayList<String>();
        negativeFoods.addAll(foodMapper.getNegativeFoods(peopleType)); //根据人群类型
        if (symptoms != null) {   //根据症状
            for (String s : symptoms) {
                negativeFoods.addAll(foodMapper.getNegativeFoods(s));
            }
        }
        return negativeFoods;
    }

    public Integer shortestPathLength(String property,String food){
        /*测试最短路径寻找
        如果用int，则null传入int会报错。如果是Integer，那传进来的就是null，没有问题！*/
        Integer a=pathMapper.shortestPathLength(property,food);
        if(a==null) return 0;
        else return a;
    }

    public int scoreMap(int length){
        switch(length){
            case 0: return 0;
            case 1: return 12;
            case 2: return 5;
            case 3: return 3;
            case 4: return 2;
            case 5: return 1;
        }

        return 0;
    }

    public double calculateScore(String food, List<String> preferences, List<String> lacks, List<String> symptoms, String peopleType){
        double scoreP=0,scoreL=0,scoreS=0,scorePT,score;
        int i,h;
        if(preferences!=null){
            for(i=0;i<preferences.size();i++){
                h=shortestPathLength(preferences.get(i),food);
                scoreP=scoreP+scoreMap(h);
            }
          //   System.out.println("偏好分"+scoreP);
        }
        if(lacks!=null){
            for(i=0;i<lacks.size();i++){
                h=shortestPathLength(lacks.get(i),food);
                scoreL=scoreL+scoreMap(h);
            }
          //  System.out.println("营养分"+scoreL);
        }
        if(symptoms!=null){
            for(i=0;i<symptoms.size();i++){
                h=shortestPathLength(symptoms.get(i),food);
                scoreS=scoreS+scoreMap(h);
            }
        //    System.out.println("症状分"+scoreS);

        }
        h=shortestPathLength(peopleType,food);
        if (peopleType.equals("一般人群")) {
            scorePT=scoreMap(h)*0.5;
        }else{
            scorePT=scoreMap(h);
        }
        score=scoreL+scoreP+scoreS+scorePT;
     //   System.out.println("人群分"+scorePT);

        String img= foodInformationMapper.queryFoodByFname(food).getImg();

        Integer comment=accountMapper.queryCommentByUidAndImg(findUid.getUserUidBySession(),img);
        if(comment!=null){
                if(comment==1){
                score=score*0.8;
            }else if(comment==2){
                score=score*1.2;
            }else{

                }
        }

        return score;
    }

    public List<String> personalRec(List<String> preferences, List<String> lacks, List<String> symptoms, String peopleType){
        ArrayList<String> basicFoods=foodMapper.getAllfnames();
        ArrayList<String> negativeFoods=getNegativeFoods(symptoms,peopleType);
        basicFoods.removeAll(negativeFoods);

        HashMap<String,Double> scoreMap= new HashMap<String,Double>();
        for (String food:basicFoods) {
            double a = calculateScore(food, preferences, lacks, symptoms, peopleType);
            scoreMap.put(food,a);
        }
        List<String> f=sort.resultSort(scoreMap);
        return f;
    }
}
