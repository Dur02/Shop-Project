<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物车</title>
    <style>
        *{
            margin: auto;
            padding: 0;
            list-style: none;
            font-size: 13px;
        }
    </style>
</head>
<body>
<iframe src="header.jsp" width="100%" height="172px" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes" id="iframe"></iframe>
    <div style="width: 1000px;">
        <div style="text-align: left;margin-top: 10px;font-size: 15px;"><a href="#" style="text-decoration: none;color: black;">当前位置</a>
            >><a href="#"  style="text-decoration: none;color: black;">我的购物车</a>
        </div>
    </div>
    <table cellpadding="0" border="0" rules="rows" cellspacing="0" style="border-collapse: collapse;margin-top: 10px;width: 1000px;">
        <tr style="background-color: aqua;;height: 30px;border-bottom: 1px solid black;">
            <td style="width: 5%;text-align: center;font-size: 15px;color:black;"><input type="checkbox" id="allch">全选</td>
            <td colspan="2" style="width: 40%;text-align: center;font-size: 15px;color:black">商品名称</td>
            <td style="width: 10%;text-align: center;font-size: 15px;color:black">积分</td>
            <td style="width: 15%;text-align: center;font-size: 15px;color:black">疯狂价</td>
            <td style="width: 10%;text-align: center;font-size: 15px;color:black">小计</td>
            <td style="width: 10%;text-align: center;font-size: 15px;color:black">数量</td>
            <td style="width: 10%;text-align: center;font-size: 15px;color:black">操作</td>
        </tr>
        <c:forEach items="${articleList}" var="article" varStatus="loop">
        <tr name="tr-item" style="border-bottom: 1px solid black;">
            <td style="width: 5%;text-align: center;font-size: 15px;color:black;"><input type="checkbox" name="ch" id="ch"></td>
            <td style="width: 10%;padding: 10px;">
                <img style="width:80px;border:1px solid black" src="images/article/${article.image}">
                <input type="hidden" value="${article.id}" id="id"/></td>
            <td style="width: 25%;font-size: 15px;border-right:1px solid black">
                <a href="DetailServlet?id=${article.id}" style="text-decoration: none;overflow: hidden;text-overflow: ellipsis;display: -webkit-box;-webkit-line-clamp: 2;-webkit-box-orient: vertical;">${article.title}</a>
            </td>
            <td style="width: 10%;text-align: center;font-size: 15px;color:black;border-right:1px solid black">0</td>
            <td style="width: 15%;text-align: center;font-size: 15px;color:black;border-right:1px solid black">￥<fmt:formatNumber value="${article.price}" type="number" pattern="#.00"/>（${article.discount}折）</td>
            <td style="width: 15%;text-align: center;font-size: 15px;border-right:1px solid saddlebrown">￥<span id="price"><fmt:formatNumber value="${article.price*article.discount}" type="number" pattern="#.00"/></span></td>
            <td style="width: 10%;text-align: center;font-size: 15px;color:saddlebrown;border-right:1px solid saddlebrown">
                <input style="width: 40px;" type="number" value="${cartList[loop.count-1].buynum}" id="iNum" min="1" max="100" name="points" step="1" autocomplete="off" oninput="if(value<1)value=1" onkeyup="this.value = parseInt(this.value.replace(/[^\d]/g,''))|0"/>
            </td>
            <td style="width: 10%;text-align: center;font-size: 15px;color:saddlebrown">
                <p><a href="#"  style="text-decoration: none;">移入收藏</a></p>
                <p><a href="DeleteCartServlet?id=${cartList[loop.count-1].id}&userid=${user.id}" id="deletelink" style="text-decoration: none;">删除</a></p></td>
        </tr>
   		</c:forEach>
    </table>
    <div style="width: 1000px;text-align: right;font-size: 15px;margin-top: 30px;">
        <p style="margin-top: 5px;"><b>数量总计:<span style="color: red;" id="num">&nbsp;&nbsp;&nbsp;0</span>（件）</b></p>
        <p style="margin-top: 20px;"><b>金额总计：￥<span style="color: red;" id="sum">&nbsp;0.00</span>（折后价）</b></p>
        <p><a href="IndexServlet"><img style="margin-top: 20px;" src="images/shop.jpg"></a><img id="pay" style="margin-top: 20px;margin-left: 5px;" src="images/balance.jpg" id="pay"></p>
    </div>
    <img src="images/step.jpg" alt="" style="margin-top: 30px;margin-left: 235px;">
</body>
<!--jq文件-->
<script src="js/jquery-3.1.1.min.js"></script>
<script>
	var sum = 0;
	$('#allch').click(function(){
		if($('#allch').is(':checked')){
			// 当全选按钮选中
			$('input[name=ch]').prop("checked",true);
			count();
		}else{
			// 当全选按钮未选中
			$('input[name=ch]').prop("checked",false);
			count();
		}
	})
	$('input[name=ch]').change(function(e){
		count();
	})
	$('#iNum').change(function(){
		count();
	})
	function count(){
		let num = 0;
		let sum = 0.00;
		$('tr[name=tr-item]').each(function(index,e){
			if($(e).find('#ch').is(':checked')){
				let number = parseInt($(e).find("#iNum").val());
				num += number;
				sum += parseFloat($(e).find("#price").text() * number);
			}
		})
		sum = sum.toFixed(2);
		$("#num").text(num);
		$("#sum").text(sum);
	}
	function ObjData(id,number){
		this.id=id;
		this.number=number;
	}
	$('#pay').click(function(){
		if($("#num").text() == 0){
			alert("请选择你想购买的物品");
		}else{
			let postData = [];
			$('tr[name=tr-item]').each(function(index,e){
				if($(e).find('#ch').is(':checked')){
					let number = parseInt($(e).find("#iNum").val());
					let id = parseInt($(e).find("#id").val());
					//alert("number:" + number + "、id:" + id)
					let obj = new ObjData(id,number);
					postData.push(obj);
				}
			})
			$.ajax({
	            type : 'POST',
				url:"OrderServlet",
	            async: false,
	            data : {"product":JSON.stringify(postData)},
	            success:function(data){
	            	//alert(data);
	            	window.location.href="order.jsp";
	            },
				error : function() {
					alert("失败");
				}
			})
		}
	})
</script>
</html>