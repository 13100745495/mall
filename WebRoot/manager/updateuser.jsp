<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'updateuser.jsp' starting page</title>

  </head>
  
  <body>
    <form action="UpdateUser" method="post">
    	<table border="1" align="center" cellspacing="0" cellpadding="15">
    		<tr>
    			<td align="right">用户名:</td>
    			<td><input type="text" name="username" value="${user.username }"></td>
    		</tr>
    		<tr>
    			<td align="right">密码:</td>
    			<td><input type="password" name="password" value="${user.password }"></td>
    		</tr>
    		<tr>
    			<td align="right">邮箱:</td>
    			<td><input type="email" name="email" value="${user.email }"></td>
    		</tr>
    		<tr>
    			<td align="right">电话:</td>
    			<td><input type="number" maxlength="11" name="phone" value="${user.phone }"></td>
    		</tr>
    		<tr>
    			<td colspan="2" align="center">
    			<input type="submit" value="修改" style="width: 50px;height: 30px;">
    			<input type="reset" value="重置" style="width: 50px;height: 30px;margin-left: 20px"></td>
    		</tr>
    	</table>
    </form>
    <font size="10px" style="color: red;margin-left: 50%;position: absolute;left: -50px">${updateuser }</font>
  </body>
</html>
