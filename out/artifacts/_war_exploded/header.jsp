<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物商城</title>
    <style>
        *{
            margin: auto;
            padding: 0;
            list-style: none;
        }
        .header-a{
            text-decoration: none;
            color: #CCCCCC;
        }
        a:hover{
            color: black;
        }
        li{
            float: left;
            line-height: 30px;
            list-style: none;
        }
        li a{
            font-size: 12px;
            color: #FFFFFF;
            text-decoration: none;
            margin-left: 27px;
        }
        li:hover{
            color: #FFFF00;
        }
    </style>
</head>
<body>
<div style="height: 32px;width: 100%;background-color: #EFEFEF;">
    <div style="width:1000px;height:32px;font-size: 12px;line-height: 32px;text-align: center;">
        官方网站：<a href="http://gz.gec-edu.org/?gzdbgzbdyueqianpc23" target="_top">http://gz.gec-edu</a>
        <c:choose>
	        <c:when test="${user != null}">
		        [<span style="text-decoration:underline;">欢迎您，${user.name}</span>]
		        [<a href="http://localhost:8080/_war_exploded/LogoutServlet" target="_top">注销</a>]
	        </c:when>
	        <c:otherwise>
		        [<a href="http://localhost:8080/_war_exploded/login.jsp" target="_top"><span id="loginToName">登录</span></a>]
		        [<a href="http://localhost:8080/_war_exploded/register.jsp" target="_top">免费注册</a>]
	        </c:otherwise>
        </c:choose>
        [<a href="CartArticleSerclet?userid=${user.id}" target="_top">我的购物车</a>]
        [<a href="OrderListServlet?userid=${user.id}" target="_top">我的订单</a>]
        <a href="#">设为首页</a> |
        <a href="#">加入收藏</a>
    </div>
    <div style="width:1000px;height:110px;position: relative;">
        <img src="images/article/logo.gif">
        <img src="images/banner.gif"style="margin-top: 10px;">
        <div style="position: absolute;right: 50px;top: 30px;font-size: 12px;">
            <div style="border: 1px solid #CCCCCC;width: 70px;height:20px;line-height:20px;text-align: center;"><a href="#" class="header-a">关于我们</a></div>
            <div style="border: 1px solid #CCCCCC;width: 70px;height:20px;line-height:20px;text-align: center;margin-top: 10px;"><a href="#" class="header-a">联系方式</a></div>
        </div>
    </div>
    <div style="width: 100%;height: 30px;background-color: #CC3333">
        <div style="width: 1000px;height: 32px;">
            <ul>
                <li><a href="http://localhost:8080/_war_exploded/IndexServlet" target="_top">首页</a></li>
                <c:forEach items="${typeList}" var="type">
				<c:if test="${(type.code).length() == 4}">
                <li><a href="http://localhost:8080/_war_exploded/IndexServlet?typecode=${(type.code)}&typename=${(type.name)}" target="_top">${(type.name)}</a></li>
                </c:if>
				</c:forEach>
            </ul>
        </div>
    </div>
</div>
</body>
</html>