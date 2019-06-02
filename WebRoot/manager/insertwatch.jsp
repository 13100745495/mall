<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML >
<html>
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>My JSP 'insertwatch.jsp' starting page</title>
  	<script type="text/javascript" src="../Script/jquery-1.12.4.min.js"></script>
  	
  </head>
  
  <body>
    <form action="InsertWatch" method="post">
    	<table align="center" cellspacing="0" cellpadding="15">
    		<tr>
    			<td align="right">商品名:</td>
    			<td><input style="width: 250px" type="text" maxlength="20" name="name" required="required"></td>
    		</tr>
    		<tr>
    			<td align="right">销售价格:</td>
    			<td><input style="width: 250px" type="number" oninput="if(value.length>10)value=value.slice(0,10)" name="price" required="required"></td>
    		</tr>
    		<tr>
    			<td align="right">原价:</td>
    			<td><input style="width: 250px" type="number" oninput="if(value.length>10)value=value.slice(0,10)" name="money"></td>
    		</tr>
    		<tr align="right">
    			<td colspan="2">
    			<input type="submit" value="添加" style="width: 50px;height: 30px;">
    			<input type="reset" value="重置" style="width: 50px;height: 30px;margin-left: 50px;margin-right: 50px"></td>
    		</tr>
    		<tr align="center">
    			<td colspan="2" style="color: red">${sessionScope.insertwatch }</td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
