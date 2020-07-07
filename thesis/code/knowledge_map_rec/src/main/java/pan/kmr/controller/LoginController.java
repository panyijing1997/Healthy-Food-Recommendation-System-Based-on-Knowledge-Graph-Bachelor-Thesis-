/**
 * 有关登录和注册，登录成功后跳转主页，注册成功后跳转单表
 */
package pan.kmr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pan.kmr.bean.Account;
import pan.kmr.bean.Food;
import pan.kmr.mapper.source1.AccountMapper;
import pan.kmr.mapper.source2.FoodMapper;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class LoginController {

    @Autowired
    AccountMapper accountMapper;
    @Autowired
    FoodMapper foodMapper;
    @GetMapping("/register")
    public String tooReg(){
        return "register";
    }



    //注册
    @PostMapping("/register")
    public String register(@RequestParam(value="username") String username,
                           @RequestParam(value="password") String password,
                           @RequestParam(value="password2") String password2,
                           Model model, HttpSession session){
        if(!password.equals(password2)){
            model.addAttribute("msg","确认密码有误");
            return "register";
        }else if(accountMapper.queryAccountByUsername(username)!=null){
            model.addAttribute("msg","用户名已存在");
            return "register";
        }else{
            accountMapper.addAccount(username,password);
            Account a=accountMapper.queryAccountByUsername(username);
            int x=a.getUid();
            session.setAttribute("uid",x); //注册后自动登录，要把uid，loginUser的信息给session
            session.setAttribute("loginUser",username);
            return "redirect:/form";
        }
    }

    //登录
    @RequestMapping("/login")
    public String login(@RequestParam(value="username") String username,
                        @RequestParam(value="password") String password,
                        Model model, HttpSession session){

        if (accountMapper.queryAccount(username,password)!=null){
            Account a=accountMapper.queryAccountByUsername(username);
            int x=a.getUid();
            session.setAttribute("uid",x);
            session.setAttribute("loginUser",username);
           //把登录名加入seesion
            return "redirect:/main";
        } else{
            model.addAttribute("msg","用户名或密码错误");
            return "login";
        }
    }

    //注销
    @GetMapping("/signout")
    public String signout(HttpSession session){
        session.invalidate();
        return "redirect:/";

    }
    @GetMapping("/neo4j")
    @ResponseBody
    String neo4j(){
        List<Food> foods= foodMapper.getAll();
        return foods.toString();

    }
}
