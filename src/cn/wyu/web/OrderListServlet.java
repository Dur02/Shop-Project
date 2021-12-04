package cn.wyu.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import cn.wyu.pojo.Order;
import cn.wyu.service.OrderService;
import cn.wyu.service.OrderServiceImpl;

@WebServlet("/OrderListServlet")
public class OrderListServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //解决中文乱码问题
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //接收userid
        String userid = request.getParameter("userid");
        if(userid == null || "".equals(userid)) {
            PrintWriter out = response.getWriter();
            out.write("<script>");
            out.write("window.location.href='login.jsp';");
            out.write("alert('请先登录');");
            out.write("</script>");
            out.close();
            response.getWriter().write("notLogin");
        }else{
            OrderService od = new OrderServiceImpl();
            List<Order> searchList = od.findSearchByUserid(userid);
            int count = od.findCountByUserid(userid);
            HttpSession session = request.getSession();
            session.setAttribute("searchList",searchList);
            session.setAttribute("count",count);
            request.getRequestDispatcher("/search.jsp").forward(request,response);
        }
    }
}
