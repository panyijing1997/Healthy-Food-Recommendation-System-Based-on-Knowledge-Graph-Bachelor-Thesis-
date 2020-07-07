package pan.kmr.mapper.source1;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import pan.kmr.bean.People;

import java.util.List;

@Mapper
@Repository
public interface PeopleMapper {
  //  People queryPeopleByUid(int uid);
    int addLack(int uid, String oneLack);
    int addSymptom(int uid, String oneSymptom);
    int addPreference(int uid, String onePreference);
    int addType(int uid, String type,int age);

    List<String> querySymptomByUid(int uid);
    List<String> queryPreferenceByUid(int uid);
    List<String> queryLackByUid(int uid);
    String queryTypeByUid(int uid);
    Integer queryAgeByUid(int uid);

    int deleteAllSymptomByUid(int uid);
    int deleteAllPreferenceByUid(int uid);
    int deleteAllLackByUid(int uid);
    int updateTypeByUid(int uid, String type, int age);



}
