<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单管理</title>
<link rel="stylesheet" href="css/2.css">
<link rel="stylesheet" href="css/fancybox.css" type="text/css">
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
            <li class="w60 bold f14 cd00">选购商品</li>
            <li class="w90">&nbsp;</li>
            <li class="w60 bold f14 c666">提交订单</li>
            <li class="w90">&nbsp;</li>
            <li class="w60 bold f14 c666">支付订单</li>
            <li class="w90">&nbsp;</li>
            <li class="w60 bold f14 c666">等待签收</li>
        </ul>
    </div>
    <h1><br /><img src="css/images/LOGO.png" /></h1>
</div>

<div id="main">
    <div class="w930 m0a mt30">
        <div class="ml20">
            <b class="f16">购物车：</b>   
            <span class="c999">购物车信息将一直为您保存</span>
        </div>
        <div class="bgf6f br10">
            <ul class="c999 f13 h40 mt10 li_left">
                <li class="w510 tl pl20">商品</li>
                <li class="w120 tc">售价</li>
                <li class="w120 tc">数量</li>
                <li class="w80 tr pr64">操作</li>
            </ul>

                <ul class="bt_1_eae bb_1_fff" id="goods_line_548546"></ul>
                <ul class="999 f13 h120 li_left" id="goods_list_548546">
                    <li class="w510 tl pl20">
                        <a class="fl">
                          <img src="Images/3412_183_24_30_27_27885.jpg" width="100px" height="100px" class="m_10_20_10_0" alt="">
                        </a>
                        <a>
                            <span class="w390 bold c333 fl h20 mt35">瑞士爱宝时（EPOS）-Passion系列 3412.183.24.30.27 机械男表</span>
                        </a>
                    </li>
                    <li class="w120 tc">
                        <span class="bold ccf0 f16">￥9500</span>
                    </li>
                    <li class="w120 tc">
                        <span class="btne3d w18 h22 inbl re-t0-l5 ie-t1_m50 ie_mi" oprtype="minus" oprid="548546">—</span>
                        <input type="text" id="goods_number_548546" name="goods_number" maxlength="4" size="2" value="1" class="b_1_e5e p_0_5 tc w28 h20 ie-t1_m50 ie_mi goods_number c000 bold" oprid="548546" oprnum="1">
                        <span class="btne3d w18 h22 inbl re_t0-l5 ie-t1_m50 ie_mi" oprtype="add" oprid="548546">+</span>
                    </li>
                    <li class="w100 tr">
                        <a href="javascript:void(0)" id="collection" oprid="25523" class="ul">收藏</a>
                        <a href="javascript:void(0)" data="548546" class="ul delete">删除</a>
                    </li>
                </ul>
                <c:if test="${!empty sessionScope.ordermap }">
	                <c:forEach items="${sessionScope.ordermap }" var="map">
	                	<ul class="bt_1_eae bb_1_fff" id="goods_line_548546"></ul>
		                <ul class="999 f13 h120 li_left" id="goods_list_548546">
		                    <li class="w510 tl pl20">
		                        <a class="fl">
		                          <img src="${pageContext.request.contextPath }/${map.value.photo }" width="100px" height="100px" class="m_10_20_10_0" alt="">
		                        </a>
		                        <a>
		                            <span class="w390 bold c333 fl h20 mt35">${map.value.name }</span>
		                        </a>
		                    </li>
		                    <li class="w120 tc">
		                        <span class="bold ccf0 f16">￥${map.value.price }</span>
		                    </li>
		                    <li class="w120 tc">
		                        <span class="btne3d w18 h22 inbl re-t0-l5 ie-t1_m50 ie_mi" oprtype="minus" oprid="548546">—</span>
		                        <input type="text" id="goods_number_548546" name="goods_number" maxlength="4" size="2" value="1" class="b_1_e5e p_0_5 tc w28 h20 ie-t1_m50 ie_mi goods_number c000 bold" oprid="548546" oprnum="1">
		                        <span class="btne3d w18 h22 inbl re_t0-l5 ie-t1_m50 ie_mi" oprtype="add" oprid="548546">+</span>
		                    </li>
		                    <li class="w100 tr">
		                        <a href="javascript:void(0)" id="collection" oprid="25523" class="ul">收藏</a>
		                        <a href="AddOrder?wid=${map.value.wid }&deleteorder=shanchu" data="548546" class="ul delete">删除</a>
		                    </li>
		                </ul>
	                </c:forEach>
				</c:if>
            <ul class="bt_1_eae bb_1_fff"></ul>

            <div class="clear"></div>
        </div>
        <div class="w930 m0a">
            <div class="fl">
                <div class="mt50">
                    <a href="index.jsp" class="f14 bold c999 b_1_efe btnf7f w146 h40 fl tc">继续购物</a>
                </div>
            </div>
            <div class="fr">
                <div class="tc cd00 mt20">
                    <span class="f13 bold">商品总额：￥</span>
                    <span class="f20" id="goods_amount">9500</span>
                </div>
                
                <div class="mt20 tr">
                    <input type="hidden" id="all_has_stock" value="1">
                <a rel="nofollow" id="real_checkout_now" href="http://cart.wbiao.cn/user/index/pop_login" class="iframe" style="display:none;">检查登录</a>
                <input onclick="location.replace('tijiao.jsp')" type="submit" class="btnd00 w146 h40 f16 bold" value="提交" />
                </div>
                <div class="mt10">
                    <span class="c999">结算后可选择礼品或使用优惠券等操作</span>
                </div>
            </div>
                    </div>
    </div>
</div>

<script type="text/javascript" src="Script/fancybox.js"></script>

<div id="footer">
  <div class="info">
    <p class="copyright">喜悦名表 版权所有  Copyright 2014-2015 www.xxxxxxx.cn . LTD ALL RIGHT RESERVED.

    </p>
  </div>
</div>
</body>
</html>
