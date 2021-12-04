<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登录</title>
    <style>
        *{
            margin: auto;
            padding: 0;
            list-style: none;
        }
    </style>
</head>
<body>
<div style="width: 1000px;height: 400px;margin-top: 140px;background-image: url('images/login_bg.jpg')">
    <div style="width: 500px;float: right;padding-top: 60px;padding-right: 30px;">
        <form action="javascript:0" method="post" id="loginForm">
            <table style="width:400px;background-color: #FFFFFF;font-size: 14px;padding-left: 50px;">
                <tr style="height: 15px;"></tr>
                <tr>
                    <td></td>
                    <td style="float: right;padding-right: 20px;">还不是商城用户？<a href="register.jsp" style="color: blue">立即注册</a></td>
                </tr>
                <tr style="height: 25px;"></tr>
                <tr>
                    <td >登录名</td>
                    <td><input style="border: 1px solid #D9D9D9;background-color: #E8F0FE;outline: none;width: 230px;position: relative;margin-top: 0px;margin-left: 25px;height: 25px;right: 28px;" type="text" name="loginname" id="loginname" value=""></td>
                </tr>
                <tr>
                    <td></td>
                    <td><span id="span1" style="color: #CCCCCC">请输入登录名</span></td>
                </tr>
                <tr style="height: 15px;"></tr>
                <tr>
                    <td>密码</td>
                    <td><input style="border: 1px solid #D9D9D9;background-color: #E8F0FE;outline: none;width: 230px;position: relative;margin-top: 0px;margin-left: 25px;height: 25px;right: 28px;" type="password" name="password" id="password" value="" minlength="6" maxlength="12"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><span id="span2" style="color: #CCCCCC">请输入6-12位密码</span></td>
                </tr>
                <tr style="height: 15px;"></tr>
                <tr>
                    <td></td>
                    <td><button style="width: 110px;height: 32px;cursor: hand;outline: none;background: linear-gradient(to bottom,#fda341,#ff850d);border: 0px solid #f89949;" id="loginBut">登  录</button></td>
                </tr>
                <tr style="height: 15px;"></tr>
                <tr>
                    <td colspan="2">疯狂源自梦想，技术成就辉煌&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://gz.gec-edu.org/?gzdbgzbdyueqianpc23" style="color: blue">广州粤嵌</a></td>
                </tr>
                <tr style="height: 15px;"></tr>
            </table>
        </form>
    </div>
</div>
</body>
<!--jq文件-->
<script src="js/jquery-3.1.1.min.js"></script>
<script>
    //登录按钮的点击事件
    $(function(){
        var loginBut = $("#loginBut");
        loginBut.click(function(){
            var loginname = $("#loginname").val();
            var password = $("#password").val();
            var json = {"loginname":loginname,"password":password};
            $.post("LoginServlet",json,function(data,code){
                if(data=="false"){
                    //修改提示语
                    var span1 = $("#span1").html("登录名错误，请重新输入");
                    var span2 = $("#span2").html("密码错误，请重新输入");
                    span1.css({"color":"red"});
                    span2.css({"color":"red"});
                }else{
                    window.location.href="IndexServlet";
                }
            })
        });
    });
    $(document).ready(function () {
        $("a").each(function () {
            var textValue = $(this).html();
            if (textValue == "首页") {
                $(this).css("cursor", "default");
                $(this).attr('href', '#');     //修改<a>的 href属性值为 # 这样状态栏不会显示链接地址
                $(this).click(function (event) {
                    event.preventDefault();   // 如果<a>定义了 target="_blank" 需要这句来阻止打开新页面
                });
            }
        });
    });
</script>
</html>