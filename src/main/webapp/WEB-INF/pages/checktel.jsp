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
		<style type="text/css">
			#title{
				margin: 0 auto;
				font-weight: normal;
				font-family: "微软雅黑";
			}
			.jssorl-009-spin img {
	animation-name:jssorl-009-spin;
	animation-duration:1.6s;
	animation-iteration-count:infinite;
	animation-timing-function:linear
}
@keyframes jssorl-009-spin {
	from {
	transform:rotate(0);
}
to {
	transform:rotate(360deg);
}
}.jssorb051 .i {
	position:absolute;
	cursor:pointer
}
.jssorb051 .i .b {
	fill:#fff;
	fill-opacity:.5
}
.jssorb051 .i:hover .b {
	fill-opacity:.7
}
.jssorb051 .iav .b {
	fill-opacity:1
}
.jssorb051 .i.idn {
	opacity:.3
}
.jssora051 {
	display:block;
	position:absolute;
	cursor:pointer
}
.jssora051 .a {
	fill:none;
	stroke:#fff;
	stroke-width:360;
	stroke-miterlimit:10
}
.jssora051:hover {
	opacity:.8
}
.jssora051.jssora051dn {
	opacity:.5
}
.jssora051.jssora051ds {
	opacity:.3;
	pointer-events:none
}
#box{
	border: 1px solid rgba(0,0,0,0.2);
	border-radius: 5px;
	width: 80%;
	margin-top: 200px;
	margin-left: auto;
	margin-right: auto; 
}
#qqcheat:hover{
	text-decoration: none;
	color: red;
}
#qqkf{
	height: 50px;
}
#qqsp{
	display:inline-block;
	margin-left:10px;
	position: relative;
	top:15px;
}
#sub{
	display: block;
	margin: 20px auto;
	letter-spacing:5px;
	width: 150px;
	height:40px;
	font-size:15px;
	font-family: "微软雅黑";
	background-color: #F56B6B;
}
#shopdetail{
	margin: 0 auto;
	padding-top: 0;
	padding-bottom: 0;
}
#shopdetail ul{
	margin: 0 auto;
}
.flex1{
	margin-right: 10px;
	margin-left: 15px;
}

		</style>
		<script type="text/javascript">
			$(function(){
				$("#qqcheat").click(function(){
					if(/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
					    var u = navigator.userAgent;

			            var isiOS = !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/);
			            if(isiOS){
			                if(u.toLowerCase().match(/MicroMessenger/i) == "micromessenger"){
			                	window.open('mqq://im/chat?chat_type=wpa&uin=328407307@&version=1&src_type=web');
			                }else{
			                	window.open('mqq://im/chat?chat_type=wpa&uin=328407307@&version=1&src_type=web');
			                }
			            }else{
			                if(u.toLowerCase().match(/MicroMessenger/i) == "micromessenger"){
			                	window.open('mqqwpa://im/chat?chat_type=wpa&uin=328407307&version=1&src_type=web&web_src=oicqzone.com');
			                }else{
			                    window.open('mqqwpa://im/chat?chat_type=wpa&uin=328407307&version=1&src_type=web&web_src=oicqzone.com');
							} 
			            }
					} else{
						window.location="tencent://message/?uin=328407307&amp;Site=www.xxx.com&amp;Menu=yes/";
					}
					
				});
			    $("#sub").click(function(){
			    	var flag=checkPhone();
			    	if(flag>0){
			    		var userphone=$("#phone").val();
			    		window.location="ice/selectorder?userphone="+userphone;
			    	}
				});
			});
			function checkPhone(){
				var phone=$("#phone");
				var v=phone.val();
				if(v==""||v==null||v.length<=0){
					mizhu.alert('冰山商城', '手机号不能为空！');
					return false;
				}
				var reg=/^1[3456789]\d{9}$/;
				if(!reg.test(v)){
					mizhu.alert('冰山商城', '手机号格式错误！');
					return false;
				}
				var flag=true;
				$.ajax({
					url:"ice/checkphone",
					async : false, 
					type: "post",  
					dataType: "json",
					data: {
						"userphone":v
					},
					success: function(res){
						if(res!=null){
							flag=false;
						}
					}
				});
				if(flag){
					mizhu.alert('冰山商城', '该手机号还没有任何订单！');
					return false;
				}
				return true;
			}
			function tel(){
				if(/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
					window.open("tel://13721040925");
				}
				
			}
		</script>
</head>
<body>
	<header class="mui-bar mui-bar-nav">
		<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" style="color: #FC605A;"></a>
		<h1 class="mui-title">我的订单</h1>
	</header>
	<div class="aa">
		<marquee direction="left" style="color: red; font-weight: bold;">
			填写手机号，查询订单！
		</marquee>
	</div>
	<script type="text/javascript"> 

	  function autoScroll(obj){  

			$(obj).find("ul").animate({  

				marginTop : "-39px"  

			},500,function(){  

				$(this).css({marginTop : "0px"}).find("li:first").appendTo(this);  

			})  

		}  

		$(function(){  

			setInterval('autoScroll(".maquee")',3000);

			setInterval('autoScroll(".apple")',2000);

			  

		}) 

		

</script> 
<div id="box">
	<div class="input-group input-group-lg" style="margin: 20px;">
		<span class="input-group-addon">手机号：</span>
        <input type="text" class="form-control" id="phone" placeholder="请输入手机号" />
    </div>
    <button type="button" class="btn btn-danger" id="sub">提交</button>
</div>
<div class="suspension" style="position: fixed; bottom:10px;right: 10px; ">
	<div class="suspension-box">
		<a class="a a-service "><i class="i"></i></a>
		<a href="javascript:;" class="a a-service-phone "><i class="i"></i></a>
		<a href="javascript:;" class="a a-qrcode"><i class="i"></i></a>
		<!--<a href="#" class="a a-cart"><i class="i"></i></a>-->
		<!--<a href="javascript:;" class="a a-top"><i class="i"></i></a>-->
		<div class="d d-service">
			<i class="arrow"></i>
			<div class="inner-box">
				<div id="qqkf" class="d-service-item clearfix"> 
					<a id="qqcheat" class="clearfix"><span class="circle"><i class="i-qq"></i></span><span id="qqsp">咨询在线客服</span></a>
				</div>
			</div>
		</div>
		<div class="d d-service-phone">
			<i class="arrow"></i>
			<div class="inner-box">
				<div class="d-service-item clearfix" onclick="tel()">
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
				<div class="qrcode-img"><img src="<%=request.getContextPath() %>/images/side_ewm.jpg" width="100" height="100" alt=""></div>
				<p>微信服务号</p>
			</div>
		</div>

	</div>
</div>
<script type="text/javascript">jssor_1_slider_init();</script> 
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