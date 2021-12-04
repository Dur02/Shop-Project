package cn.wyu.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.wyu.pojo.Detail;
import cn.wyu.service.DetailService;
import cn.wyu.service.DetailServiceImpl;

@WebServlet("/DetailServlet")
public class DetailServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //解决中文乱码问题
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //接收id
        String id = request.getParameter("id");
        System.out.println("id---->"+id);
        DetailService dt = new DetailServiceImpl();
        List<Detail> goodList = dt.findGoodById(id);
        HttpSession session = request.getSession();
        session.setAttribute("goodList",goodList);
        session.setAttribute("id",id);
        request.getRequestDispatcher("/detail.jsp").forward(request,response);
    }
}
