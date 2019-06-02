<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<meta name="keywords" content="手表,买手表,喜悦手表网,喜悦手表网官网,名表商城,正品手表，瑞士手表" />
<meta name="description" content="【喜悦手表网官网】：买原装正品世界名表：浪琴、天梭、欧米茄、劳力士等瑞士手表品牌，信用卡分期付款，正品保证，全国联保，终身售后保障！" />
<link rel="stylesheet" href="css/index.css" type="text/css" media="screen, projection" />
<script type="text/javascript" src="Script/index.js"></script>
<script type="text/javascript" src="Script/jquery-1.12.4.min.js"></script>

<style type="text/css">
<!--
.STYLE1 {font-size: large}
.STYLE3 {
	font-size: medium;
	color: #CC0000;
}
-->
</style>
<script type="text/javascript">
	$(function () {
            $("#code").blur(function () {
                var code = $("#code").val();
                window.flag = false;
                $.ajax({
                	type : "POST",
                	url : "CheckRegister",
                	data : {"code":code},
                	success : function(msg) {
                		if(msg == "1") {
                			document.getElementById("numberyz").innerHTML = "验证码错误";
	                		img.src=img.src+'?'+(new Date()).getTime();
	                		return false;
	                	}
	                	document.getElementById("numberyz").innerHTML = "";
	                	window.flag = true;
                	}
                })
            });
       	});
</script>
<script type="text/javascript">
		function yanzheng() {
		window.flag = false;

				var word1 = document.getElementById("password1").value;
				var word2 = document.getElementById("password2").value;
				if(word1 != word2) {
					alert("两次输入的新密码不一致！");
					return window.flag;
				} else {
					window.flag = true;
					return window.flag;
				}
			}
</script>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>

<div style="width:1100px;height:500px; margin:0 auto;">
<form action="CheckRegister" method="post">
<div style="width:1090px;height:450px; float:right;margin-top:30px;border:1px solid;">
<div style="width:200px;height:40px; float:left;margin-top:10px;"align="right";><span class="STYLE1">*用户名:</span></div>
<div style="width:880px;height:40px; float:right;margin-top:10px;"align="left";>
<input type="text" required="required" size="50" style="height:20px" name="username"/>
<span class="mb25">
<label class="warn2 username2">可由中文、英文、数字及“_”、“-”组成</label>
</span></div>

<div style="width:200px;height:40px; float:left;margin-top:10px;"align="right";><span class="STYLE1">*设置密码:</span></div>
<div style="width:880px;height:40px; float:right;margin-top:10px;"align="left";>
<input type="password" required="required" size="50" style="height:20px" name="password" id="password1"/>
<span class="mb25">
<label class="warn2 password2">可使用字母、数字或符号的组合</label>
</span></div>

<div style="width:200px;height:40px; float:left;margin-top:10px;"align="right";><span class="STYLE1">*确认密码:</span></div>
<div style="width:880px;height:40px; float:right;margin-top:10px;"align="left";>
<input type="password" required="required" size="50" style="height:20px" name="password" id="password2" onblur="yanzheng()"/>
<span class="mb25">
<label class="warn2 confirm_password2">请再次输入密码</label>
</span></div>

<div style="width:200px;height:40px; float:left;margin-top:10px;"align="right";><span class="STYLE1">*电子邮箱:</span></div>
<div style="width:880px;height:40px; float:right;margin-top:10px;"align="left";>
<input type="email" required="required" size="50" style="height:20px" name="email"/>
<span class="mb25">
<label class="warn2 email2">请输入常用的邮箱，将用来找回密码、接收订单通知等</label>
</span></div>

<div style="width:200px;height:40px; float:left;margin-top:10px;"align="right";><span class="STYLE1">*手机号码:</span></div>
<div style="width:880px;height:40px; float:right;margin-top:10px;"align="left";>
<input type="text" required="required" size="50" maxlength="11" style="height:20px" name="phone" onkeyup="this.value=this.value.replace(/\D/g,'')"/>
<span class="mb25">
<label class="warn2 username2">请输入11位手机号码 

</label>
</span></div>


<div style="width:200px;height:40px; float:left;margin-top:10px;"align="right";><span class="STYLE1">*验证码:</div>
<div style="width:880px;height:40px; float:right;"align="left";>
<input type="text" size="15" required="required" style="height:20px;margin-right: 10px" name="code" id="code"/><img src="CodeServlet" id="img"/>
<span class="mb25"><span class="gray pl10" id="vercodespan">看不清？<a onclick="img.src=img.src+'?'+(new Date()).getTime()" class="redLink">换一张</a> </span><span class="warn2 vercode2">请输入图片中的字符，不区分大小写</span></span></div>

<div style="width:290px;height:40px;color: red;margin-top: 0" align="right" id=numberyz></div>

<div style="width:880px;height:40px; float:right;margin-top:20px;"align="left">
<input type="image" src="Images/zhuce.png" onclick="return window.flag;"></div>
<div style="width:300px;height:40px;float:left;font-size: 20px;color: red" align="right">${sessionScope.zhuce }</div>
</form>

</div>
</div>
<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>
