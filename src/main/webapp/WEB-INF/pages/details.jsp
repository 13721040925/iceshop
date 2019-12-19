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
<title>商品详情</title>
		<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">

		<!--标准mui.css-->
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/mui.min.css">
		<!--App自定义的css-->
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/app.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/icons-extra.css">
		<!--自定义iconfont-->
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/iconfont.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/pro2.css">
		<script src="<%=request.getContextPath() %>/js/mui.min.js"></script>
		<script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
		<script type="text/javascript">
			$(function(){
				$("#tel").click(function(){
					var id="${shop.id}";
					window.location="ice/totel?id="+id;
				});
			});
		</script>
	</head>

	<body style="background: #fff;">
		<header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" style="color: #FC605A;"></a>
			<h1 class="mui-title">商品详情</h1>
		</header>
		<br/><br/>
		<div class="new-personal-details">
			<!--图片轮播-->
			<div id="slider" class="mui-slider">
				<div class="mui-slider-group mui-slider-loop">
					<!-- 额外增加的一个节点(循环轮播：第一个节点是最后一张轮播) -->
					<div class="mui-slider-item mui-slider-item-duplicate">
						<a href="#"><img src="<%=request.getContextPath() %>/shoppic/${shop.pic }.png"></a>
					</div>
					<%-- <div class="mui-slider-item">
						<a href="#"><img src="<%=request.getContextPath() %>/images/list-ph01.png"></a>
					</div>
					<div class="mui-slider-item">
						<a href="#"><img src="<%=request.getContextPath() %>/images/list-ph01.png"></a>
					</div>
					<div class="mui-slider-item">
						<a href="#"><img src="<%=request.getContextPath() %>/images/list-ph01.png"></a>
					</div>
					<div class="mui-slider-item">
						<a href="#"><img src="<%=request.getContextPath() %>/images/list-ph01.png"></a>
					</div>
					<div class="mui-slider-item mui-slider-item-duplicate">
						<a href="#"><img src="<%=request.getContextPath() %>/images/list-ph01.png"></a>
					</div> --%>
				</div>
				<!-- <div class="mui-slider-indicator">
					<div class="mui-indicator mui-active"></div>
					<div class="mui-indicator"></div>
					<div class="mui-indicator"></div>
					<div class="mui-indicator"></div>
				</div> -->
			</div>

			<ul class="deails-con">
				<li class="deails-con-title">${shop.name}</li>
				<li class="deails-con-price">
					<span>￥${shop.price}</span>
					<span>销量:<label>${shop.salecount}</label><br/>库存:<label>${shop.count}</label></span>
				</li>
				<li class="deails-con-text">商品详情</li>
				<li class="deails-con-text__li">
					${shop.details}

				</li>
			</ul>

			<!-- 弹出 -->
			<%-- <div class="flick-menu-mask" style=""></div>
			<div class="spec-menu">
				<div class="spec-menu-content spec-menu-show" style="display: block;">
					<div class="spec-menu-top bdr-b">
						<div class="spec-first-pic"> <img id="spec_image" src="" /> </div>
						<a class="rt-close-btn-wrap spec-menu-close">
							<p class="flick-menu-close tclck"> <img src="<%=request.getContextPath() %>/images/close.png" width="24" height="24" /> </p>
						</a>
						<div class="spec-price" id="specJdPri" style="display: block"> <span class="yang-pic spec-yang-pic"> <img src="<%=request.getContextPath() %>/images/rmb.png" /> </span> <span id="spec_price"> 36.80 </span> </div>
						<div id="specWeightDiv" class="spec-weight"> <span>重量:</span> <span id="spec_weight">3.26kg</span> </div>
					</div>

					<div class="nature-container" id="natureCotainer">
						<div class="pro-color"> <span class="part-note-msg"> 颜色 </span>
							<p id="color">
								<a title="白色 直袖款" class="a-item selected J_ping" report-eventparam="白色 直袖款">白色 直袖款</a>
								<a title="蓝色 直袖款" class="a-item J_ping" report-eventparam="蓝色 直袖款">蓝色 直袖款</a>
								<a title="黑色 直袖款" class="a-item J_ping" report-eventparam="黑色 直袖款">黑色 直袖款</a>
								<a title="灰色 直袖款" class="a-item J_ping" report-eventparam="灰色 直袖款">灰色 直袖款</a>
								<a title="粉色 直袖款" class="a-item J_ping" report-eventparam="粉色 直袖款">粉色 直袖款</a>
								<a title="紫色 直袖款" class="a-item J_ping" report-eventparam="紫色 直袖款">紫色 直袖款</a>
							</p>
						</div>
					</div>
					<button class="true-button tclck">确定</button>
				</div>
			</div> --%>

		</div>
		<ul class="details-price__button">
			<li class="add-cart clickwn">
				<!-- <span class="icon iconfont icon-gouwuche"></span>
				<p>加入购物车</p> -->
			</li>
			<li class="buy"><a id="tel">立即购买</a></li>
		</ul>
		<!-- <div class="icon-gouCenter"><a href="new-shopping-card.html"><span class="icon iconfont icon-gou"></span></a></div> -->
		
		<script type="text/javascript" charset="utf-8">
			mui.init({
				swipeBack: true
			});
			var slider = mui("#slider");
			slider.slider({
				interval: 2000 //自动轮播周期，若为0则不自动播放，默认为0；
			});
		</script>
		<script type="text/javascript">
			$(function() {
				$(".clickwn").click(function() {
					$(".flick-menu-mask").show();
					$(".spec-menu").show();
				})
				$(".tclck").click(function() {
					$(".flick-menu-mask").hide();
					$(".spec-menu").hide();
				})
				$('#cool').bind('input propertychange', function() { /* alert(this.value);*/
					$('.amount').html(this.value)
				}).bind('input input', function() {});
				$('#color a').click(function() {
					var cook = $(this).index();
					$('#color a').eq(cook).addClass('selected').siblings().removeClass('selected');
				})

			})
		</script>
	</body>

</html>