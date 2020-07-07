package pan.kmr.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pan.kmr.mapper.source1.AccountMapper;
import pan.kmr.mapper.source1.FoodInformationMapper;
import pan.kmr.mapper.source1.PeopleMapper;
import pan.kmr.mapper.source2.FoodMapper;
import pan.kmr.mapper.source2.PathMapper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
public class RelatedFoods {
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
    FoodInformationMapper foodInformationMapper;
    @Autowired
    AccountMapper accountMapper;

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

    public double calculateScore(String food, List<String> preferences, List<String> lacks, List<String> symptoms, List<String> peopleTypes){
        double scoreP=0,scoreL=0,scoreS=0,scorePT=0,score;
        int i,h;
       // System.out.println(food);
        if(preferences!=null){
            for(i=0;i<preferences.size();i++){
                h=shortestPathLength(preferences.get(i),food);
                scoreP=scoreP+scoreMap(h);
            }
       //        System.out.println("偏好分"+scoreP);
        }
        if(lacks!=null){
            for(i=0;i<lacks.size();i++){
                h=shortestPathLength(lacks.get(i),food);
                scoreL=scoreL+scoreMap(h);
            }
      //        System.out.println("营养分"+scoreL);
        }
        if(symptoms!=null){
            for(i=0;i<symptoms.size();i++){
                h=shortestPathLength(symptoms.get(i),food);
                scoreS=scoreS+scoreMap(h);
            }
     //           System.out.println("症状分"+scoreS);

        }
        if(peopleTypes!=null){
            for(i=0;i<peopleTypes.size();i++){
                h=shortestPathLength(peopleTypes.get(i),food);
                scorePT=scorePT+scoreMap(h)*0.2;
            }
      //          System.out.println("人群"+scorePT);

        }
        score=scoreL+scoreP+scoreS+scorePT;
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

    public List<String> relatedFoods(List<String> preferences, List<String> lacks, List<String> symptoms, List<String> peopleType){
        ArrayList<String> basicFoods=foodMapper.getAllfnames();
        HashMap<String,Double> scoreMap= new HashMap<>();
        for (String food:basicFoods) {
            double a = calculateScore(food, preferences, lacks, symptoms, peopleType);
            scoreMap.put(food,a);
        }
        List<String> f=sort.resultSort(scoreMap);
        return f;
    }
}
