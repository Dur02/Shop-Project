<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单</title>
    <style>
        *{
            margin: auto;
            padding: 0;
            list-style: none;
        }
        .save-button{
            border: 0px solid #f89949;
            position: relative;
            bottom:20px;
            left: 80px;
            margin-top: 30px;
            width: 130px;
            height: 32px;
            background: linear-gradient(to bottom,#fda341,#ff850d);
            color: white;
            cursor: hand;
        }
        .save-button-tip{
            font-size: 15px;
            font-weight: bold;
        }
    </style>
</head>
<body>
<iframe src="header.jsp" width="100%" height="172px" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes" id="iframe"></iframe>
    <div style="width: 1000px;border: 3px solid #AACDE8;border-bottom: 0;padding-bottom: 5px;">
        <div style="width: 100%;height: 35px;background-color: #AACDE8">
            <p style="padding-top:5px;padding-left: 15px;font-size: 15px;text-align: left;"><b>填写核对订单信息</b>
        </div>
        <div style="width: 98%;margin: 10px;font-size: 15px;background-color: #EFF4F8;border: 1px solid grey;border-left: 0;border-right: 0">
            <p style="padding-left: 15px;padding-top:15px;">收货人信息</p>
            <table style="margin-left: 30px;">
                <tr style="height: 10px;"></tr>
                <tr>
                    <td style="text-align: right"><span style="color: red">*</span> 收货人姓名: </td>
                    <td colspan="2">&nbsp;&nbsp;<input type="text" style="width: 200px;" value="${user.loginName}"></td>
                </tr>
                <tr style="height: 10px;"></tr>
                <tr>
                    <td style="text-align: right"><span style="color: red">*</span> 地址: </td>
                    <td colspan="2">&nbsp;&nbsp;<input type="text" style="width: 400px;" value="${user.address}"></td>
                </tr>
                <tr style="height: 10px;"></tr>
                <tr>
                    <td style="text-align: right"><span style="color: red">*</span> 电话号码: </td>
                    <td>&nbsp;&nbsp;<input type="text" style="width: 200px;" value="${user.phone}"></td>
                    <td>&nbsp;&nbsp;用于接收发货通知短信及发货前确认</td>
                </tr>
                <tr style="height: 10px;"></tr>
                <tr>
                    <td style="text-align: right">电子邮件: </td>
                    <td>&nbsp;&nbsp;<input type="text" style="width: 200px;" value="${user.email}"></td>
                    <td>&nbsp;&nbsp;用于接收订单提醒邮件，便于及时了解订单状态</td>
                </tr>
                <tr style="height: 10px;"></tr>
                <tr>
                    <td style="text-align: right">邮政编码: </td>
                    <td>&nbsp;&nbsp;<input type="text" style="width: 100px;"></td>
                    <td>&nbsp;&nbsp;有助于快速确定送货地址</td>
                </tr>
                <tr style="height: 10px;"></tr>
            </table>
            <div>
                <p style="margin-left: 100px;"><a href="#">[选中常用地址]</a></p>
            </div>
            <div>
                <button type="submit" class="save-button"><span class="save-button-tip">保存收货人信息</span></button>
            </div>
        </div>
        <div style="width: 100%;margin-left: 15px;font-size: 15px;margin-top: 20px;">
            <p>支付及配送方式</p>
            <table style="width: 100%;float: left;margin-left: 30px;">
                <tr style="height: 5px;"></tr>
                <tr>
                    <td style="width: 80px;">
                    	支付方式：
                    </td>
                    <td>
                    	在线支付
                    </td>
                </tr>
                <tr style="height: 5px;"></tr>
                <tr>
                    <td style="width: 80px;">
                    	配送方式：
                    </td>
                    <td>
                    	快递运输
                    </td>
                </tr>
                <tr style="height: 5px;"></tr>
                <tr>
                    <td style="width: 80px;text-align: right">
                       	 运费：
                    </td>
                    <td>
                        0.00元<span style="color:red;">（免运费）</span>
                    </td>
                </tr>
                <tr style="height: 5px;"></tr>
            </table>
        </div>
        <div style="width: 100%;margin-left: 15px;font-size: 15px;position: relative;top: 30px;">
            <p>商品清单<span style="padding-left: 780px;"><a href="CartArticleSerclet?userid=${user.id}">返回修改购物车</a></span></p>
            <table style="width: 950px;text-align: center;border: 1px solid grey;border-collapse: collapse;margin-top: 3px;">
                <tr style="border-bottom: 1px solid grey;background-color: #FFFF9A;height: 30px;">
                    <td style="width: 40%;">商品名称</td>
                    <td style="width: 20%;">疯狂价</td>
                    <td style="width: 10%;">返现</td>
                    <td style="width: 10%;">小计（元）</td>
                    <td style="width: 10%;">库存</td>
                    <td style="width: 10%;">数量</td>
                </tr>
                <c:forEach items="${ordersList}" var="orders" >
                <c:if test="${orders.storage >= orders.buynum}">
                <tr name="tr-item" style="border-bottom: 1px solid grey;height: 120px;font-size: 13px;">
                    <td style="width: 40%;">${orders.title}</td>
                    <td style="width: 20%;">￥<fmt:formatNumber value="${orders.price}" type="number" pattern="#.00"/>（${orders.discount}折）</td>
                    <td style="width: 10%;">￥0.00</td>
                    <td style="width: 10%;">￥<span id="price"><fmt:formatNumber value="${orders.price*orders.discount*orders.buynum}" type="number" pattern="#.00"/></span></td>
                    <td style="width: 10%;">${orders.storage}</td>
                    <td style="width: 10%;">${orders.buynum}</td>
                </tr></c:if>
                <c:if test="${orders.storage < orders.buynum}">
                <tr name="tr-item" style="border-bottom: 1px solid grey;height: 30px;">
                    <td style="width: 40%;">${orders.title}<span style="color: red">(超出库存，无法购买)</span></td>
                    <td style="width: 20%;">￥<fmt:formatNumber value="${orders.price}" type="number" pattern="#.00"/>（${orders.discount}折）</td>
                    <td style="width: 10%;">￥0.00</td>
                    <td style="width: 10%;">￥<span id="price">0.00</span></td>
                    <td style="width: 10%;"><span style="color: red">${orders.storage}</span></td>
                    <td style="width: 10%;">${orders.buynum}</td>
                </tr></c:if></c:forEach>
            </table>
        </div>
        <div style="width: 100%;margin-left: 15px;margin-top: 30px;font-size: 15px;position: relative;top: 30px;">
            <p style="font-size: 17px;"><b>结算信息</b></p>
            <div style="background-color: #FFFF9A;border-top: 1px solid saddlebrown;width: 950px;margin-top: 3px;">
                <p style="border-bottom: 1px dashed saddlebrown;width: 95%;height: 30px;margin-top: 10px;">商品金额：<span id="sum1">0.00</span>元 + 运费：0.00元 - 优惠券：0.00元 - 礼品卡：0.00元 - 返现：0.00元</p>
                <p style="width: 95%;height: 30px;text-align: right;font-size: 16px;"><b>应付总额：<span style="color: red;">￥<span id="sum2">0.00</span></span>元</b></p>
            </div>
        </div>
        <div style="padding-left: 820px;padding-top: 10px;position: relative;top: 30px;">
            <img src="images/submit.jpg" id="order">
        </div>
    </div>
    <div style="width: 1050px;position: relative;top: 30px;">
        <img src="images/step.jpg">
    </div>
</body>
<!--jq文件-->
<script src="js/jquery-3.1.1.min.js"></script>
<script>
	$(document).ready(function () {
		var sum = 0;
		$('tr[name=tr-item]').each(function(index,e){
			sum += parseFloat($(e).find("#price").text());
		});
		sum = sum.toFixed(2);
		$.ajax({
	        type : 'POST',
			url:"OrderServlet",
	        async: true,
	        data : {"sum":sum},
	        success:function(data){
	    		$("#sum1").text(sum);
	    		$("#sum2").text(sum);
	        },
			error : function() {
				alert("失败");
			}
		});
	})
	//提交图片的点击事件
	var order = $("#order");
	order.click(function(){
		//完成Ajax操作
		var sum = $("#sum1").text();
		//alert(sum);
		$.ajax({
			type: 'POST',
			url: "OrderInsertServlet?userid=${user.id}",
			async: false,
			data: {"sum":sum},
			success : function(data) {
		    	//alert(data);
		    	if(data=="notLogin"){
					window.location.href="login.jsp";
				    alert("请先登录");
			    }else if(data=="success"){
			    	window.location.href="OrderListServlet?userid=${user.id}";
			    }else{
			    	alert("提交订单失败");
			    }
			},
			error : function() {
				alert("失败");
			}
		});
		return false;
	});
</script>
</html>