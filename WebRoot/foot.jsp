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
    <title>My JSP 'bottom.jsp' starting page</title>

  </head>
  
  <body>
    <!--底部 -->
<div class="foot">
      <div class="r1 w1225">
        <dl class=" w188">
            <dd class=" w110">
                <a href="/help-706.html"   rel="nofollow"><img src="css/images/logoxia.png"/></a>
            </dd>
        </dl>
        <dl class=" w188">
            <dt class=" w70"><i>新手</i></dt>
            <dd class=" w110">
                <a href=""   rel="nofollow">&bull;&nbsp;用户注册</a>
                <a href=""   rel="nofollow">&bull;&nbsp;找回密码</a>
                <a href=""   rel="nofollow">&bull;&nbsp;订购流程</a>
            </dd>
        </dl>
        <dl class=" w188">
            <dt class=" w70"><i>支付</i></dt>
            <dd class=" w110">
                <a href=""   rel="nofollow">&bull;&nbsp;支付方式</a>
                <a href=""   rel="nofollow">&bull;&nbsp;发票说明</a>
                <a href=""   rel="nofollow">&bull;&nbsp;支付问题</a>
            </dd>
        </dl>
        <dl class=" w188">
            <dt class=" w70"><i>配送</i></dt>
            <dd class=" w110">
                <a href=""   rel="nofollow">&bull;&nbsp;配送方式</a>
                <a href=""   rel="nofollow">&bull;&nbsp;配送说明</a>
                <a href=""   rel="nofollow">&bull;&nbsp;包裹签收</a>
            </dd>
        </dl>
        <dl class=" w188">
            <dt class=" w70"><i>保障</i></dt>
            <dd class=" w110">
                <a href=""   rel="nofollow">&bull;&nbsp;退换货政策说明</a>
                <a href=""   rel="nofollow">&bull;&nbsp;如何办理退货</a>
                <a href=""   rel="nofollow">&bull;&nbsp;常见问题</a>
            </dd>
        </dl>
        <dl class=" w188">
            <dt class=" w70"><i>寄卖</i></dt>
            <dd class=" w110">
                <a href=""   rel="nofollow">&bull;&nbsp;寄卖流程</a>
                <a href=""   rel="nofollow">&bull;&nbsp;寄卖说明</a>
                <a href=""   rel="nofollow">&bull;&nbsp;调价与撤卖</a>
            </dd>
        </dl>
    </div>
    <div class="r2 w1225 wide">
        <div class="f333 tmallLinks">
        <a href=""   rel="nofollow">正品保证</a>&nbsp;|&nbsp;
        <a href=""   rel="nofollow">7天退货</a>&nbsp;|&nbsp;
        <a href=""  >售后维修 </a>&nbsp;|&nbsp;
        <a href=""  >全场包邮</a>&nbsp;|&nbsp;
        <a href=""   rel="nofollow">投诉建议</a>
        </div>
        <div>
                喜悦名表 版权所有  Copyright 2014-2015 www.xxxxxxx.cn . LTD ALL RIGHT RESERVED.
            <br/>
        </div>
    </div>
</div><!-- End footer -->
<!--back top -->
<div id="top_item">
        <a id="back_top" onclick="return false;" title="回到顶部"></a>
</div>
<script type="text/javascript">
$(function() {
	$(window).scroll(function(){
		var scrolltop=$(this).scrollTop();		
		if(scrolltop>=200){		
			$("#top_item").show();
		}else{
			$("#top_item").hide();
		}
	});		
	$("#back_top").click(function(){
		$("html,body").animate({scrollTop: 0}, 500);
	});		
});
</script><!--back top -->
  </body>
</html>
