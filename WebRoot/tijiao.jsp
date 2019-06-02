<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单提交</title>
<link rel="stylesheet" href="css/2.css">
</head>

<body>
<div id="member_info2"></div>
<div id="header">
    <jsp:include page="ddhead.jsp"></jsp:include>
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
            <li class="w60 bold f14 cd00">提交订单</li>
            <li class="w90">&nbsp;</li>
            <li class="w60 bold f14 c666">支付订单</li>
            <li class="w90">&nbsp;</li>
            <li class="w60 bold f14 c666">等待签收</li>
        </ul>
    </div>
    <h1><br /><img src="css/images/LOGO.png" /></h1>
</div>

<div id="main">
    <form id="order_form" name="order_form" action="InsertIndent" method="post" novalidate="novalidate">
    <div class="mt30">
        <div>
            <b class="f14">收货信息：</b>
            <font class="c999">我们将选用最专业的快递公司联邦快递、顺丰快递、EMS等</font>
        </div>
<div class="mt20 bl_3_f6f">
    <ul id="addrIfr" class="w970 m0a f14 c333">
       <div class="clear"></div>
         <li class="mt5">
         <b class="f14">添加收货地址</b>
         <ul id="chaAddr" class="w940 m0a bgf6f br10 pb20 f13 pl30 show">
         <form action="InsertIndent" method="post" novalidate="novalidate">
         <li class="h34 pt10 pb2 rel">
         <span class="f14 fl w80 tr mr5">
         <b class="cd00 pr5">*</b>收货人:</span><div class="rel inbl">
         <input type="text" required="required" name="name" class="b_1_e5e p_0_5 w264 h34 c999" maxlength="10"></div>
         </li><li class="mt10 h34 pt2 pb2 rel z100">
         <span class="f14 fl w80 tr mr5">
         <b class="cd00 pr5">*</b>地区:</span><div class="rel inbl">
         <input type="text" required="required" class="b_1_e5e p_0_5 w264 h34 c999" name="mobile" maxlength="50"></div></li><li class="mt10 h34 pt10 pb2 rel"><span class="f14 fl w80 tr mr5">
         <b class="cd00 pr5">*</b>街道地址:</span><div class="rel inbl">
         <input type="text" required="required" class="b_1_e5e p_0_5 w440 h34 c999" name="address" maxlength="150"></div></li><li class="mt10 h34 pt2 pb2 rel"><span class="f14 fl w80 tr mr5">
         <b class="cd00 pr5">*</b>手机:</span><div class="rel inbl">
         <input type="text" required="required" class="b_1_e5e p_0_5 w264 h34 c999" name="phone" maxlength="11"></div></li>
         <!-- <li class="mt10 h34 pt2 pb2 rel"><span class="f14 fl w80 tr mr5">
         <b class="cd00 pr5">&nbsp;</b>邮箱:</span><div class="rel inbl"><input type="text" class="ignore b_1_e5e p_0_5 w264 h34 c999" name="email" maxlength="60"></div></li> -->
         <li class="mt10 h34 pt2 pb2"><span class="f14 fl w80 tr mr5">&nbsp;</span><div class="rel inbl"><a href="javascript:;" id="confirm" class="w80 h26 f14 bold bgd00 inbl tc cfff mr15">保存</a>
         <a href="car.jsp" id="cancel" class="w80 h26 f14 bold bgccc inbl tc cfff">取消</a></div></li></ul>                       
        </li>
    </ul>
</div>    </div>

                <div class="clear"></div>
            </div>
        </div>    
        <div id="ope" class="w930 m0a">
            <div class="fl">
                <div class="mt70 rel" style="margin-top: 25px">
                    <input type="text" name="order_note" id="order_note" class="ignore b_1_e5e p_0_5 w464 h34 cbbb f14" placeholder="写下你的订单留言..." maxlength="255">
                </div>
            </div>
            <div class="fr">
                <div class="mt20">
                    <input type="submit" id="order_checkout_submit" class="btnd00 w212 h40 f16 bold" value="提交订单，去支付">
                    <b id="wait_submit" class="hide">订单正在提交中，请稍候<img style="width:24px;height:24px;" src="images/loading_1.gif"></b>
                </div>
            </div>
        </div>
    </div>
    </form>
</div>



<div id="footer">
  <div class="info">
    <p class="copyright">                喜悦名表 版权所有  Copyright 2014-2015 www.xxxxxxx.cn . LTD ALL RIGHT RESERVED.

    </p>
  </div>
</div>
</body>
</html>
