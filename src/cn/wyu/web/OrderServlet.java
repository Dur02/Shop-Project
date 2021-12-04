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

@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //解决中文乱码问题
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //接收物品id和数量
        String product = request.getParameter("product");
        //接收sum
        String sum= request.getParameter("sum");
        System.out.println("sum---->"+sum);
        if(product == null) {
            response.getWriter().write("error");
        }else {
            DetailService dt = new DetailServiceImpl();
            List<Detail> ordersList = dt.findOrderGoodsById(product);
            ordersList.forEach(li -> System.out.println(li));
            HttpSession session = request.getSession();
            session.setAttribute("ordersList",ordersList);
            session.setAttribute("sum",sum);
            request.getRequestDispatcher("/order.jsp").forward(request,response);
        }
    }
}
