<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>提交成功</title>

<link rel="stylesheet" href="css/2.css">
</head>

<body>
<div id="member_info2"></div>
<div id="header">
    
    <div class="w750 mt30 fr">
        <ul class="m_0_23 inline w464 fr li_left li">
            <li class="w14 h14 circle bp_0-36"></li>
            <li class="w136 h8 mt6 bt_2_f1f">&nbsp;</li>
            <li class="w14 h14 circle bp_0-36"></li>
            <li class="w136 h8 mt6 bt_2_f1f">&nbsp;</li>
            <li class="w14 h14 circle bp_0-36"></li>
            <li class="w136 h8 mt6 bt_2_f1f">&nbsp;</li>
            <li class="w14 h14 circle bp_0-19"></li>
        </ul>
        <ul class="w510 mt10 fr li_left li">
            <li class="w60 bold f14 c666">选购商品</li>
            <li class="w90">&nbsp;</li>
            <li class="w60 bold f14 c666">提交订单</li>
            <li class="w90">&nbsp;</li>
            <li class="w60 bold f14 c666">支付订单</li>
            <li class="w90">&nbsp;</li>
            <li class="w60 bold f14 cd00">等待签收</li>
        </ul>
    </div>
    <h1><br /><img src="css/images/LOGO.png" /></h1>
</div>


<div id="main">
    <div class="w930 m0a mt50">
        <dl class="bgf6f br10 f14 p20">
            <dt class="bold f22 cd00">订单提交成功！</dt>
            <dd class="ml5 mt15 c777">感谢您订购喜悦手表网商品；</dd>
            <dd class="ml5 mt10 c777">请你确保手机联系畅通，我们将稍后和你本人联系；</dd>
            <dd class="ml5 mt10 c777">订单确认后，我们将第一时间为您安排发货！</dd>
        </dl>
		        <div class="mt30 ml10">
			            <!-- <div class="mb10 c777 f13">设置密码后，即可马上成为喜悦手表网会员，方便进入查看与订单管理</div> -->
            <a id="login_now" href="index.jsp" class="btnd00 w212 h40 f18 bold tc inbl fancybox.iframe">继续购物</a>
      </div>
    </div>
</div>



<div id="footer">
  <div class="info">
    <p class="copyright">                喜悦名表 版权所有  Copyright 2014-2015 www.xxxxxxx.cn . LTD ALL RIGHT RESERVED.

    </p>
  </div>
</div>
</body>
</html>
