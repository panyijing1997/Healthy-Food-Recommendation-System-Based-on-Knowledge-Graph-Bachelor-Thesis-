package pan.kmr.service;

import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class Sort {
    public List<String> resultSort(HashMap<String, Double> foodSocres){
      //  Set set=foodSocres.keySet();
      //  Object[] arr = set.toArray();
       // Arrays.sort(arr);
        List<Map.Entry<String, Double>> list = new ArrayList<Map.Entry<String, Double>>(foodSocres.entrySet());
        //list.sort()
        list.sort(new Comparator<Map.Entry<String, Double>>() {
            @Override
            public int compare(Map.Entry<String, Double> o1, Map.Entry<String, Double> o2) {
                return o2.getValue().compareTo(o1.getValue());
            }
        });
        List<String>foodsResult= new ArrayList<>();
        for (int i = 0; i < list.size(); i++) {
           foodsResult.add( list.get(i).getKey());
        }
        return foodsResult;
    }
}
