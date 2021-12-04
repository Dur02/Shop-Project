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
import cn.wyu.pojo.Page;
import cn.wyu.pojo.Type;
import cn.wyu.service.DetailService;
import cn.wyu.service.DetailServiceImpl;
import cn.wyu.service.TypeService;
import cn.wyu.service.TypeServiceImpl;

@WebServlet("/IndexServlet")
public class IndexServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //解决中文乱码问题
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //接收页数
        String pageIndex = request.getParameter("pageIndex");
        //接收类型编码
        String typecode = request.getParameter("typecode");
        //接收关键字
        String keyword = request.getParameter("keyword");
        System.out.println("typecode---->"+typecode);
        System.out.println("keyword---->"+keyword);
        DetailService dt = new DetailServiceImpl();
        TypeService tp = new TypeServiceImpl();
        Page page = new Page();
        pageIndex = (pageIndex == null || "".equals(pageIndex)) ? "1" : pageIndex;
        page.setPageIndex(Integer.valueOf(pageIndex));
        page.setPageSize(8);
        List<Detail> detailList = null;
        if((typecode == null || "".equals(typecode)) && (keyword == null || "".equals(keyword))) {
            detailList = dt.findAllGoods(page);
            page.setCount(dt.findCount());
            System.out.println("我在这1");
        }else if((typecode != null || !"".equals(typecode)) && (keyword == null || "".equals(keyword))){
            detailList = dt.findGoodsByTypecode(typecode,page);
            page.setCount(dt.findCountByTypecode(typecode));
            System.out.println("我在这2");
        }else {
            detailList = dt.findAllGoodsByTypecodeAndKeyword(typecode,keyword,page);
            page.setCount(dt.findCountByTypecodeAndKeyword(typecode,keyword));
            System.out.println("我在这3");
        }
        List<Type> typeList = tp.findAllTypes();
        int totalSize = page.getTotalSize();
        totalSize = (totalSize == 0) ? 1 : totalSize;
        String typename = request.getParameter("typename");
        typecode = request.getParameter("typecode");
        HttpSession session = request.getSession();
        session.setAttribute("detailList",detailList);
        session.setAttribute("pageIndex",pageIndex);
        session.setAttribute("totalSize",totalSize);
        session.setAttribute("typeList",typeList);
        session.setAttribute("typename",typename);
        session.setAttribute("typecode",typecode);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
