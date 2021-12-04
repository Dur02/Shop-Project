<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>注册</title>
    <style>
        *{
            margin: auto;
            padding: 0;
            list-style: none;
        }
        .input{
            width: 160px;
            height: 30px;
            background-image: url("images/register.jpg");
            border: none;
            outline: none;
        }
        .test1{
            border: 1px solid #a0b3d6;
            width: 700px;
            height: 100px;
            font-size: 13px;
            padding: 4px;
            color: #333333;
            outline: 0;
            background-color: #EFEFEF;
            text-align: left;
            overflow-x: hidden;
            overflow-y: auto;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div style="width: 1000px;height: 20px;position:relative;top: 140px;left: 10px;">
    <b>注册新用户</b>
</div>
<div style="width: 1000px;border: 2px solid grey;border-top: 0;position: relative;margin-top: 150px;">
    <div style="width: 980px;text-align: center;color: chocolate;border-bottom: 1px solid yellow;">
        <b style="position:relative;right: 50px;">个人用户信息</b>
    </div>
    <div style="font-size: 13px;text-align: center">
        <form action="javascript:0" id="registerForm">
            <table>
                <tr style="height: 20px;"></tr>
                <tr>
                    <td>* 登录名: </td>
                    <td><input placeholder="请输入4-15位用户名" type="text" name="loginName" id="loginName" style="width: 200px;"></td>
                </tr>
                <tr style="height: 20px;"></tr>
                <tr>
                    <td>* 设置密码: </td>
                    <td><input placeholder="请输入6-12位密码" type="password" name="password" id="password" style="width: 200px;"></td>
                </tr>
                <tr style="height: 20px;"></tr>
                <tr>
                    <td>* 确认密码: </td>
                    <td><input placeholder="请重新输入密码" type="password" name="repassword" id="repassword" style="width: 200px;"></td>
                </tr>
                <tr style="height: 20px;"></tr>
                <tr>
                    <td>* 真实姓名: </td>
                    <td><input placeholder="请输入名字"type="text" name="name" id="name" style="width: 200px;"></td>
                </tr>
                <tr style="height: 20px;"></tr>
                <tr>
                    <td>* 性别: </td>
                    <td  style="float: left">
                        <input type="radio" name="sex" value="0" checked="checked">男
                        <input type="radio" name="sex" value="1">女
                    </td>
                </tr>
                <tr style="height: 20px;"></tr>
                <tr>
                    <td>* 电子邮箱: </td>
                    <td><input placeholder="请输入邮箱地址" type="text" name="email" id="email" style="width: 200px;"></td>
                </tr>
                <tr style="height: 20px;"></tr>
                <tr>
                    <td>* 联系电话: </td>
                    <td><input placeholder="请输入11位电话号码" type="text" onkeyup="this.value = parseInt(this.value.replace(/[^\d]/g,''))" name="phone" id="phone" style="width: 200px;"></td>
                </tr>
                <tr style="height: 20px;"></tr>
                <tr>
                    <td>* 详细地址: </td>
                    <td><input placeholder="请输入详细地址" type="text" name="address" id="address" style="width: 200px;"></td>
                </tr>
                <tr style="height: 20px;"></tr>
                <tr>
                    <td style="position: relative;bottom: 1px;">* 验证码: </td>
                    <td><input type="text" name="inputcode" id="inputcode"style="width: 90px;position: relative;bottom: 10px;">
                        <a href="javascript:updateCode();"><img alt="图片不存在" src="CheckCodeServlet" id="code"></a></td>
                    <td><a href="javascript:updateCode();">看不清？换一张</a></td>
                </tr>
                <tr style="height: 20px;"></tr>
                <tr>
                    <td colspan="2"><input type="submit" value="" class="input" id="but"></td>
                </tr>
            </table>
        </form>
        <div class="test1"contenteditable="false">
            <h4><b>广州粤嵌网站用户注册协议</b></h4>
            <br>
            <p>本协议是您和广州粤嵌网站（简称“本站”，网址：www.fkjava.org）所得者（以下简称“广州粤嵌”）之间就广州粤嵌网站服务等相关事宜所订立的契约请你仔细阅读本注册协议，您点击“同意以下协议，提交”按钮后，本协议即构成对双方有约束力的法律文件。</p>
            <br>
            <h4>第1条 本站服务条款的确认和接纳</h4>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>本站的各项电子服务的所有权和运作权归广州粤嵌所有。用户同意所有注册协议条款并完成注册即代表所有权归广州粤嵌所有</p>
            <p>1.本协议内容包括协议正文及所有淘宝已经发布的或将来可能发布的各</p>
        </div>
    </div>
</div>
<img src="images/step.jpg" alt="" style="margin-top: 0px;margin-left: 235px;">
</body>
<!--jq文件-->
<script src="js/jquery-3.1.1.min.js"></script>
<!--jq 表单验证插件-->
<script src="js/jquery.validate.js"></script>
<script>
    $(function () {
        //自定义手机号码的验证规则
        $.validator.addMethod("isPhone", function (value, element, params) {
                var reg = /^1[3|4|5|6|7|8|9]\d{9}$/;
                var res = reg.test(value);
                return res;
            }
        );

        $("#registerForm").validate({
            rules: {
                loginName: {
                    "required": true,
                    "rangelength": [4, 15]
                },
                password: {
                    "required": true,
                    "rangelength": [6, 12]
                },
                repassword: {
                    "required": true,
                    "equalTo": "#password"
                },
                name: {
                    "required": true
                },
                email: {
                    "required": true,
                    "email": true
                },
                phone: {
                    "required": true,
                    "isPhone": true
                },
                address: {
                    "required": true
                },
                inputcode: {
                    "required": true
                }
            },
            messages: {
                loginName: {
                    "required": "<span style=\"color: red;font-size: 12px\">登录名不可以为空</span>",
                    "rangelength": "<span style=\"color: red;\">用户名须在4-15位</span>"
                },
                password: {
                    "required": "<span style=\"color: red;font-size: 12px\">设置密码不可以为空</span>",
                    "rangelength": "<span style=\"color: red;font-size: 12px\">密码必须是6-12位</span>"
                },
                repassword: {
                    "required": "<span style=\"color: red;font-size: 12px\">确认密码不可以为空</span>",
                    "equalTo": "<span style=\"color: red;font-size: 12px\">两次密码不一致</span>"
                },
                name: {
                    "required": "<span style=\"color: red;font-size: 12px\">真实姓名不可以为空</span>"
                },
                email: {
                    "required": "<span style=\"color: red;font-size: 12px\">电子邮箱不可以为空</span>",
                    "email": "<span style=\"color: red;font-size: 12px\">电子邮箱格式不正确</span>"
                },
                phone: {
                    "required": "<span style=\"color: red;font-size: 12px\">手机号码不可以为空</span>",
                    "isPhone": "<span style=\"color: red;font-size: 12px\">手机号码格式不正确</span>"
                },
                address: {
                    "required": "<span style=\"color: red;font-size: 12px\">联系地址不可以为空</span>"
                },
                inputcode: {
                    "required": "<span style=\"color: red;font-size: 12px\">验证码不可以为空</span>"
                }
            }
        });
    })
    //刷新验证码
    function updateCode(){
        var time = new Date().getTime();
        var img = document.getElementById("code");
        img.src = "http://localhost:8085/_war_exploded/CheckCodeServlet?"+time;
    }
    //提交按钮的点击事件
    var but = $("#but");
    but.click(function(){
        //完成Ajax操作
        $.ajax({
            type: 'POST',
            url: "RegisterServlet",
            async: false,
            data: $("#registerForm").serialize(),
            success : function(data) {
                if(data=="success"){
                    window.location.href="login.jsp";
                }else if(data=="codefalse"){
                    alert("验证码错误");
                }else if(data=="null"){
                    alert("表单不能为空");
                }else if(data=="error"){
                    alert("用户已注册");
                }else{
                    alert("注册失败");
                }
            },
            error : function() {
                alert("注册失败");
            }
        });
    });
</script>
</html>
