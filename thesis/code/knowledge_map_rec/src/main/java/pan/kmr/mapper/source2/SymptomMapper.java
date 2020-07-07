package pan.kmr.mapper.source2;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
@Mapper
@Repository
public interface SymptomMapper {
    List<String> queryPositiveNutrientBySymptom(String symptom);
}
