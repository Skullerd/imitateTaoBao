<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>淘宝网热卖</title>
		<link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" type="text/css" href="css/reset.css"/>
		<link rel="stylesheet" type="text/css" href="css/Product.css"/>
		
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="js/taobao_js.js"></script>
	</head>
	<body style="overflow-y:hidden; background: #fff;">
		 <div class="wrapper">
        	<%@ include file="header.jsp" %>
    	</div>
		
		<div class="nav" >
			
			<div class="container cleanfix">
				<div class="logo left">
				<a href="index">
					<img src="./img/TB1YZkPLpXXXXbzXXXXXXXXXXXX-213-57.png" >
					</a>
				</div>
				<div class="search ">
					<form action="">
						<div class="search-box">							

								<input type="text" placeholder="请输入要搜索的词">														<button type="button">
								搜索</button>
						</div>
					</form>
					<ul>
						<li><a href="">电脑</a></li>
						<li><a href="">游戏本</a></li>
						<li><a href="">连衣裙</a></li>
						<li>沙发</li>
						<li>窗帘</li>
						<li>零食</li>
						<li>床垫</li>
						<li>茶几</li>
						<li>耳机</li>
						<li>风扇</li>
						<li>电脑椅</li>
						<li>椅子</li>
					</ul>
				</div>
			</div>
		</div>
	
		<div class="section">
		
			
			<div class="container">
				<div class="section-txt">
					<span class="title">你是不是想找：</span>
					<a href="">笔记本电脑游戏本</a>
					<span>|</span>
					<a href="">游戏笔记本</a>
					<span>|</span>
					<a href="">游戏本电脑</a>
					<span>|</span>
					<a href="">游戏本i7</a>
					<span>|</span>
					<a href="">机械师游戏本</a>
					<span>|</span>
					<a href="">学生游戏本</a>
					<span>|</span>
					<a href="">轻薄游戏本</a>
					<span>|</span>
					<a href="">游戏本1060</a>
					<span>|</span>
					<a href="">游戏本吃鸡</a>
					<span>|</span>
					
				</div>
			</div>
		</div>
	
		<div class="price">
			<div class="container cleanfix">
				<div class="price-area left">
					
					<span>价格：</span>
					<input type="text" placeholder="$" />
					<span>-</span>
					<input type="text" placeholder="$" />
				</div>
				
				<div class="select left">
					<div class="target">
						<span class="place">发货</span>
						<span class="iconfont">
							<img src="./img/jiantou%20%20you.png" >
						</span>
						<ul class="dizhi">
							<li>
								<a href="">不限</a>
								
							</li>
							<li>
								<a href="">北京</a>
								<a href="">上海</a>
								<a href="">广州</a>
								<a href="">深圳</a>
								<a href="">杭州</a>
								<a href="">海外</a>
								
							</li>
							<li>
								<a href="">长沙</a>
								<a href="">长春</a>
								<a href="">成都</a>
								<a href="">重庆</a>
								<a href="">大连</a>
								<a href="">东莞</a>
								<a href="">佛山</a>
								<a href="">福州</a>
								<a href="">贵阳</a>
								<a href="">合肥</a>
							</li>
							<li class="last">
								<a href="">安徽</a>
								<a href="">福建</a>
								<a href="">甘肃</a>
								<a href="">广东</a>
								<a href="">广西</a>
								<a href="">贵州</a>
								<a href="">海南</a>
								<a href="">河北</a>
								<a href="">河南</a>
								<a href="">湖北</a>
								<a href="">湖南</a>
								<a href="">江苏</a>
								<a href="">江西</a>
								<a href="">吉林</a>
								<a href="">辽宁</a>
							</li>
						</ul>
					</div>
				</div>
				
				<div class="selected right">
					<a href=""><label><input type="checkbox"/>包邮</a></label>
					<a href=""><label><input type="checkbox"/>正品保障</a></label></a>
					<a href=""><label><input type="checkbox"/>7天退换</a></label></a>
					<a href=""><label><input type="checkbox"/>消费者保障</a></label></a>
				</div>
			</div>
			
		</div>
		
		<div class="main">
			<div class="container cleanfix">
			
			<c:forEach items="${productlist}" var="product">
				<div class="item">
				<a href="product?pid=${product.pid}" style="display: block; width: 100%; height: 100%;">
					<div class="img-container">
						<span>
							<img src="uploads/${product.ppic}" alt="">
						</span>
					</div>
					<div class="info cleanfix">
						<p class="title ">
							<span class=" price">￥${product.pprice}</span>
							<span class=" byou">包邮</span>
						</p>
						<span class="item-span">${product.pname}</span>
						<p class="shopName cleanfix">
							<span class="left">${product.pcontent}</span>
							<span class="right">29人付款</span>
						</p>
						<div class="moreInfo">
							<span class="icon">
								<span class="icon-tmall"></span>
							</span>
							<div class="dsr-info">
								<span class="dsr-info-tgr">
									<span>如实描述：</span>
									<span>4.9</span>
									<span></span>
								</span>
							</div>
						</div>
					</div>
					</a>
				</div>
				</c:forEach> 
			</div>
		</div>
		
		<div class="page" style="text-align: center;">
			${pagenav}
		</div>
		
		
		<div class="footer">
		    <div class="footer-hd">
		        <p>
		            <a href="#">阿里巴巴集团</a>
		            <span>|</span>                       
		            <a href="#">阿里巴巴国际站</a>
		            <span>|</span> 
		            <a href="#">阿里巴巴中国站</a>
		            <span>|</span> 
		            <a href="#">全球速卖通</a>
		            <span>|</span> 
		            <a href="#">淘宝网</a>
		            <span>|</span> 
		            <a href="#">天猫</a>
		            <span>|</span> 
		            <a href="#">聚划算</a>
		            <span>|</span> 
		            <a href="#">一淘</a>
		            <span>|</span> 
		            <a href="#">阿里妈妈</a>
		            <span>|</span> 
		            <a href="#">飞猪</a>
		            <span>|</span> 
		            <a href="#">虾米</a>
		            <span>|</span> 
		            <a href="#">阿里云计算</a>
		            <span>|</span> 
		            <a href="#">云OS</a>
		            <span>|</span> 
		            <a href="#">万网</a>
		            <span>|</span> 
		            <a href="#">支付宝</a>
		            <span>|</span> 
		            <a href="#">来往</a>
		        </p>
		    </div>
		    <div class="footer-content">
		        <a href="#">关于淘宝</a>
		        <a href="#">合作伙伴</a>
		        <a href="#">营销中心</a>
		        <a href="#">廉正举报</a>
		        <a href="#">练习客服</a>
		        <a href="#">开放平台</a>
		        <a href="#">诚征英才</a>
		        <a href="#">联系我们</a>
		        <a href="#">网站地图</a>
		        <a href="#">法律声明</a>
		        <a href="#">隐私权政策</a>
		        <span>© 2019 Taobao.com 版权所有</span>
		    </div>
		    <div class="footer-last">
		        <span>网络文化经营许可证：浙网文[2016]0132-032号</span>
		        <span>|</span>
		        <span>增值电信业务经营许可证：浙B2-20080224-1</span>
		        <span>|</span>
		        <span>信息网络传播视听节目许可证：1109364号</span>
		    </div>
		    <div class="footer-gif">
		        <img src="img/wj.gif" alt="">
		    </div>
		</div>
		
	</body>
</html>
