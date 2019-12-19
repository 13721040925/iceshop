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
	<title>冰山商城</title>
</head>
<body>
<script type="text/javascript">
	function local(){
		if(/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
            window.open('ice/towelcome');
		} else{
			window.location="https://www.magicpeng.com/";
		}
	}
	local();
</script>
</body>
</html>
