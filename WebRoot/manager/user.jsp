<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    <title>My JSP 'user.jsp' starting page</title>

  </head>
  
  <body>
    <table width="100%" border="1" cellspacing="0" cellpadding="0">
    	<tr height="50px">
    		<th>编号</th>
    		<th>用户名</th>
    		<th>邮箱</th>
    		<th>电话</th>
    		<th>注册时间</th>
    		<th>操作</th>
    	</tr>
    <c:forEach items="${sessionScope.list }" var="list">
    	<tr align="center" height="50px">
    		<td>${list.uid }</td>
	    	<td>${list.username }</td>
	    	<td>${list.email }</td>
	    	<td>${list.phone }</td>
	    	<td>${list.date }</td>
    		<td><a href="SelectUser?uid=${list.uid }">修改</a> |
    		 <a href="DeleteUser?uid=${list.uid }" onclick="return confirm('确定删除?');">删除</a>
    		  </td>
    	<tr>
    </c:forEach>
    </table>
    <table align="center">
		<tr height="50px">
		    <c:forEach items="${sessionScope.pagenumber }" var="number">
			    <td>[<a href="ShowAllUser?pageNow=${number }">${number }</a>] </td>
		    </c:forEach>
	    </tr>
    </table>
  </body>
</html>
