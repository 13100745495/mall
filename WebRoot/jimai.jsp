<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>名表商城</title>
<meta name="keywords" content="手表,买手表,喜悦手表网,喜悦手表网官网,名表商城,正品手表，瑞士手表" />
<meta name="description" content="【喜悦手表网官网】：买原装正品世界名表：浪琴、天梭、欧米茄、劳力士等瑞士手表品牌，信用卡分期付款，正品保证，全国联保，终身售后保障！" />
<link href="css/jimai.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/index.css" type="text/css" media="screen, projection" />
<script type="text/javascript" src="Script/index.js"></script>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>

<div class="jimai_box">
	<div class="jimai_slider">
    	<div class="mtsBanner" id="mtsBanner">
    		<ul class="bannerWrap">
            <img src="Images/banner2.jpg" />
                <li style="background-image:url(Images/jimai_01.jpg)" ></li>
    		</ul> 
		</div>
    </div>
    <div class="nav_box">
    	<div class="jnav" id="fixed">
    	<ul class="clearfix">
        	<li><a class="aStyle navBtn01">什么事寄卖</a></li>
            <li><a class="aStyle navBtn02">寄卖的方式与流程</a></li>
            <li><a class="aStyle navBtn03">调价与撒买</a></li>
            <li><a class="aStyle navBtn04">结算与提现</a></li>
        </ul>
    </div>
    </div>
        <div class="content_box" id="floor">
         <div class="jimai_list01 bgcolor01">
         <!---在线寄卖开始---->
        <div class="J_list">
    	<div class="JcontentBox">
        
        <div class="list02">
            <div class="JcList">
            	<ul>
                    <li class="clearfixwatch">
                    	<div class="jclistleft fl"><span>*</span>手表名称：</div>
                        <div class="jclistDown fl">
                        	<input id="watchName" name="watchName" type="text" title="手表名称" class="jclistDownCon" />                            
                        </div>
                    </li>
                    <li class="clearfixwatch">
                    	<div class="jclistleft fl"><span>*</span>手表型号：</div>
                        <div class="jclistDown fl">
                        	<input id="watchNo" name="watchNo" type="text" title="手表型号" class="jclistDownCon" />
                            
                        </div>
                    </li>
                     <li class="clearfixwatch">
                    	<div class="jclistleft fl"><span>*</span>手表图片：</div>
                        <div class="jclistDown fl">
                            <div id="uf" style="width: 40%; display: none"></div>
                            <img id="img" style="width: 100px; height: 100px; display: none" />
                            <input runat="server" id="upfile" type="file" class="jclistDownCon" />               
                        </div>
                    </li>
                    <li class="clearfixwatch">
                    	<div class="jclistleft fl"><span>*</span>销售价：</div>
                        <div class="jclistDown fl">
                        	<input id="salePrice" name="salePrice" type="text" title="销售价" class="jclistDownCon" onblur="checkmoney(this)" />
                        </div>
                    </li>
                    <li class="clearfixwatch">
                    	<div class="jclistleft fl"><span>*</span>姓名：</div>
                        <div class="jclistDown fl">
                        	<input id="customerName" name="customerName" type="text" title="姓名" class="jclistDownCon" />
                        </div>
                    </li>
                    <li class="clearfixwatch">
                    	<div class="jclistleft fl"><span>*</span>手机号：</div>
                        <div class="jclistDown fl">
                        	<input id="tel" name="tel" type="text" class="jclistDownCon" title="手机号" onblur="checkmobile(this)" />
                        </div>
                    </li>
                     <li class="clearfixwatch">
                    	<div class="jclistleft fl"><span>*</span>邮箱：</div>
                        <div class="jclistDown fl">
                        	<input id="email" name="email" type="text" class="jclistDownCon" title="邮箱" onblur="checkemail(this)" />
                        </div>
                    </li>
                     <li class="clearfixwatch">
                    	<div class="jclistleft fl"><span>*</span>其他要求：</div>
                        <div class="jclistDown fl">
                            <textarea id="otherInfo" name="otherInfo" cols="20" rows="2"  class="jclistDownCon" style=" height:100px;"></textarea>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        
        <div class="list02">
        <div class="xuke">
            <input id="checkAgree" runat="server" type="checkbox" checked="checked"/>我已阅读同意<a>《喜悦手表在线收货协议》</a>，如需帮助请致电贵宾专线400-658-6659
        </div>
        <div class="jSubmit">
            <input id="Submit1" type="submit" value="提交信息" class="tjBtn"/>
        </div>
        </div>       
        
        </div>
        
    </div>    
    </div> 
    </div>  
    </div>
    <jsp:include page="foot.jsp"></jsp:include>
</body>
</html>
