package cn.wyu.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.wyu.pojo.User;
import cn.wyu.service.UserService;
import cn.wyu.service.UserServiceImpl;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //解决中文乱码问题
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String loginname = request.getParameter("loginname");
        String password = request.getParameter("password");
        System.out.println("loginname:"+loginname);
        System.out.println("password:"+password);
        //将接收到的对象传到service层完成业务逻辑
        UserService us = new UserServiceImpl();
        User user = us.findByNumber(loginname,password);
        if(user!=null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            response.getWriter().write("true");
        }else {
            response.getWriter().write("false");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }
}
