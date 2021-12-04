<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>详情</title>
    <style>
        *{
            margin: auto;
            padding: 0;
            list-style: none;
        }
        .index-a{
            text-decoration: none;
            color: blue;
        }
        .cayegory li{
            width: 180px;
            height: 35px;
            line-height: 35px;
            margin-left: 7px;
            border-bottom: 1px #F5A65B solid;
            font-size: 12px;

        }
        .cayegory li span{
            color:#F5A65B;
            font-size: 15px;
            position: absolute;
            right: 15px;
        }
        .btn-numbox {
            position: relative;
            right: 240px;
        }
        .btn-numbox li {
            float: left;
        }
        .btn-numbox .count {
            overflow: hidden;
            margin: 0 16px 0 -20px;
        }
        .btn-numbox .count .num-jian,
        .input-num,
        .num-jia {
            display: inline-block;
            width: 28px;
            height: 30px;
            line-height: 28px;
            text-align: center;
            font-size: 18px;
            color: #999;
            cursor: pointer;
            border: 1px solid #e6e6e6;
            background-color: #FFFFFF;
            margin: 1px;
        }
        .btn-numbox .count .input-num {
            width: 58px;
            height: 28px;
            color: #333;
            border-left: 0;
            border-right: 0;
        }
    </style>
</head>
<body>
<iframe src="header.jsp" width="100%" height="172px" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes" id="iframe"></iframe>
<div style="width: 1000px;height:700px;position: relative;">
    <div style="width: 20%;height:615px;background: #F5A65B;position: absolute;">
        <p style="margin-left: 5px;margin-top: 5px;font-weight: bold;font-size: 15px;">物品分类</p>
        <div class="cayegory" style="background: white;margin: 2px;margin-top: 8px;">
            <ul>
                <c:forEach items="${typeList}" var="type">
                    <c:if test="${(type.code).length() == 4}">
                        <li><a href="IndexServlet?typecode=${(type.code)}&typename=${(type.name)}" class="index-a" id="${(type.name)}">&nbsp;-${(type.name)}</a><span>></span></li>
                    </c:if>
                </c:forEach>
            </ul>
        </div>
    </div>
    <div style="width: 80%;height:600px;position: absolute;left: 20%;">
        <c:forEach items="${goodList}" var="good">
            <div style="text-align: center;font-size: 16px;">
                <p style="padding-top: 10px;">${good.title}</p>
            </div>
            <div style="width: 35%;height:600px;float:left;">
                <img style="width: 260px;height: 260px;border: 1px solid grey;margin-left: 8px;margin-top: 10px;" src="./images/article/${good.image}">
                <p style="font-size: 13px;margin-top: 10px;text-align: center;">评分：★★★★★<a href="#">(已有151人评价)</a></p>
                <p style="font-size: 13px;text-align: center"><a href="#">该商品支持全国购买</a></p>
            </div>
            <div style="width: 63%;height:600px;float:right;font-size: 15px;">
                <div style="border-top: 2px solid grey;margin-top: 10px;margin-bottom: 10px;"></div>
                <div>
                    <p>供货商：<b>${good.supplier}</b></p>
                    <p style="margin-top: 5px;">出产地：<b>${good.locality}</b></p>
                    <p style="margin-top: 30px;">定 价：￥<fmt:formatNumber value="${good.price}" type="number" pattern="#.00"/></p>
                    <p style="margin-top: 15px;color: red">疯 狂 价：￥<fmt:formatNumber value="${good.price*good.discount}" type="number" pattern="#.00"/>（${good.discount}折）</p>
                    <p style="margin-top: 15px;">库 存：${good.storage} 下单后立即发货</p>
                    <p style="margin-top: 15px;">促销信息：<span style="color: red">该商品参加满减活动，购买活动商品每满300元，可减100现金</span></p>
                    <table style="width: 500px;height: 50px;border: 2px solid #EED97C;margin-top: 30px;background-color: #FFFCEB;">
                        <tr>
                            <td style="padding-top: 10px;padding-bottom: 10px;padding-left: 10px;border-bottom: 2px dashed #F5A65B;">我要买:&nbsp;&nbsp; </td>
                            <td>
                                <ul class="btn-numbox">
                                    <li>
                                        <ul class="count">
                                            <li><button id="num-jian" class="num-jian">-</button></li>
                                            <li><input type="text" class="input-num" id="number" value="1" maxlength="2" autocomplete="off" oninput="if(value<1)value=1" onkeyup="this.value = parseInt(this.value.replace(/[^\d]/g,''))|0"></li>
                                            <li><button id="num-jia" class="num-jia">+</button></li>
                                        </ul>
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td style="padding-top: 10px;padding-bottom: 10px;">
                                <img style="padding-left: 10px;" src="images/btn_new1.jpg" id="img">
                                <img style="padding-left: 5px;" src="images/btn_attention.jpg"><td>
                        <tr>
                    </table>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
<img src="images/step.jpg" alt="" style="position:absolute;top:784px;margin-left: 235px;">
</body>
<!--jq文件-->
<script src="js/jquery-3.1.1.min.js"></script>
<script>
    //提交图片的点击事件
    var img = $("#img");
    img.click(function(){
        var number = $("#number").val();
        //alert(number);
        //完成Ajax操作
        $.ajax({
            type: 'POST',
            url: "CartServlet?id=${id}&userid=${user.id}",
            async: true,
            data: {"number":number},
            success : function(data) {
                //alert(data);
                if(data=="notLogin"){
                    window.location.href="login.jsp";
                    alert("请先登录");
                }else if(data=="success"){
                    window.location.href="CartArticleSerclet?userid=${user.id}";
                }else{
                    alert("加入购物车失败");
                }
            },
            error : function() {
                alert("失败");
            }
        });
        return false;
    });
</script>
<script>
    var num_jia = document.getElementById("num-jia");
    var num_jian = document.getElementById("num-jian");
    var input_num = document.getElementById("number");
    num_jia.onclick = function() {

        input_num.value = parseInt(input_num.value) + 1;
    }
    num_jian.onclick = function() {
        if(input_num.value <= 1) {
            input_num.value = 1;
        }
        else {
            input_num.value = parseInt(input_num.value) - 1;
        }
    }
</script>
</html>