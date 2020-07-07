package pan.kmr.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import pan.kmr.mapper.source1.AccountMapper;

import javax.servlet.http.HttpServletRequest;

@Service
public class FindUid {
    @Autowired
    AccountMapper accountMapper;
    @Autowired
    HttpServletRequest r;

    public int getUserUidBySession() {
        r = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        Object obj=r.getSession().getAttribute("uid");
     //   System.out.println("得到的uid");
       // System.out.println(obj);
        int b = Integer.parseInt(obj.toString());
        return b;
    }
}
