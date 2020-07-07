package pan.kmr.bean;

import org.springframework.stereotype.Component;

/**
 * 用户的账户类，只管理用户账号和密码，用于的登录注册等
 */
@Component
public class Account {
    int uid;
    String username;
    String password;

    public Account() {
    }

    public Account(int uid, String username, String password) {
        this.uid = uid;
        this.username = username;
        this.password = password;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Account{" +
                "uid=" + uid +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
