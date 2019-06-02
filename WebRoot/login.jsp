<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登陆</title>
  </head>
  
  <body>
    <jsp:include page="head.jsp"></jsp:include>
    <!-- End header -->
	<link rel="stylesheet" href="css/index.css" type="text/css" media="screen, projection" />
	<script type="text/javascript" src="Script/index.js"></script>
	<div style="width:1100px;height:500px; margin:0 auto;">
		<div style="width:600px;height:430px; float:left; margin-top:30px;border:1px solid;"><img src="Images/gg.jpg" /></div>
		<div style="width:495px;height:430px; float:right;margin-top:30px;border:1px solid;">
			<div style="width:495px;height:20px; float:right;margin:20px;"align="right";>
			<span class="STYLE3"><a href="register.jsp">注册新用户</a></span></div>
		<form action="CheckLogin" method="post">
			<div style="width:495px;height:80px; float:right;margin-top:80px;"align="center";>
			<span class="STYLE1">用户名:</span>
			<input type="text" size="35" style="height:30px" required="required" placeholder="输入用户名" name="username"/>
			</div>
			<div style="width:495px;height:50px; float:right;" align="center";>
			<span class="STYLE1">密&nbsp;&nbsp;&nbsp;&nbsp;码:</span>
			<input type="password" size="35" required="required" placeholder="输入密码" style="height:30px" name="password"/>
			</div>
			<div style="width:495px;height:30px; float:right;" align="center";>
			用户<input type="radio" checked="checked" name="xuan" value="user">
			管理员<input type="radio" name="xuan" value="manage"></div>
			<div style="width:495px;height:30px; float:right;color: red" align="center";>${sessionScope.str }</div>
			<div style="width:495px;height:50px; float:right;" align="center";>
			<input type="image" src="Images/denglu.png"></div>
		</form>	
		</div>
	</div>
	
	
	
	<!--热销 start-->
	<div id="hot_display_position"></div>
	</div>
	<p align="center">&nbsp;</p>
	
	<!--热销 end-->
	<div id="rank_display_position"></div>
	</div>
	<!--销售排行榜 end-->
	</div>
  <jsp:include page="foot.jsp"></jsp:include>
	
  </body>
</html>
