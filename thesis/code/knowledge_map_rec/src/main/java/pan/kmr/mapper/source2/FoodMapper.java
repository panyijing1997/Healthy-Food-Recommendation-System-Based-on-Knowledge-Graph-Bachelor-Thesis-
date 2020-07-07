package pan.kmr.mapper.source2;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import pan.kmr.bean.Food;

import java.util.ArrayList;
import java.util.List;

@Mapper
@Repository
public interface FoodMapper {
    List<Food> getAll();
    ArrayList<String> getAllfnames();
    //根据食物名称查询食物有关信息
    List<String> negativeSymptomByFname(String fname);
    List<String> positiveSymptomByFname(String fname);
    List<String> negativePeopleByFname(String fname);
    List<String> positivePeopleByFname(String fname);
    List<String> muchNutrientByFname(String fname);
    List<String> featureByFname(String fname);

    //根据症状查询相关食物
    List<String> positiveFoodBySymptom(String symptom);
    //根据营养元素查询相关食物
    List<String> positiveFoodByNutrient(String nutrient);
    //根据营养元素查询相关食物
    List<String> positiveFoodByPeopleType(String peopleType);

    ArrayList<String> getNegativeFoods(String property);//根据property查询具有直接negative关系的food

}
