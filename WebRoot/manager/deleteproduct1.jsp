<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>My JSP 'deleteuser1.jsp' starting page</title>

  </head>
  
  <body>
    <script type="text/javascript">
    	alert("删除成功");
    	location.replace("ShowAllProduct");
    </script>
  </body>
</html>
