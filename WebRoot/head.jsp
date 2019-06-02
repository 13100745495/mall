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
    <title>My JSP 'head.jsp' starting page</title>
	<script src="Script/banner.js"></script>
	<!-- end banner js -->
	<link rel="stylesheet" href="css/sxg.css">
	<script src="Script/jquery.js"></script>
	<!--<script src="Script/global.js"></script>
	
	
	<!-- end 修改完毕--------------------------------------->
  </head>
  <!--修订功能js错误 重置模块功能：下拉菜单隐藏、头部幻灯片， 修改时间2014年5月20日11:11:17 修改员：huang-->
  <script type="text/javascript">
	$(function() {
		//我们一开始就隐藏所有的下拉菜单
		$('#dropdown_nav li').find('.sub_nav').hide();
		//当鼠标悬停在主导航链接，我们发现下拉菜单中的相应链接。
		$('#dropdown_nav li').hover(function() {
			$(this).find('.sub_nav').fadeIn(100);
			$(this).find(".sub_link").addClass("cur");
		}, function() {
			$(this).find('.sub_nav').fadeOut(50);
			$(this).find(".sub_link").removeClass("cur");
		});
	});
	</script>
  <script type="text/javascript">
	function mOver()
	{
	document.getElementById("caier").style.display="block";
	}
	
	function mOut()
	{
	document.getElementById("caier").style.display="none";
	}
</script>
  <body>
  <!-- Begin header -->
    <div id="member_info2"></div>
	<div class="head">
	<div class="r1 w1225">
    <div class="le">
        <a href="#" rel="nofollow" class="ico c__sina" title="新浪微博" target="_blank"><img src="css/images/weibo1.png" /></a>
        <a href="javascript:;" rel="nofollow" class="ico c__dimension" onMouseOver="mOver()" onMouseOut="mOut()"><img src="css/images/weixin2.png" /></a>
        <span class="tFav"><a href="javascript:void(0);" rel="nofollow" onclick="AddFavorite(window.location,document.title);" class="f12 c666">收藏</a></span>
        <div id="caier" style=" display:none; width:200px; height:200px;"><img src="css/images/api.png" style="width:100%; height:100%" /></div>
    </div>
  <div class="ri">
            <span class="tLnk2"><a href="car.jsp">购物车</a></span>
         <c:if test="${username == null }">
            <span class="tLnk1"><a href="login.jsp" class="f12">登录</a> <a href="register.jsp" class="f12">注册</a></span>
      	 </c:if>	
      	 <c:if test="${username != null }">
            <span class="tLnk1"><a class="f12">${username }</a><a href="CheckLogout" class="f12">退出</a></span>
      	 </c:if>
      </div>
    </div>
	<div class="r2 w1225">
    	<h1 class="logo w440"><img src="css/images/LOGO.png" /></h1>
        <div class="srh">
            <form id="searchForm" name="searchForm" method="get" action="/shoubiao.html" onsubmit="return checkSearchForm()"><input type="hidden" value="1" name="dow" id="dow">
                <input name="w" id="w" type="text" class="tIptTxt c999 f14" value="搜索 品牌/系列/型号" title="搜索 品牌/系列/型号"/>
                <a class="c__search">搜索</a>
            </form>
        </div>
        <div class="wbPt">
          <span class="tTel" style="font-size:16px;">服务热线：400-888-8888</span>
    </div>
  </div>
  <!-- 模块修改：腕表弹出层，修改内容：从展开修改为收起。修改2014-5-19 15:17:34 修改员：huang-->
<div class="r3 w1225" style="position:relative">
<div class="gSort" id="pop_menu">

	
<!--    <span class="tit" id="pop_gMenu">
    	<b class="ico c__category"></b>
        腕表分类
    </span>-->
    <ul id="dropdown_nav">
			<li>
				<a class="sub_link" href="#">腕表分类</a>
           
			<div class="sub_nav">
			<dl>
            <dt style="position:absolute;">手表品牌</dt>
            <dd>
                                    <a   href="">劳力士</a>
                                    <a   href="">欧米茄</a>
                                    <a   href="">欧古诗丹</a>
                                    <a   href="">天梭</a>
            </dd>
        </dl>
        <dl>
            <dt>男士手表</dt>
            <dd>
                                    <a   href="">送父亲</a>
                                    <a   href="">送老公</a>
                                    <a   href="">送男友</a> 
                                    <a   href="">送亲人</a> 
            </dd>
        </dl>
        <dl>
            <dt>女士手表</dt>
            <dd>
                                    <a   href="">送母亲</a>
                                    <a   href="">送老婆</a>
                                    <a   href="">送女友</a> 
                                    <a   href="">送亲人</a> 
            </dd>
        </dl>
        <dl>
            <dt>特价推荐</dt>
            <dd>
                <a href="" title="雅克利曼手表 Jacques Lemans">雅克利曼</a>
                <a href="" title="玛莎拉蒂手表 Maserati">玛莎拉蒂</a>
                <a href="" title="CK手表 Calvin Klein">CK</a>
                <a href="" title="Guess手表 Guess">Guess</a>
            </dd>
        </dl>
        <dl>
            <dt>款式场合</dt>
            <dd>
                <a href="" title="商务手表">商务休闲</a>
                <a href="" title="正装手表">正装</a>
                <a href="" title="时尚手表">时尚</a>
                <a href="" title="运动手表">运动</a>
                <a href="" title="运动手表">收藏</a>
            </dd>
        </dl>
        <dl>
            <dt>新品上市</dt>
            <dd>
                        <a href="" title="送母亲手表">送母亲</a>
                        <a href="" title="送老婆手表">送老婆</a>
                        <a href="" title="送女友手表">送女友</a>
                  <a href="" title="送闺蜜手表">送闺蜜</a>
            </dd>
        </dl>
				</div>
			</li>
		</ul>
</div>
<!-- end pop_menu-->
<!--end gMune 修改2014-5-19 15:15:00 修改员——huang-->

	<ul class="gNav">
    
      <li><a  title="首页" class="cur"  href="index.jsp">首页</a></li>
                 <li><a href="ShowAllProduct?sap=1" title="本期特价">本期特价</a></li>    	
                 <li><a href="ShowAllProduct?sap=2" title="限时抢购">限时抢购</a></li>
                 <li><a href="boys.jsp" title="男士腕表">男士腕表</a></li>
                 <li><a href="girl.jsp" title="女士腕表">女士腕表</a></li>     
                 <li><a href="jimai.jsp" title="免费寄卖">免费寄卖</a></li>
                 <li><a href="huiyuan.jsp"    style="font-size:15px; color:#ce1739;" title="寻表专区/采购清单"><strong>寻表专区/采购清单</strong></a></li>
    </ul>
</div>
</div>
  </body>
</html>
