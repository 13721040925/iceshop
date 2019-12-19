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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>冰山商城</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/jingdong.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/public.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/style3.css">
<script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
<style>
	#title{
		text-align: center;
		font-family: "微软雅黑";
		font-size: 50px;
		color: #D6D6D6;
	}
</style>
</head>
<body>
<!-- 顶部logo -->
 <div id="login">
    <div class="login_img">
    	<h1 id="title">冰山商城</h1>
    </div>
 </div>
 <!-- 顶部logo结束 -->
 <!-- 顶部logo下导航 -->
 <div id="menu">
    <div class="menu_info">
     <ul>
         <li>|<span><a href="">首页</a></span></li>
         <li>|<span><a href="">我的订单</a></span></li>
     </ul>
    </div>
 </div>
 <!-- 顶部logo下导航结束 -->
 <!-- 顶部logo下搜索 -->
 <div id="jd_pic">
   <div class="serch">
    <img src="img/ice.png" alt="" />
    <div class="search_info">
      <ul class="big_daohang">
        <li><a href="">首页</a></li>
        <li><a href="">我的订单</a></li>
      </ul>
      <!--<span class="span1">|</span>
      <span class="span2">|</span>-->
    </div>
   </div> 
 </div>
  <!-- 顶部logo下搜索结束 -->
  <!-- 主导航开始 -->
 <div id="null_content">
    <div class="content">
    	<div class="content_left" style="height: 340px;"></div>
        <!-- 中间滚动图 -->
        <div class="content_midd">
           <div class="content_midd_top">
           		<c:forEach items="${lunbos}" var="lunbo" varStatus="count" begin="0" step="1">
           		
           		</c:forEach>
               <a href=""><img src="images/58f6e08dNc2656424.jpg" class="pic_info" alt=""  style="z-index:1;" /></a>
               <a href=""><img src="images/58f6c27cNb3bb8ba6.jpg" alt="" class="pic_info" /></a>
               <a href=""><img src="images/58f730b3N3e527236.jpg" alt="" class="pic_info" /></a>
               <a href=""><img src="images/58f72646N81d2b084.jpg" alt="" class="pic_info"/></a>
               <div class="prev"></div>
               <div class="next"></div>
               <div class="showin">
                  <div class="show_img" style="background: #DB192A;"></div>
                  <div class="show_img"></div> 
                  <div class="show_img"></div> 
                  <div class="show_img"></div> 
               </div>
           </div>
        </div>
        <!-- 中间滚动图结束 -->
    </div>
 </div>
 <!-- 主导航结束 -->

<!-- ///////////// -->
<div id="play">
<div id="more">
  <div class="more-content">
    <ul class="more-item">
      <li class="more-list">
         <div class="flo-shop">
            <a href="">
            	<img src="images/58cf96c8N2a5fb874.jpg!q90.jpg" alt="" class="img-shop" />
            	<p class="shop-info">正港(ZGO)儿童和手表男孩夜光防水电子表学生表男童腕表 311深蓝色</p>
            	<p class="shop-info-price">
            		<i>￥</i>
            		<span class="shop-info-price-text">67.0</span>
            	</p>
            	<p class="shop-info-count">
            		<i>库存：</i>
            		<span class="shop-info-count-text">67</span>
            	</p>
            </a>
         </div>
      </li>
    </ul>
    <div class="clear"></div>
  </div>
</div>


<!-- 右侧固定悬浮 -->
<div class="suspension" style="position: fixed; bottom:10px;right: 10px; ">
	<div class="suspension-box">
		<a href="#" class="a a-service "><i class="i"></i></a>
		<a href="javascript:;" class="a a-service-phone "><i class="i"></i></a>
		<a href="javascript:;" class="a a-qrcode"><i class="i"></i></a>
		<!--<a href="#" class="a a-cart"><i class="i"></i></a>-->
		<!--<a href="javascript:;" class="a a-top"><i class="i"></i></a>-->
		<div class="d d-service">
			<i class="arrow"></i>
			<div class="inner-box">
				<div class="d-service-item clearfix"> 
					<a href="#" id="qqcheat" class="clearfix"><span class="circle"><i class="i-qq"></i></span><h3>咨询在线客服</h3></a>
				</div>
			</div>
		</div>
		<div class="d d-service-phone">
			<i class="arrow"></i>
			<div class="inner-box">
				<div class="d-service-item clearfix">
					<span class="circle"><i class="i-tel"></i></span>
					<div class="text">
						<p>服务热线</p>
						<p class="red number">13721040925</p>
					</div>
				</div>
			</div>
		</div>
		<div class="d d-qrcode">
			<i class="arrow"></i>
			<div class="inner-box">
				<!--公众号二维码-->
				<div class="qrcode-img"><img src="<%=request.getContextPath() %>/images/side_ewm.jpg" alt=""></div>
				<p>微信服务号</p>
			</div>
		</div>

	</div>
</div>
<!-- 右侧固定悬浮结束-->
<!-- 右侧固定边框 -->
<div id="right_border"></div>
<!-- 右侧固定边框结束 -->
<script type="text/javascript" src="<%=request.getContextPath() %>/js/getClass.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jd.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/move2.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/move.js"></script>
<script type="text/javascript">
$(document).ready(function(){

	/* ----- 侧边悬浮 ---- */
	$(document).on("mouseenter", ".suspension .a", function(){
		var _this = $(this);
		var s = $(".suspension");
		var isService = _this.hasClass("a-service");
		var isServicePhone = _this.hasClass("a-service-phone");
		var isQrcode = _this.hasClass("a-qrcode");
		if(isService){ s.find(".d-service").show().siblings(".d").hide();}
		if(isServicePhone){ s.find(".d-service-phone").show().siblings(".d").hide();}
		if(isQrcode){ s.find(".d-qrcode").show().siblings(".d").hide();}
	});
	$(document).on("mouseleave", ".suspension, .suspension .a-top", function(){
		$(".suspension").find(".d").hide();
	});
	$(document).on("mouseenter", ".suspension .a-top", function(){
		$(".suspension").find(".d").hide(); 
	});
	$(document).on("click", ".suspension .a-top", function(){
		$("html,body").animate({scrollTop: 0});
	});
	$(window).scroll(function(){
		var st = $(document).scrollTop();
		var $top = $(".suspension .a-top");
		if(st > 400){
			$top.css({display: 'block'});
		}else{
			if ($top.is(":visible")) {
				$top.hide();
			}
		}
	});
	
});	
</script>
</body>
</html>