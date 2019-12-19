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
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/app.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/icons-extra.css">
		<!--自定义iconfont-->
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/iconfont.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/shopping-cart.css">
		<link href="<%=request.getContextPath() %>/css/style1.css" rel="stylesheet" />
		<script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
		<script src="<%=request.getContextPath() %>/js/mui.min.js"></script>
		<script src="<%=request.getContextPath() %>/js/ui.js"></script>
		<style type="text/css">
			.text_length{
				display:block;
				text-align: right;
			} 
			#menu{
            	display: block;
            	z-index: 10;
            	position: fixed;
            	bottom: 50px;
            	width: 100%;
            }
            .payway{
            	display: inline-block;
            	float: right;
            	margin-right: 10px;
            }
            .payli{
            	display: inline-block;
            	width: 100%;
            	height: 100%;
            	background-color: #F0F0F0;
            }
            #hd{
            	text-decoration: none;
            }
		</style>
		<script type="text/javascript">
			function checkLen(obj,maxs){
				var maxChars = maxs;//最多字符数 
				if (obj.value.length > maxChars){
					$(".text_length").css("color","red");
				}
				var curr = maxChars - obj.value.length; 
				$(obj).parents("dl").find(".text_length b").text(curr.toString());
			} 
			$(function(){
				$("#menu").hide();
				$(".pay").click(function(){
					if($(".pay").text()=="选择付款方式"){
						$("#menu").show();
						$(".pay").text("去付款");
					}else{
						$(".payway").each(function(){
							if($("#textarea").val().length>100){
								mizhu.alert('冰山商城', '留言字符数超过100！');
								return;
							}
						    if($(this).is(":checked")){
						    	var type=$(this).val();
						    	var paytype=type;
						    	var usersay="";
						    	if($("#textarea").val()!=""&&$("#textarea").val()!=null){
						    		usersay=$("#textarea").val();
						    	}else{
						    		usersay=" ";
						    	}
						    	var userphone=$("#userphone").text();
						    	var shopname=$("#shopname").text();
						    	var shopprice=$("#shopprice").text();
						    	var ordercount=$("#ordercount").text();
						    	var orderprice=$("#orderprice").text();
						    	var shopid="${shop.id}";
						    	var flag=false;
						    	var pay_id="";
						    	$.ajax({
									url:"ice/createOrder",
									async : false, 
									type: "post",  
									dataType: "json",
									data: {
										"paytype":paytype,
										"usersay":usersay,
										"userphone":userphone,
										"shopname":shopname,
										"shopprice":shopprice,
										"ordercount":ordercount,
										"orderprice":orderprice,
										"shopid":shopid
									},
									success: function(res){
										if(res!=null){
											pay_id=JSON.stringify(res);
											flag=true;
										}
									}
								});
						    	if(flag){
						    		window.open("https://www.magicpeng.com/zhifu/jsp/codepay.jsp?price="+orderprice+"&type="+type+"&pay_id="+pay_id);
						    	}   
						    }
						 });
						
					}
				});
				$("#hd").click(function(){
					$("#menu").hide();
					$(".pay").text("选择付款方式");
				});
			});
			
		</script>
	</head>

	<body>
		<header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
			<h1 class="mui-title">确认支付</h1>
		</header>
		<div class="new-buy-address">
			<!-- <a href="new-address.html"> -->
				<!-- <span class="icon iconfont icon-dizhi"></span> -->
				<span class="flex1">
					<li style="display: flex;justify-content: space-between;width:96%">
						<span style="flex:1">收货人:</span>
						<span id="userphone">${phone }</span>
					</li>
					<!-- <li>
						<span>收货地址：上海市浦东新区莱阳路61号</span>
					</li> -->
				</span>
				<!-- <span class="mui-icon mui-icon-arrowright"></span> -->
			<!-- </a> -->
		</div>
		<div  class="new-min-order new-buy-order">
			<ul>
				<li class="buy-order-details" onclick="window.location='ice/todetails?id=${shop.id }'">
					<img src="<%=request.getContextPath() %>/shoppic/${shop.pic }.png" />
					<div class="flex1">
						<h4 id="shopname">${shop.name }</h4>
						<h5 class="mui-text-right font-color-pink">￥<label id="shopprice">${shop.price }</label></h5>
						<p class="mui-text-right font-color-gray">x<label id="ordercount">${ordercount }</label></p>
					</div>
				</li>
				<!-- <li>
					<span>运费</span>
					<span class="font-color-gray">￥<label>0.00</label></span>
				</li> -->
				<li class="disflex-between">
					<span>买付款</span>
					<span class="font-color-gray">￥<label id="orderprice">${shop.price*ordercount }</label></span>
				</li>
			</ul>
			<div class="mui-input-row" style="margin: 10px 5px;">
				<dl>
					买家留言：<textarea id="textarea" rows="5" onkeyup="checkLen(this,100)" placeholder="多行文本框"></textarea>
					<dd class="text_length">还可输入字符<b>100</b>（限制字符100）</dd>
				</dl>
			</div>
		</div>
		<ul class="mui-table-view" id="menu" style="background-color: #F0F0F0;">
			<li class="mui-table-view-cell" style="text-align: right;color: #FC605A;background: #f7f7f7;"><a id="hd">>>></a></li>
		    <li class="mui-table-view-cell payli"><img src="<%=request.getContextPath() %>/img/QQ.jpg" /> QQ支付<input class="payway" type="radio" name="type" value="2" /></li>
		    <li class="mui-table-view-cell payli"><img src="<%=request.getContextPath() %>/img/zfb.jpg" /> 支付宝支付<input class="payway" type="radio" name="type" value="1" checked="checked" /> </li>
		    <li class="mui-table-view-cell payli"><img src="<%=request.getContextPath() %>/img/wechat.jpg" /> 微信支付<input class="payway" type="radio" name="type" value="3" /> </li>
		</ul>
		<div class="buy__button">
			<button>总金额：￥<label>${shop.price*ordercount }</label></buttons>
			<button class="pay">选择付款方式</button>
		</div>
		
	</body>

</html>