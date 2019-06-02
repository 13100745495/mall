<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  
  <body>
    <div class="top">
    <ul>
        <li id="member_info"><a rel="nofollow">${username }</a></li>
        <li>&nbsp;|&nbsp;</li>
        <li><a href="huiyuan.jsp" rel="nofollow" title="我的订单">我的订单</a></li>
        <li>&nbsp;|&nbsp;</li>
        <li class="s__center"><a class="link_center" href="huiyuan.jsp" rel="nofollow" title="会员中心">会员中心&nbsp;<span class="s__arrow_red_down">&nbsp;</span></a>
        </li>
        <li>&nbsp;|&nbsp;</li>
        <li class="s__clearing"><div class="s__cart"><a href="index.jsp" rel="nofollow">返回首页&nbsp;<span class="s__arrow_red_down">&nbsp;</span></a></div></li>
    </ul>
    </div>
  </body>
</html>
