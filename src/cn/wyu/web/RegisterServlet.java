package cn.wyu.web;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;
import cn.wyu.pojo.User;
import cn.wyu.service.UserService;
import cn.wyu.service.UserServiceImpl;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //解决中文乱码问题
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //1、获得从客户端提交的数据
        //String loginname = request.getParameter("loginname");
        //String password = request.getParameter("password");
        //System.out.println("loginname == "+loginname);
        //System.out.println("password == "+password);
        //2、获取从客户端提交的数据集合
        Map<String, String[]> map = request.getParameterMap();
        //3、将数据集合封装到pojo对象
        map.forEach((key,value)->System.out.println(request.getParameter(key)));
        String inputcode = request.getParameter("inputcode");
        HttpSession session = request.getSession();
        String sessioncode = (String)session.getAttribute("checkcode");
        System.out.println("inputcode:"+inputcode);
        System.out.println("sessioncode:"+sessioncode);
        if(!"".equals(inputcode)&&null!=inputcode) {
            if(inputcode.equalsIgnoreCase(sessioncode)) {
                //4、用工具类完成数据封装
                User user = new User();
                try {
                    BeanUtils.populate(user, map);
                    user.setDateTime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
                    user.setDisable(1);
                    user.setRole(1);
                    user.setActive("null");
                } catch (IllegalAccessException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                } catch (InvocationTargetException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                System.out.println("接收到的user对象:"+user);
                //将接收到的对象传到service层完成业务逻辑
                UserService us = new UserServiceImpl();
                int in = us.insertUser(user);
                if(in>0) {
                    response.getWriter().write("success");
                }else {
                    response.getWriter().write("error");
                }
            }else {
                response.getWriter().write("codefalse");
            }
        }else {
            response.getWriter().write("null");
        }
    }
}
