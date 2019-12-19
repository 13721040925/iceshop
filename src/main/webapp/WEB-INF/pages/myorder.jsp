<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html >
<html>
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>我的订单</title>
<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">

		<!--标准mui.css-->
		<!--标准mui.css-->
		<link href="<%=request.getContextPath() %>/css/style1.css" rel="stylesheet" />
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/mui.min.css">
		<!--App自定义的css-->
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/app.css"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/icons-extra.css">
		<!--自定义iconfont-->
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/iconfont.css">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css">
		<link href="<%=request.getContextPath() %>/css/index.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
		<script src="<%=request.getContextPath() %>/js/mui.min.js"></script>
		<script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
		<script src="<%=request.getContextPath() %>/js/slider.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath() %>/js/ui.js"></script>
		<style>
			.mui-card .mui-control-content {
				padding: 10px;
			}
			.mui-control-content {
				height: 150px;
			}
		</style>
		
</head>
<body>
	<header class="mui-bar mui-bar-nav">
		<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" style="color: #FC605A;"></a>
		<h1 class="mui-title">我的订单</h1>
	</header>
	<br/>
	<c:forEach items="${list}" var="order" varStatus="count" begin="0" step="1">
		<div class="mui-content new-min-order">
			<ul>
				<li>
					<c:if test="${order.orderstatus==0}">
						<span class="time">${order.ordertime}</span>
						<span class="state">待结算</span>
					</c:if>
					<c:if test="${order.orderstatus==1}">
						<span class="time">${order.paytime}</span>
						<span class="state">待发货</span>
					</c:if>
					<c:if test="${order.orderstatus==2}">
						<span class="time">${order.finishtime}</span>
						<span class="state">订单完成</span>
					</c:if>
				</li>
				<li onclick="window.location='ice/todetails?id=${order.shopid}'">
					<img src="<%=request.getContextPath() %>/shoppic/${order.shop.pic}.png" />
					<div class="flex1">
						<h4>${order.shop.name}</h4>
						<h5 class="mui-text-right font-color-pink">￥<label>${order.shopprice}</label></h5>
						<p class="mui-text-right font-color-gray">x<label>${order.ordercount}</label></p>
					</div>
				</li>
				<li>
					<span>商品总额</span>
					<span class="font-color-gray">￥<label>${order.orderprice}</label></span>
				</li>
				<li>
					<button onclick="window.location='ice/toorderdetails?pay_id=${order.pay_id }'">订单详情</button>
					<c:if test="${order.orderstatus==0}">
						<button class="payment" onclick="window.location='https://www.magicpeng.com/zhifu/jsp/codepay.jsp?price=${order.orderprice }&type=${order.paytype }&pay_id=*${order.pay_id }*'">去结算</button>
					</c:if>
				</li>
			</ul>
		</div>
	</c:forEach>
	<br/><br/>
	<div class="nav-footer">
		<a href="ice/towelcome">
			<span class="mui-icon mui-icon-home"></span>
			<span class="mui-tab-label">首页</span>
		</a>
		<a class="icon-active" >
			<span class="mui-icon mui-icon-list"></span>
			<span class="mui-tab-label">我的订单</span>
		</a>
	</div>
</body>
</html>