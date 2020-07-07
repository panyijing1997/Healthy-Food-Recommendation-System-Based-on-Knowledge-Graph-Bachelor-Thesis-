package pan.kmr.bean;

import org.springframework.stereotype.Component;

@Component
public class FoodInformation {
    String fname;
    String introduction;
    String img;

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public FoodInformation(String fname, String introduction, String img) {
        this.fname = fname;
        this.introduction = introduction;
        this.img = img;
    }

    public FoodInformation() {
    }

    @Override
    public String toString() {
        return "FoodInformation{" +
                "fname='" + fname + '\'' +
                ", introduction='" + introduction + '\'' +
                ", img='" + img + '\'' +
                '}';
    }
}
