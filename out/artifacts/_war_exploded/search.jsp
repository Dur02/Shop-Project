<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="t"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单查询</title>
    <style>
        *{
            margin: auto;
            padding: 0;
            list-style: none;
        }
    </style>
</head>
<body>
<iframe src="header.jsp" width="100%" height="172px" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes" id="iframe"></iframe>
    <div style="width: 1000px;border: 3px solid #AACDE8;border-bottom: 0;padding-bottom: 5px;">
        <div style="width: 1000px;height: 35px;text-align: left;background-color: #AACDE8">
            <p style="margin-left: 15px;font-size: 15px;padding-top:5px;"><b>订单信息查询</b></p>
        </div>
        <div style="width: 100%;text-align: left">
            <p style="padding-left: 15px;padding-top: 25px;"><b><span style="color: red">帅哥|美女</span>：您好，你当前的共有[${count}]个订单：(点击订单可显示该订单下的购物明细)</b></p>
        </div>
        <table style="width: 98%;text-align: center;border: 1px solid grey;border-collapse: collapse;margin-top: 3px;font-size: 13px;">
            <tr style="border-bottom: 1px solid grey;background-color: #FFFF9A;height: 50px;">
                <td style="width: 25%;">订单编号</td>
                <td style="width: 20%;">下单时间</td>
                <td style="width: 20%;">发货时间</td>
                <td style="width: 10%;">订单状态</td>
                <td style="width: 25%;">订单总额</td>
            </tr>
            <c:forEach items="${searchList}" var="search">
            <tr style="border-bottom: 1px solid grey;height: 60px;background-color: #a0b3d6">
                <td style="width: 25%;"><input type="checkbox">${search.ordercode}</td>
                <td style="width: 20%;">${search.creatdate}</td>
                <td style="width: 20%;">${search.senddate}</td>
                <td style="width: 10%;">${search.status}</td>
                <td style="width: 25%;"><fmt:formatNumber type="number" value="${search.amount}" pattern="0.00" maxFractionDigits="2"/></td>
            </tr>
            <tr style="border-bottom: 1px solid grey;background-color: #CCCCCC;height: 50px;">
                    <td style="width: 25%;">物品图片</td>
                    <td style="width: 20%;">标题</td>
                    <td style="width: 20%;">供应商</td>
                    <td style="width: 10%;">订单状态</td>
                    <td style="width: 25%;">购买数量</td>
            </tr>
            <tr>
                <c:forEach items="${goodList}" var="good">
                    <td style="width: 25%;"><img style="width:80px;border:1px solid black" src="images/article/${good.image}"></td>
                    <td style="width: 20%;"><a href="DetailServlet?id=${good.id}" style="text-decoration: none;overflow: hidden;text-overflow: ellipsis;display: -webkit-box;-webkit-line-clamp: 2;-webkit-box-orient: vertical;">${article.title}</a></td>
                    <td style="width: 20%;">${good.supplier}</td>
                    <td style="width: 10%;">${good.price}</td>
                    <td style="width: 25%;"></td>
                </c:forEach>
            </tr>
            </c:forEach>
        </table>
    </div>
    <div style="width: 1050px;">
        <img src="images/step.jpg">
    </div>
</body>
</html>