package pan.kmr.bean;

import org.springframework.stereotype.Component;

/**
 * 这个是食物的实体类，对应neo4j中的一个节点。不是食物信息类
 */

@Component
public class Food {
    String foodName;

    public Food() {
    }

    public Food(String foodName) {
        this.foodName = foodName;
    }

    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }

    @Override
    public String toString() {
        return "Food{" +
                "foodName='" + foodName + '\'' +
                '}';
    }
}
