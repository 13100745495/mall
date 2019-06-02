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
    <title>My JSP 'product.jsp' starting page</title>
	<script type="text/javascript">
		function butinsert() {
			location.replace("manager/insertwatch.jsp");
		}
	</script>
  </head>
  
  <body>
  	<button onclick="butinsert();" style="width: 80px;height: 30px;color: red;margin: 10px">添加商品</button>
    <table width="100%" border="1" cellspacing="0" cellpadding="0">
    	<tr height="50px">
    		<th>商品编号</th>
    		<th>商品名</th>
    		<th>销售价格</th>
    		<th>原价</th>
    		<th>图像</th>
    		<th>添加日期</th>
    		<th>操作</th>
    	</tr>
    <c:forEach items="${sessionScope.watch }" var="list">
    	<tr align="center">
    		<td width="50px">${list.wid }</td>
	    	<td width="250px">${list.name }</td>
	    	<td width="100px">${list.price }</td>
	    	<td width="100px">${list.money }</td>
	    	<td width="150px"><img src="${pageContext.request.contextPath }/${list.photo }" width="100px" height="100px"></td>
	    	<td width="100px">${list.date }</td>
    		<td width="100px">
    		<form id="form1" action="UpFile" method="post" enctype="multipart/form-data">
    		<input type="hidden" name="wid" value="${list.wid }">
    		<input accept="image/*" style="width: 250px" type="file" name="photo" required="required"><br>
    		<input type="submit" value="更改图片">
    		</form><br>
    		<a href="SelectProduct?wid=${list.wid }">修改</a> |
    		 <a href="DeleteProduct?wid=${list.wid }" onclick="return confirm('确定删除?');">删除</a></td>
    	<tr>
    </c:forEach>
    </table>
    <table align="center">
		<tr height="50px">
		    <c:forEach items="${sessionScope.pagenumber }" var="number">
			    <td>[<a href="ShowAllProduct?pageNow=${number }">${number }</a>] </td>
		    </c:forEach>
	    </tr>
    </table>
  </body>
</html>
