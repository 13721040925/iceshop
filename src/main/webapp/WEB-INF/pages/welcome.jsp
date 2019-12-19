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
<title>冰山商城</title>
		<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">

		<!--标准mui.css-->
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/mui.min.css">
		<!--App自定义的css-->
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/app.css"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/icons-extra.css">
		<!--自定义iconfont-->
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/iconfont.css">
		<style type="text/css">
			#title{
				margin: 0 auto;
				font-weight: normal;
				font-family: "微软雅黑";
			}
			#zhezhao{max-width: 100%; height: auto;}
		</style>
	</head>

	<body style="background: #fff;">
		<header class="mui-bar mui-bar-nav seach-header">
			<!-- <div class="top-sch-box flex-col">
				<a href="examples/search.html">
		            <div class="centerflex">
		                <i class="fdj  icon  iconfont icon-sousuo1"></i>
		                <div class="sch-txt">连衣裙就是你的女人味儿</div>
		                <span class="shaomiao"><i class="iconfont icon-saoma"></i></span>
		            </div>
		        </a>
	        </div>
	        <a class="btn" href="examples/new-newsCenter.html">
	            <span class="icon iconfont icon-xiaoxi"></span>
	        </a>
	        <a class="btn" href="examples/new-shopping-card.html">
	            <span class="icon iconfont icon-gouwuche1"></span>
	        </a> -->
	        <h4 id="title">冰山商城</h4>
		</header>
		<div class="nav-bottom">
			<!--图片轮播-->
			<div id="slider" class="mui-slider" >
				<div class="mui-slider-group mui-slider-loop">
					<!-- 额外增加的一个节点(循环轮播：第一个节点是最后一张轮播) -->
					<div class="mui-slider-item mui-slider-item-duplicate"><a href="#"><img src="<%=request.getContextPath() %>/lunbopic/banner1.jpg"></a></div>
					<c:forEach items="${lunbos}" var="lunbo" varStatus="count" begin="0" step="1">
						<div class="mui-slider-item"><a href="#"><img src="<%=request.getContextPath() %>/lunbopic/${lunbo.pic }.jpg"></a></div>
					</c:forEach>
					<div class="mui-slider-item mui-slider-item-duplicate"><a href="#"><img src="<%=request.getContextPath() %>/lunbopic/banner1.jpg"></a></div>
				</div>
				<div class="mui-slider-indicator">
					<div class="mui-indicator mui-active"></div>
					<c:forEach items="${lunbos}" var="lunbo" varStatus="count" begin="1" step="1">
						<div class="mui-indicator"></div>
					</c:forEach>
				</div>
			</div>
			<!--商品分类-->
			<!-- <div class="mui-content new-pattern-con">
		        <ul class="mui-table-view mui-grid-view mui-grid-12 pattern-con-icon">
		            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><a href="examples/new-commodity.html">
		                    <span class="mui-icon iconfont icon-remenshangpin"></span>
		                    <div class="mui-media-body">热门商品</div></a></li>
		            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><a href="examples/new-commodity.html">
		                    <span class="mui-icon-extra mui-icon-extra-new"></span>
		                    <div class="mui-media-body">新款推荐</div></a></li>
		            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><a href="examples/new-commodity.html">
		                    <span class="icon iconfont icon-yushou-huang"></span>
		                    <div class="mui-media-body">预售款</div></a></li>
		            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><a href="examples/new-commodity.html">
		                    <span class="icon iconfont icon-fendi_shuangjianbao"></span>
		                    <div class="mui-media-body">双肩包</div></a></li>
		            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><a href="examples/new-commodity.html">
		                    <span class="icon iconfont icon-dabaozhuang"></span>
		                    <div class="mui-media-body">大包&小包</div></a></li>
		            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><a href="examples/new-commodity.html">
		                    <span class="icon iconfont icon-qianbao"></span>
		                    <div class="mui-media-body">钱包&手拿包</div></a></li>
		            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><a href="examples/new-commodity.html">
		                    <span class="icon iconfont icon-prada_danjianbao"></span>
		                    <div class="mui-media-body">单肩包&斜跨</div></a></li>
		            <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><a href="examples/new-commodity.html">
		                    <span class="icon iconfont icon-gucci_shoutibao"></span>
		                    <div class="mui-media-body">手提包</div></a></li>
		        </ul> 
			</div> -->
			<!--新款发售-->
			<div class="new-pattern">
				<img class="w100" class="home-imgtit" src="<%=request.getContextPath() %>/images/hometit1.jpg" alt="" />
				<ul class="pattern-list">
					<c:forEach items="${list}" var="shop" varStatus="count" begin="0" step="1">
						<c:if test="${shop.id%2!=0}">
							<li class="mui-card-footer">
								<div class="mui-card">
									<a href="ice/todetails?id=${shop.id}">
										<div class="mui-card-header mui-card-media" style="height:40vw;"><img class="w100" src="<%=request.getContextPath() %>/shoppic/${shop.pic}.png" /></div>
										<div class="mui-card-content">
											<div class="mui-card-content-inner">
												<p style="color: #333;">${shop.name}</p>
											</div>
										</div>
										<div class="pattern-list__p">
											<p class="font-color-pink">￥<label>${shop.price}</label></p>
											<p>库存<label>${shop.count}</label></p>
										</div>
									</a>
								</div>
						</c:if>
						<c:if test="${shop.id%2==0}">
								<div class="mui-card">
									<a href="ice/todetails?id=${shop.id}">
										<div class="mui-card-header mui-card-media" style="height:40vw;"><img class="w100" src="<%=request.getContextPath() %>/shoppic/${shop.pic}.png" /></div>
										<div class="mui-card-content">
											<div class="mui-card-content-inner">
												
												<p style="color: #333;">${shop.name}</p>
											</div>
										</div>
										<div class="pattern-list__p">
											<p class="font-color-pink">￥<label>${shop.price}</label></p>
											<p>库存:<label>${shop.count}</label></p>
										</div>
									</a>
								</div>
							</li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
		
		<div class="nav-footer">
			<a class="icon-active">
				<span class="mui-icon mui-icon-home"></span>
				<span class="mui-tab-label">首页</span>
			</a>
			<a href="ice/tochecktel">
				<span class="mui-icon mui-icon-list"></span>
				<span class="mui-tab-label">我的订单</span>
			</a>
		</div>
			<!-- <a href="examples/new-shopping-card.html">
				<span class="mui-icon mui-icon-extra mui-icon-extra-cart"></span>
				<span class="mui-tab-label">购物车</span>
			</a>
			<a href="examples/new-mine.html">
				<span class="mui-icon mui-icon-contact"></span>
				<span class="mui-tab-label">个人中心</span>
			</a> -->
		
		
		<script src="<%=request.getContextPath() %>/js/mui.min.js"></script>
		<script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
		<script type="text/javascript" charset="utf-8">
			  mui.init({
                swipeBack:true 
            });
            var slider = mui("#slider");
                    slider.slider({
                        interval: 2000//自动轮播周期，若为0则不自动播放，默认为0；
                    });
		</script>
		
		<script type="text/javascript">
		function is_weixin() {
		    var ua = navigator.userAgent.toLowerCase();
		    if (ua.match(/MicroMessenger/i) == "micromessenger") {
		        return true;
		    } else {
		        return false;
		    }
		}
		var isWeixin = is_weixin();
		var winHeight = typeof window.innerHeight != 'undefined' ? window.innerHeight : document.documentElement.clientHeight;
		var weixinTip = $('<div id="weixinTip"><p><img id="zhezhao" src="<%=request.getContextPath() %>/images/live_weixin.png"  alt="请用浏览器打开"/></p></div>');
		
		if(isWeixin){
			$("body").append(weixinTip);
		}
		$("#weixinTip").css({
			"position":"fixed",
			"left":"0",
			"top":"0",
			"height":winHeight,
			"width":"100%",
			"z-index":"1000",
			"background-color":"rgba(0,0,0,0.8)",
			"filter":"alpha(opacity=80)",
		});
		$("#weixinTip p").css({
			"text-align":"center",
			"margin-top":"10%",
			"padding-left":"5%",
			"padding-right":"5%"
		});
	</script>
	</body>

</html>