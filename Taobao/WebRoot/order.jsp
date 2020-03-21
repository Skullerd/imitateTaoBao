<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="./css/order.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="js/taobao_js.js"></script>
</head>

<body>
	<div class="wrapper">
        	<%@ include file="header.jsp" %>
    	</div>
    <div id="main">
        <div class="content">
            <h2 class="useInfo">收货信息</h2>
            <div class="form">
                <form action="order" method="post">
                    <p><label>姓名：</label><input type="text" name="oname" id="mUserName" class="txt" /></p>
                    <p><label>电话：</label><input type="text" name="otel" class="txt" /></p>
                    <p><label>地址：</label><input type="text" name="oaddress" class="ltxt" id="mTitle" /></p>
                    <p><input  type="submit" class="bt" value="确定提交" /></p>

                </form>
            </div>
            <h2 class="cartInfo">购物明细</h2>
            <div class="cart-form">
                <form action="">
                    <div class="cart-th">
                        <div class="cart-th-item img">商品图片</div>
                        <div class="cart-th-item name">商品名</div>
                        <div class="cart-th-item num">数量</div>
                        <div class="cart-th-item price">单价</div>
                        <div class="cart-th-item sum">小结</div>
                    </div>
                    <div class="cart-list">
                    <c:forEach items="${cartlist}" var="cart">
                        <div class="cart-item">
                            <div class="cart-img">
                                <a href="">
                                    <img src="uploads/${cart.ppic}" alt="">
                                </a>
                            </div>
                            <div class="cart-name">
                                <a href="">${cart.pname}</a>
                            </div>
                            <div class="cart-num">
                                <input name="nums" type="text" value="${cart.cnum}" class="stxt" />
                                <input name="cids" type="hidden" value="${cart.cid}" class="stxt" />
                            </div>
                            <div class="cart-price">¥${cart.pprice}</div>
                            <div class="cart-sum">¥${cart.pprice*cart.cnum}</div>
                        </div>
                    	</c:forEach>
                    </div>
                    <div class="cartinfo">
                        <p class="total">总金额：￥${total}</p>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>

</html>
