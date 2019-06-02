<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'loser.jsp' starting page</title>

  </head>
  
  <body>
    <script type="text/javascript">
    	alert("订单提交失败");
    	location.replace("tijiao.jsp");
    </script>
  </body>
</html>
