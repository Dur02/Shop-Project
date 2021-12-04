package cn.wyu.web;

import cn.wyu.pojo.Cart;
import cn.wyu.service.CartService;
import cn.wyu.service.CartServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.util.List;

import cn.wyu.pojo.Cart;
import cn.wyu.pojo.Detail;

@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //解决中文乱码问题
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //接收物品id
        String id = request.getParameter("id");
        System.out.println("id---->"+id);
        //接收用户id
        String userid = request.getParameter("userid");
        System.out.println("userid---->"+userid);
        //接收数量
        String number = request.getParameter("number");
        System.out.println("number---->"+number);
        if(userid == null || "".equals(userid)) {
            response.getWriter().write("notLogin");
        }else{
            CartService ct = new CartServiceImpl();
            Cart cart1 = new Cart();
            cart1.setArticleid(Integer.parseInt(id));
            cart1.setUserid(Integer.parseInt(userid));
            int ids = ct.findCountByArticleId(cart1);
            System.out.println("ids--->"+ids);
            if(ids>0) {
                int num = ct.findBuynumByArticleIdAndUserid(cart1);
                System.out.println("num--->"+num);
                if(num>0) {
                    Cart cart2 = new Cart();
                    cart2.setArticleid(Integer.parseInt(id));
                    cart2.setBuynum(Integer.parseInt(number)+num);
                    cart2.setUserid(Integer.parseInt(userid));
                    int ud = ct.updateCart(cart2);
                    if(ud>0) {
                        response.getWriter().write("success");
                    }else {
                        response.getWriter().write("error");
                    }
                }else {
                    Cart cart3 = new Cart();
                    cart3.setArticleid(Integer.parseInt(id));
                    cart3.setBuynum(Integer.parseInt(number));
                    cart3.setUserid(Integer.parseInt(userid));
                    int in = ct.insertCart(cart3);
                    if(in>0) {
                        response.getWriter().write("success");
                    }else {
                        response.getWriter().write("error");
                    }
                }
            }else {
                Cart cart3 = new Cart();
                cart3.setArticleid(Integer.parseInt(id));
                cart3.setBuynum(Integer.parseInt(number));
                cart3.setUserid(Integer.parseInt(userid));
                int in = ct.insertCart(cart3);
                if(in>0) {
                    response.getWriter().write("success");
                }else {
                    response.getWriter().write("error");
                }
            }
        }
    }
}
