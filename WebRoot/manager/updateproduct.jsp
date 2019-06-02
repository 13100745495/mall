<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateproduct.jsp' starting page</title>

  </head>
  
  <body>
    <form action="UpdateProduct" method="post">
    	<table border="1" align="center" cellspacing="0" cellpadding="15">
    		<tr>
    			<td align="right">商品名:</td>
    			<td><input type="text" name="name" maxlength="20" value="${watch.name }"></td>
    		</tr>
    		<tr>
    			<td align="right">销售价格:</td>
    			<td><input type="number" oninput="if(value.length>10)value=value.slice(0,10)" name="price" value="${watch.price }"></td>
    		</tr>
    		<tr>
    			<td align="right">原价:</td>
    			<td><input type="number" oninput="if(value.length>10)value=value.slice(0,10)" size="10" name="money" value="${watch.money }"></td>
    		</tr>
    		<tr>
    			<td colspan="2">
    			<input type="submit" value="修改" style="width: 50px;height: 30px;margin-left: 100px">
    			<input type="reset" value="重置" style="width: 50px;height: 30px;margin-left: 50px"></td>
    		</tr>
    	</table>
    </form>
    <font size="10px" style="color: red;margin-left: 50%;position: absolute;left: -50px">${updateproduct }</font>
  </body>
</html>
