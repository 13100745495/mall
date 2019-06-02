<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的订单</title>
<link rel="stylesheet" href="css/sxg.css">
<script src="Script/jquery.js"></script>
<script src="Script/saved_resource"></script>
<link rel="stylesheet" href="css/user.css" type="text/css" media="screen, projection">
<script type="text/javascript" src="Script/user.js"></script>
<link rel="stylesheet" href="css/user.css">
</head>
<jsp:include page="head.jsp"></jsp:include>

<div id="main">
<div class="position">
    <a><strong>首页</strong></a>
    <i>&gt;</i>
    <a class="c0e7">我的喜悦手表</a>
    <i>&gt;</i>
    <span>我的订单</span>
</div>
<div class="rightArea">
    <!-- 便利提醒 Begin -->
    <div class="prompt">
        <div class="pr_top">
            <b class="tit">我的订单</b>
            <div id="contact_kf_div" class="u__kf"></div>
        </div>

    </div>
    <!-- 便利提醒 End -->

    <div class="clear"></div>
        <!-- order表单 Begin -->
    <div class="odrTab">
        <div class="ot_top">
            <form action="">
                <div class="left">
                    <select name="datetime">
                        <option selected="selected" value="">所有订单</option>
                        <option value="1">近一个月订单</option>
                        <option value="2">近三个月订单</option>
                        <option value="3">近一年订单</option>
                    </select>
                    <select name="order_status">
                                                <option value="">全部状态</option>
                                                    <option value="1">未确认</option>
                                                    <option value="2">确认中</option>
                                                    <option value="3">已确认</option>
                                                    <option value="4">待发货</option>
                                                    <option value="5">分单发货中</option>
                                                    <option value="6">已发货</option>
                                                    <option value="7">已取消</option>
                                                    <option value="8">待支付</option>
                                            </select>

                </div>
                <div class="right">
                    &lt;订单编号：&gt;<!--订单编号：-->
                    <input type="text" class="txt" name="order_id">
                    <input type="submit" class="lookup" value="查询">
                </div>
            </form>
        </div>
    </div>
    <div class="account">
        <div class="hisOrd">
                <table class="ho_middle" cellpadding="0" cellspacing="0">
                    <tbody><tr class="t">
                        <td class="w120">订单编号</td>
                        <td class="w186">订单商品</td>
                        <td class="w75">收货人</td>
                        <td class="w111">订单金额</td>
                        <td class="w87">下单时间</td>
                        <td class="w87">订单状态</td>
                        <td class="w130">操作</td>
                    </tr>
                                                                <tr class="c">
                            <td class="w120 h70"><a class="c0e7">2014041284656</a></td>
                            <td class="w186 adjust02" style="text-align:left;">
                                  <a><img src="Images/3412_183_24_30_27_27885.jpg"></a>
                               </td>
                            <td class="w75 h70"><font class="c333">小新</font></td>
                            <td class="w111 adjust01">
                                <font class="cb01">￥9500.00</font><br>
                                                                                            </td>
                            <td class="w87 adjust01">
                                <div>2014-04-12 17:03:34</div>
                            </td>
                            <td class="w87 h70"><font class="c888">确认中</font></td>
                            <td class="w130 adjust03">
                                <a class="c0e7">查看</a>
                                <span>|</span>
                                    <a class="c0e7">评论</a>
                                <span>|</span>
                                <a class="c0e7" style="padding: 0px; margin: 0px; display: inline-block; width: 28px;">
                            <div id="bdshare" class="bdshare_t bds_tools get-codes-bdshare" style="float:none;">
                                        <span class="bds_more2">分享</span>
                                    </div>
                                 </a>
                                <span>|</span>
                                    <a class="cb01" href="#">支付</a>
                                    <br>
                                <a class="c0e7" ">申请返修/退换货</a>
                            </td>
                        </tr>
                                                        </tbody></table>
        </div>
    </div>
    <!-- order表单 End -->

    <!-- 翻页 Begin -->
        <!-- 翻页 End -->

</div>

<!-- 左边菜单 Begin -->
<div class="leftArea">
    <div class="leftArea">
    <div class="u__mine"><a style="display: block; height: 100%;"></a></div>
    <div class="floor">
        <div class="t"><i class="u__trade"></i><font class="f_fixed">交易管理</font></div>
        <div class="c">
            <ul>
                <li><i class="u__point"></i><a href="huiyuan.jsp" class="ccf0" title="我的订单" rel="nofollow">我的订单</a></li>
                <li><i></i><a title="我的预售" rel="nofollow">我的预售</a></li>
                <li><i></i><a title="收货地址" rel="nofollow">收货地址</a></li>
                <li><i></i><a title="礼品卡" rel="nofollow">礼品卡</a></li>
                <li style="border:0;"><i></i><a title="代金券/优惠券" rel="nofollow">代金券/优惠券</a></li>
            </ul>
        </div>
    </div>
    <div class="floor">
        <div class="t"><i class="u__datum"></i><font class="f_fixed">账户管理</font></div>
        <div class="c">
            <ul>
                <li><i></i><a title="个人资料" rel="nofollow">个人资料</a></li>
                <li><i></i><a title="修改密码" rel="nofollow">修改密码</a></li>
                <li><i></i><a title="我的收藏" rel="nofollow">我的收藏</a></li>
                <li><i></i><a title="浏览历史" rel="nofollow">浏览历史</a></li>
                <li style="border:0;"><i></i><a title="为我推荐" rel="nofollow">为我推荐</a></li>
            </ul>
        </div>
    </div>
    <div class="floor">
        <div class="t"><i class="u__integral"></i><font class="f_fixed">积分管理</font></div>
        <div class="c">
            <ul>
                <li><i></i><a title="我的积分" rel="nofollow">我的积分</a></li>
                <li><i></i><a title="积分细则" rel="nofollow">积分细则</a></li>
                <li style="border:0;"><i></i><a title="推荐有礼" rel="nofollow">推荐有礼</a></li>
            </ul>
        </div>
    </div>
    <div class="floor">
        <div class="t"><i class="u__service"></i><font class="f_fixed">消息管理</font></div>
        <div class="c">
            <ul>
                <li><i></i><a title="购买咨询" rel="nofollow">购买咨询</a></li>
                <li><i></i><a title="我的评论" rel="nofollow">我的评论</a></li>
                <li style="border:0;"><i></i><a title="我的消息" rel="nofollow">我的消息</a></li>
                <li style="border:0;"><i></i><a title="促销通知" rel="nofollow">促销通知</a></li>
            </ul>
        </div>
    </div>
    <div class="floor">
        <div class="t"><i class="u__star"></i><font class="f_fixed">喜悦手表会员</font></div>
        <div class="c">
            <ul>
                <li><i></i><a title="会员简介" rel="nofollow">会员简介</a></li>
            </ul>
        </div>
    </div>
    <div class="logout">
        <a href="CheckLogout" class="c999">退出登录</a>
    </div>
</div></div>
<!-- 左边菜单 End -->
</div>
<jsp:include page="foot.jsp"></jsp:include>

</body>
</html>
