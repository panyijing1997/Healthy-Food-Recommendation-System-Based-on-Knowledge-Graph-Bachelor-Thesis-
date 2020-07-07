package pan.kmr.mapper.source1;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import pan.kmr.bean.FoodInformation;

import java.util.List;

@Mapper
@Repository
public interface FoodInformationMapper {
    List<FoodInformation> queryAllFoodInformation();
    FoodInformation queryFoodByFname(String fname);
    FoodInformation queryFoodByImg(String img);
    List<FoodInformation> queryFoodByFnameLike(String fname);
}
