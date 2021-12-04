package cn.wyu.web;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

@WebServlet("/CheckCodeServlet")
public class CheckCodeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int width = 100;
        int height = 30;
        BufferedImage bufferedImage = new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);//创建图像缓冲区
        //美化图片
        Graphics g = bufferedImage.getGraphics();//通过缓冲区创建一个画笔
        //矩形
        //Color c = new Color(232, 232, 232);//颜色
        g.setColor(Color.WHITE);//背景色
        g.fillRect(0, 0, width, height);//填充矩形
        //产生4个随机数
        String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        char[] charList = str.toCharArray();
        Random r = new Random();
        //接收产生的随机数
        String codeString = "";
        for(int i = 0; i < 4; i++) {
            int index = r.nextInt(charList.length);
            g.setColor(new Color(r.nextInt(255),r.nextInt(255),r.nextInt(255)));
            g.setFont(new Font("微软雅黑",0,18));
            String code = charList[index]+"";
            g.drawString(code, (width/5*i+15), height/2+5);
            codeString+=code;
            g.drawLine(r.nextInt(width), r.nextInt(height), r.nextInt(width), r.nextInt(height));
        }
        System.out.println("验证码"+codeString);
        HttpSession session = request.getSession();
        session.setAttribute("checkcode", codeString);
        //告诉浏览器以图片形式打开
        ImageIO.write(bufferedImage, "JPG", response.getOutputStream());//在客户端上画图
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
