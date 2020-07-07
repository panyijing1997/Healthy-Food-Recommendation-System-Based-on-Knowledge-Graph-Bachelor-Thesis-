package pan.kmr.bean;

import org.springframework.stereotype.Component;

import java.util.ArrayList;

/**
 * 用户信息类
 * 用户在注册后需要填写年龄和人群类型，如果选择了人群类型则忽略年龄，如果没有选择，则根据年龄判断。
 */
@Component
public class People {
    int uid;
    int age;
    String type;
    ArrayList<String> symptom;
    ArrayList<String> lack;
    ArrayList<String> preference;

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public People() {
    }

    public People(int uid, int age, String type, ArrayList<String> symptom, ArrayList<String> lack, ArrayList<String> preference) {
        this.uid = uid;
        this.age = age;
        this.type = type;
        this.symptom = symptom;
        this.lack = lack;
        this.preference = preference;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public ArrayList<String> getSymptom() {
        return symptom;
    }

    public void setSymptom(ArrayList<String> symptom) {
        this.symptom = symptom;
    }

    public ArrayList<String> getLack() {
        return lack;
    }

    public void setLack(ArrayList<String> lack) {
        this.lack = lack;
    }

    public ArrayList<String> getPreference() {
        return preference;
    }

    public void setPreference(ArrayList<String> preference) {
        this.preference = preference;
    }

    @Override
    public String toString() {
        return "People{" +
                "uid=" + uid +
                ", age=" + age +
                ", type='" + type + '\'' +
                ", symptom=" + symptom +
                ", lack=" + lack +
                ", preference=" + preference +
                '}';
    }
}
