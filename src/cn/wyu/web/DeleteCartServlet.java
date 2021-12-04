package cn.wyu.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.wyu.pojo.Cart;
import cn.wyu.pojo.Detail;
import cn.wyu.service.CartService;
import cn.wyu.service.CartServiceImpl;

@WebServlet("/DeleteCartServlet")
public class DeleteCartServlet extends HttpServlet {
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
        //接收id
        String userid = request.getParameter("userid");
        CartService ct = new CartServiceImpl();
        int dl = ct.deleteCart(id);
        if(dl>0) {
            List<Detail> articleList = ct.findCartGoodsByUserid(userid);
            List<Cart> cartList = ct.findCartByUserid(userid);
            HttpSession session = request.getSession();
            session.setAttribute("cartList",cartList);
            session.setAttribute("articleList",articleList);
            System.out.println("cartList:"+cartList);
            System.out.println("articleList:"+articleList);
            request.getRequestDispatcher("/cart.jsp").forward(request,response);
        }
    }
}
