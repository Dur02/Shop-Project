<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>首页</title>
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
    .product_img{
      border: gainsboro solid 1px;
      width: 120px;
      height: 120px;
    }
    .cli {
      width: 23.5%;
      height: 195px;
      overflow: hidden;
      float:left;
      margin: 3px;
      margin-bottom: 15px;
      border:2px solid white;
    }
    .cli:hover {
      border: 2px solid aqua;
      width: 24%;
      height: 195px;
    }
  </style>
</head>
<body id="body">
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
  <div style="width: 80%;height:700px;position: absolute;left: 20%;">
    <table>
      <tr>
        <td style="font-size: 14px;">物品类型：</td>
        <td>
          <select name="typecode" id="typecode" style="width: 100px;height: 25px;font-size: 14px;">
            <c:forEach items="${typeList}" var="type">
              <c:if test="${(type.code).length() == 4}">
                <option value="${(type.code)}">${(type.name)}</option></c:if>
              <c:if test="${(type.code).length() == 8}">
                <option value="${(type.code)}">${(type.name)}</option></c:if>
            </c:forEach>
          </select>
        </td>
        <td>
          <input type="text" name="keyword" id="keyword" style="width: 300px;height: 21px;">
        </td>
        <td>
          <button id="sub" style="display: inline-block;width: 100px;font-size: 14px;border:none;height: 30px;line-height: 30px;background-color: #FFFFFF;margin-left: 5px;cursor: pointer;text-align: center;text-decoration: none;">搜索</button>
        </td>
      </tr>
    </table>
    <div  id="content" style="width: 100%;height: 540px;border-radius: 5px;border: 1px #CCCCCC solid;padding: 1px;padding-top: 5px;">
      <div style="width: 99%;height: 30px;background-color: #F5A65B;border-radius: 5px;border: 1px #F5A65B solid;border-bottom-left-radius: 0;border-bottom-right-radius: 0;border-bottom: 0;position: relative;">
        <div style="background-color: white;height: 25px;width: 80px;font-size: 15px;text-align: center;border-radius: 3px;border-bottom-left-radius: 0;border-bottom-right-radius: 0;position: absolute;bottom: 0;left: 4px;">
          <c:choose>
          <c:when test="${not empty typename}">
          <span style="color: #F5A65B;font-weight: bold;">${typename}</span>
        </div>
        </c:when>
        <c:otherwise>
        <span style="color: #F5A65B;font-weight: bold;">首页</span></div>
        </c:otherwise>
        </c:choose>
      </div>
    <div id="detail" style="width: 99%;height: 504px;border: 1px #CCCCCC solid;border-top: 0;border-radius: 5px;border-top-left-radius: 0;border-top-right-radius: 0;">
      <div style="height:450px;" id="content2">
        <ul style="display:block;"><c:forEach items="${detailList}" var="detail">
          <li class="cli">
            <a href="DetailServlet?id=${detail.id}" style="text-decoration: none;">
              <table style="text-align: center;">
                <tr>
                  <td style="padding-top: 10px;"><img class="product_img" src="images/article/${detail.image}"></td>
                </tr>
                <tr>
                  <td><span style="color: black;font-size: 12px;">￥:<del><fmt:formatNumber value="${detail.price}" type="number" pattern="#.00"/></del></span>
                    <span style="color: red;font-size: 15px;"><b>&nbsp;&nbsp;￥:<fmt:formatNumber value="${detail.price*detail.discount}" type="number" pattern="#.00"/></b></span></td>
                </tr>
                <tr>
                  <td><span style="font-size: 13px;text-decoration:underline;color:black">${detail.title}</span></td>
                </tr>
              </table>
            </a>
          </li>
        </c:forEach></ul>
      </div>
      <div>
        <table>
          <tr>
            <td style="font-size: 13px;">第${pageIndex}页，共${totalSize}页</td>
            <td style="padding-left: 8px;">
              <c:if test="${pageIndex == 1}"><button disabled="disabled">首页</button></c:if>
              <c:if test="${pageIndex != 1}"><a href="IndexServlet?typecode=${(typecode)}&typename=${typename}&pageIndex=1"><button>首页</button></a></c:if>
            </td>
            <td style="padding-left: 8px;">
              <c:if test="${pageIndex == 1}"><button disabled="disabled">上一页</button></c:if>
              <c:if test="${pageIndex > 1}"><a href="IndexServlet?typecode=${(typecode)}&typename=${typename}&pageIndex=${pageIndex-1}"><button>上一页</button></a></c:if>
            </td>
            <td style="padding-left: 8px;">
              <c:if test="${pageIndex == totalSize}"><button disabled="disabled">下一页</button></c:if>
              <c:if test="${pageIndex < totalSize}"><a href="IndexServlet?typecode=${(typecode)}&typename=${typename}&pageIndex=${pageIndex+1}"><button>下一页</button></a></c:if>
            </td>
            <td style="padding-left: 8px;">
              <c:if test="${pageIndex == totalSize}"><button disabled="disabled">尾页</button></c:if>
              <c:if test="${pageIndex != totalSize}"><a href="IndexServlet?typecode=${(typecode)}&typename=${typename}&pageIndex=${totalSize}"><button>尾页</button></a></c:if>
            </td>
            <td style="padding-left: 8px;"><input type="text" style="width: 30px;height: 18px;" id="pageNum"></td>
            <td><input type="button" value="跳转" onclick="jump();"></td>
          </tr>
        </table>
      </div>
    </div>
  </div>
</div>
</div>
<img src="images/step.jpg" alt="" style="position:absolute;top:784px;margin-left: 235px;">
</body>
<!--jq文件-->
<script src="js/jquery-3.1.1.min.js"></script>
<script>
  function jump(){
    var pageNum = document.getElementById("pageNum").value;
    if(/^\d+$/.test(pageNum) && parseInt(pageNum) >= 1 && parseInt(pageNum) <= "${totalSize}"){
      window.location.href="IndexServlet?typecode=${(typecode)}&typename=${typename}&pageIndex="+pageNum;
    }else{
      document.getElementById("pageNum").href="#";
      alert("请输入正确页码");
    }
  }
  //提交按钮的点击事件
  var sub = $("#sub");
  sub.click(function(){
    var obj = document.getElementById('typecode');
    var index = obj.selectedIndex;
    var typecode = obj.options[index].value;
    var typename = obj.options[index].text;
    var keyword = $("#keyword").val();
    //完成Ajax操作
    $.ajax({
      type: 'POST',
      url: "IndexServlet",
      async: true,
      data: {typecode:typecode,keyword:keyword,typename:typename},
      success : function(data) {
        //alert("成功");
        //alert(data);
        $("#body").html(data);
      },
      error : function() {
        alert("查询失败");
      }
    });
  });
</script>
</html>
