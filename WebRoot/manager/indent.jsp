<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>My JSP 'indent.jsp' starting page</title>

  </head>
  
  <body>
    <table width="100%" border="1" cellspacing="0" cellpadding="0">
    	<tr height="50px">
    		<th>订单编号</th>
    		<th>商品编号</th>
    		<th>收货人</th>
    		<th>用户名</th>
    		<th>电话</th>
    		<th>送货地址</th>
    		<th>订单时间</th>
    		<th>操作</th>
    	</tr>
    <c:forEach items="${sessionScope.indent }" var="indent">
    	<tr align="center">
    		<td width="50px">${indent.iid }</td>
	    	<td width="50px">${indent.wid }</td>
	    	<td width="60px">${indent.name }</td>
	    	<td width="80px">${indent.username }</td>
	    	<td width="100px">${indent.phone }</td>
	    	<td width="50px">${indent.address }</td>
	    	<td width="50px">${indent.date }</td>
    		<td width="50px"><a>修改</a> |
    		<a onclick="return confirm('确定删除?');">删除</a></td>
    	<tr>
    </c:forEach>
    </table>
    <table align="center">
		<tr height="50px">
		    <c:forEach items="${sessionScope.pagenumber }" var="number">
			    <td>[<a href="ShowAllIndent?pageNow=${number }">${number }</a>] </td>
		    </c:forEach>
	    </tr>
    </table>
  </body>
</html>
