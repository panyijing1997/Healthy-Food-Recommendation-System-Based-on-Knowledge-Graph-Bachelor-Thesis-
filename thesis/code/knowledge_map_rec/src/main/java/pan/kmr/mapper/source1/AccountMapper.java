package pan.kmr.mapper.source1;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import pan.kmr.bean.Account;

import java.util.List;

@Mapper
@Repository
public interface AccountMapper {
    Account queryAccount(String username, String password);
    int addAccount(String username,String password);
    Account queryAccountByUsername(String username);
    Integer queryCommentByUidAndImg(int uid,String img);
    void addComment(int uid,String img, int comment);
    void updateComment(int uid,String img, int comment);
    List<String> queryLikedFoodByUid(int uid);
    List<String> queryUnlikedFoodByUid(int uid);
}
