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
		<link href="<%=request.getContextPath() %>/css/style2.css" rel="stylesheet" type="text/css"/>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css">
		<link href="<%=request.getContextPath() %>/css/index.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
		<script src="<%=request.getContextPath() %>/js/mui.min.js"></script>
		<script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
		<script src="<%=request.getContextPath() %>/js/slider.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath() %>/js/ui.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/js/ZeroClipboard.js"></script>
		<style type="text/css">
		 	.kefu:hover{
		 		text-decoration: none;
		 	}
		 </style>
		<script type="text/javascript">
		<%-- var clip = null;
		ZeroClipboard.setMoviePath("<%=request.getContextPath() %>/swf/ZeroClipboard.swf"); --%>
		/* $(document).ready(function(){
			
		}); */
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
				/* $("#copyPay_id").click(function(){
					clip = new ZeroClipboard.Client();  
					clip.setHandCursor(true);  
					clip.setText($("#orderPay_id").text());  
					clip.glue("copyPay_id");
					clip.addEventListener("complete", function(){
						alert("代码已复制到剪贴板！");
					});
				});
				$("#copyZFBPay_no").click(function(){
					clip = new ZeroClipboard.Client();  
					clip.setHandCursor(true);  
					clip.setText($("#zfbPay_no").text());  
					clip.glue("copyZFBPay_no");
					clip.addEventListener("complete", function(){
						alert("代码已复制到剪贴板！");
					});
				});
				$("#copyQQPay_no").click(function(){
					clip = new ZeroClipboard.Client();  
					clip.setHandCursor(true);  
					clip.setText($("#qqPay_no").text());  
					clip.glue("copyQQPay_no");
					clip.addEventListener("complete", function(){
						alert("代码已复制到剪贴板！");
					});
				});
				$("#copyWXPay_no").click(function(){
					clip = new ZeroClipboard.Client();  
					clip.setHandCursor(true);  
					clip.setText($("#wxPay_no").text());  
					clip.glue("copyWXPay_no");
					clip.addEventListener("complete", function(){
						alert("代码已复制到剪贴板！");
					});
				}); */
				/* $(".copy").click(function(){
					var v=$(this).prev().val();
					clip = new ZeroClipboard.Client();  
					clip.setHandCursor(true);  
					clip.setText(v);  
					clip.glue("copy-button");
					clip.addEventListener("complete", function(){
						alert("代码已复制到剪贴板！");
					});
        		});	 */
			});
			function tel(){
				if(/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
					window.open("tel://13721040925");
				}
				
			}
		</script>
</head>
<body>
	<section class="aui-flexView">
		<header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" style="color: #FC605A;"></a>
			<h1 class="mui-title">我的订单</h1>
		</header>
		<br/><br/>
		<section class="aui-scrollView">
                <div class="aui-flex aui-flex-context">
                    <div class="aui-flex-box">
                        <h2>
                        	<c:if test="${order.orderstatus==0}">
								待结算
							</c:if>
							<c:if test="${order.orderstatus==1}">
								待发货
							</c:if>
							<c:if test="${order.orderstatus==2}">
								订单完成
							</c:if>
						</h2>
                    </div>
                    <div class="aui-assemble-img">
                        <img src="<%=request.getContextPath() %>/images/time.png" />
                    </div>
                </div>
                <div class="aui-flex">
                    <div class="aui-address-img">
                        <img src="<%=request.getContextPath() %>/images/add.png" />
                    </div>
                    <div class="aui-flex-box">
                        <h4> ${order.userphone }</h4>
                    </div>
                </div>
                <div class="divHeight"></div>
                
                <div class="aui-flex aui-flex-four" onclick="window.location='ice/todetails?id=${order.shopid}'">
                    <div class="aui-flex-add">
                        <img src="<%=request.getContextPath() %>/shoppic/${order.shop.pic}.png" />
                    </div>
                    <div class="aui-flex-box">
                        <p>${order.shop.name}</p>
                        <p class="b-line" style="color:#999">共${order.ordercount}件</p>
                    </div>
                </div>
                
                <c:if test="${order.orderstatus==0}">
	                <div class="aui-flex aui-flex-four" style="padding-top:0">
	                    <div class="aui-flex-box">
	                        <button class="aui-btn-line" onclick="window.location='https://www.magicpeng.com/zhifu/jsp/codepay.jsp?price=${order.orderprice }&type=${order.paytype }&pay_id=*${order.pay_id }*'" style="background-color: #F15353;color: white;">去结算</button>
	                    </div>
	                </div>
                </c:if>
                <div class="aui-flex b-line">
                    <div class="aui-flex-box">
                        <h6>需付款: <em>￥${order.orderprice}</em> <i>(免运费)</i></h6>
                    </div>
                </div>
                <div class="aui-list-box">
                    <a href="javascript:;" class="aui-flex aui-flex-right kefu" id="qqcheat">
                        <div class="aui-flex-icon-img">
                            <img src="<%=request.getContextPath() %>/images/icon-news.png" alt="">
                        </div>
                        <div class="aui-flex-box">
                            <h4>联系卖家</h4>
                        </div>
                    </a>
                    <a href="javascript:;" class="aui-flex kefu" onclick="tel()">
                        <div class="aui-flex-icon-img">
                            <img src="<%=request.getContextPath() %>/images/icon-phone.png" alt="">
                        </div>
                        <div class="aui-flex-box">
                            <h4>拨打电话</h4>
                        </div>
                    </a>
                </div>
                <div class="divHeight"></div>
                <div class="aui-flex">
                    <div class="aui-flex-box">
                        <h4>订单编号: <em id="orderPay_id">${order.pay_id}</em><!-- <button id="copyPay_id">复制</button> --></h4>
                        <br />
                        <c:if test="${order.orderstatus!=0}">
	                        <c:if test="${order.paytype==1}">
								<h4>支付宝交易号: <em id="zfbPay_no">${order.pay_no}</em><!-- <button id="copyZFBPay_no">复制</button> --></h4>
							</c:if>
							<c:if test="${order.paytype==2}">
								<h4>QQ交易号: <em id="qqPay_no">${order.pay_no}</em><!-- <button id="copyQQPay_no">复制</button> --></h4>
							</c:if>
							<c:if test="${order.paytype==3}">
								<h4>微信交易号: <em id="wxPay_no">${order.pay_no}</em><!-- <button id="copyWXPay_no">复制</button> --></h4>
							</c:if>
	                        <br />
	                    
	                        <h4>支付方式: 
	                        	<em>
									<c:if test="${order.paytype==1}">
										支付宝支付
									</c:if>
									<c:if test="${order.paytype==2}">
										QQ支付
									</c:if>
									<c:if test="${order.paytype==3}">
										微信支付
									</c:if>
								</em>
							</h4>
							<br />
						</c:if>
                        <h4>下单时间: <em>${order.ordertime}</em></h4>
                        <c:if test="${order.paytime!=null}">
                        	<br />
                        	<h4>付款时间: <em>${order.paytime}</em></h4>
                        </c:if>
                        <c:if test="${order.finishtime!=null}">
                        	<br />
                        	<h4>发货时间: <em>${order.finishtime}</em></h4>
                        </c:if>
                    </div>
                </div>
            </section>
	</section>
</body>
</html>