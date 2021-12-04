package cn.wyu.web;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.wyu.pojo.Order;
import cn.wyu.service.OrderService;
import cn.wyu.service.OrderServiceImpl;

@WebServlet("/OrderInsertServlet")
public class OrderInsertServlet extends HttpServlet {
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
        //接收sum
        String sum = request.getParameter("sum");
        OrderService od = new OrderServiceImpl();
        if(userid == null || "".equals(userid)) {
            response.getWriter().write("notLogin");
        }else{
            Order order = new Order();
            Random rand = new Random();
            String ordercode = "OP-";
            ordercode = ordercode + new SimpleDateFormat("yyyyMMdd").format(new Date());
            ordercode = ordercode + String.valueOf(rand.nextInt(100000));
            System.out.println(ordercode);
            order.setOrdercode(ordercode);
            order.setCreatdate(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date()));
            order.setSenddate(null);
            order.setStatus("已付款");
            order.setAmount(Double.parseDouble(sum));
            order.setUserid(Integer.parseInt(userid));
            int in = od.insertOrder(order);
            if(in>0) {
                response.getWriter().write("success");
            }else {
                response.getWriter().write("error");
            }
        }
    }
}
