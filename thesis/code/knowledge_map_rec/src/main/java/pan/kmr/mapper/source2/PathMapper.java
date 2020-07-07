package pan.kmr.mapper.source2;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Mapper
@Repository
public interface PathMapper {
    Integer shortestPathLength(String property, String food); //计算最短路径长度（小于5，无negative边）
    //如果用int，则null传入int会报错。如果是Integer，那传进来的就是null，没有问题
}
