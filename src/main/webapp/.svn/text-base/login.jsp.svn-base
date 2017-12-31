<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'login.jsp' starting page</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="css/pure-min.css" type="text/css"></link>
<!--[if lte IE 8]>
        <link rel="stylesheet" href="//cdn.bootcss.com/pure/0.6.0/grids-responsive-old-ie-min.css">
    <![endif]-->
<!--[if gt IE 8]><!-->
<link rel="stylesheet" href="css/grids-responsive-min.css" type="text/css"></link>
<!--<![endif]-->
<link rel="stylesheet" href="css/font_aod104w65ii6yldi.css" type="text/css"></link>

<link rel="stylesheet" href="css/css.css" type="text/css"></link>


<style>
html,body {
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
}

canvas {
	display: block;
	vertical-align: bottom;
}
</style>

<script type="text/javascript" src="js/s.js"></script>
<!-- <script charset="utf-8" src="#_files/v.htm"></script> -->
<script type="text/javascript" src="js/hm.js"></script>
<script type="text/javascript" src="js/vds.js"></script>
<script type="text/javascript">
	var _vds = _vds || [];
	window._vds = _vds;
	(function() {
		_vds.push([ 'setAccountId', '9e27d0321f661ca1' ]);
		(function() {
			var vds = document.createElement('script');
			vds.type = 'text/javascript';
			vds.async = true;
			vds.src = ('https:' == document.location.protocol ? 'https://'
					: 'http://')
					+ 'assets.growingio.com/vds.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(vds, s);
		})();
	})();
</script>
<style type="text/css">
#YSF-BTN-HOLDER {
	position: fixed;
	max-width: 30px;
	max-height: 120px;
	right: 30px;
	bottom: 0px;
	cursor: pointer;
	overflow: visible;
	filter: alpha(opacity =     100);
	opacity: 1;
	z-index: 9990
}

#YSF-BTN-HOLDER:hover {
	filter: alpha(opacity =     95);
	opacity: .95
}

#YSF-BTN-HOLDER img {
	display: block;
	overflow: hidden;
}

#YSF-BTN-CIRCLE {
	display: none;
	position: absolute;
	right: -5px;
	top: -5px;
	width: auto;
	min-width: 12px;
	height: 20px;
	padding: 0 4px;
	background-color: #f00;
	font-size: 12px;
	line-height: 20px;
	color: #fff;
	text-align: center;
	white-space: nowrap;
	font-family: sans-serif;
	border-radius: 10px;
	z-index: 1;
}

#YSF-BTN-HOLDER.layer-1 #YSF-BTN-CIRCLE {
	top: -30px;
}

#YSF-BTN-HOLDER.layer-2 #YSF-BTN-CIRCLE {
	top: -30px;
}

#YSF-BTN-HOLDER.layer-3 #YSF-BTN-CIRCLE {
	top: -30px;
}

#YSF-BTN-HOLDER.layer-4 #YSF-BTN-CIRCLE {
	top: -30px;
}

#YSF-BTN-HOLDER.layer-5 #YSF-BTN-CIRCLE {
	top: -30px;
}

#YSF-BTN-HOLDER.layer-6 #YSF-BTN-CIRCLE {
	top: -5px;
}

#YSF-BTN-BUBBLE {
	display: none;
	position: absolute;
	left: -274px;
	bottom: 0px;
	width: 278px;
	height: 80px;
	box-sizing: border-box;
	padding: 14px 22px;
	filter: alpha(opacity =     100);
	opacity: 1;
	/* background: url(https://qiyukf.com/sdk//res/img/sdk/bg_floatMsg2x.png)
		no-repeat;
	background: url(https://qiyukf.com/sdk//res/img/sdk/bg_floatMsg.png) 9; */
	background-size: 278px 80px;
	z-index: 1;
}

#YSF-BTN-HOLDER.layer-1 #YSF-BTN-BUBBLE {
	bottom: 9px;
}

#YSF-BTN-HOLDER.layer-2 #YSF-BTN-BUBBLE {
	bottom: 9px;
}

#YSF-BTN-HOLDER.layer-3 #YSF-BTN-BUBBLE {
	bottom: 9px;
}

#YSF-BTN-HOLDER.layer-4 #YSF-BTN-BUBBLE {
	bottom: 9px;
}

#YSF-BTN-HOLDER.layer-5  #YSF-BTN-BUBBLE {
	bottom: 9px;
}

#YSF-BTN-HOLDER.layer-6 #YSF-BTN-BUBBLE {
	bottom: -6px;
}

#YSF-BTN-BUBBLE:hover {
	filter: alpha(opacity =     95);
	opacity: .95
}

#YSF-BTN-CONTENT {
	height: 45px;
	padding: 0;
	white-space: normal;
	word-break: break-all;
	text-align: left;
	font-size: 14px;
	line-height: 1.6;
	color: #222;
	overflow: hidden;
	z-index: 0;
}

#YSF-BTN-ARROW {
	display: none;
}

#YSF-BTN-CLOSE {
	position: absolute;
	width: 15px;
	height: 15px;
	right: 4px;
	top: -3px;
	filter: alpha(opacity =     90);
	opacity: .9;
	cursor: pointer;
	background: url(https://qiyukf.com/sdk//res/img/sdk/btn-close.png)
		no-repeat;
	z-index: 1
}

#YSF-BTN-CLOSE:hover {
	filter: alpha(opacity =     100);
	opacity: 1;
}

#YSF-PANEL-CORPINFO.ysf-chat-layeropen {
	width: 511px;
	height: 470px;
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, .15);
}

#YSF-PANEL-CORPINFO {
	position: fixed;
	bottom: 0px;
	right: 20px;
	width: 0;
	height: 0;
	z-index: 99999;
}

#YSF-PANEL-INFO.ysf-chat-layeropen {
	width: 311px;
	height: 470px;
	filter: alpha(opacity =     100);
	opacity: 1;
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, .15);
}

#YSF-PANEL-INFO {
	position: fixed;
	bottom: 0px;
	right: 20px;
	width: 0px;
	height: 0px;
	filter: alpha(opacity =     0);
	opacity: 0;
	z-index: 99999;
}

#YSF-PANEL-INFO .u-btn {
	background-color: #F2A654
}

#YSF-CUSTOM-ENTRY {
	background-color: #F96868;
}

#YSF-CUSTOM-ENTRY-0 {
	position: relative;
	bottom: 24px;
	width: auto;
	background-color: #F2A654;
	box-shadow: 0px 6px 10px 0px rgba(0, 0, 0, 0.25);
}

#YSF-CUSTOM-ENTRY-1 {
	position: relative;
	bottom: 24px;
	width: auto;
	background-color: #F2A654;
	border-radius: 14px;
	box-shadow: 0px 6px 10px 0px rgba(0, 0, 0, 0.25);
}

#YSF-CUSTOM-ENTRY-2 {
	position: relative;
	bottom: 24px;
	width: auto;
	background-color: #F2A654;
	border-radius: 0;
	box-shadow: 0px 6px 10px 0px rgba(0, 0, 0, 0.25);
}

#YSF-CUSTOM-ENTRY-3 {
	position: relative;
	bottom: 24px;
	width: auto;
	background-color: #F2A654;
	border-radius: 50%;
	box-shadow: 0px 6px 10px 0px rgba(0, 0, 0, 0.25);
}

#YSF-CUSTOM-ENTRY-4 {
	position: relative;
	bottom: 24px;
	width: auto;
	background-color: #F2A654;
	border-radius: 50%;
	box-shadow: 0px 6px 10px 0px rgba(0, 0, 0, 0.25);
}

#YSF-CUSTOM-ENTRY-5 {
	position: relative;
	bottom: 24px;
	width: auto;
	background-color: #F2A654;
	border-radius: 5px;
	box-shadow: 0px 6px 10px 0px rgba(0, 0, 0, 0.25);
}

#YSF-CUSTOM-ENTRY-6 {
	position: relative;
	bottom: 0px;
	width: auto;
	background-color: #F2A654;
	border-radius: 5px;
	border-bottom-left-radius: 0;
	border-bottom-right-radius: 0;
}

#YSF-CUSTOM-ENTRY-0 img {
	max-width: 300px;
	height: auto;
}

#YSF-CUSTOM-ENTRY-1 img {
	width: 28px;
	height: auto;
}

#YSF-CUSTOM-ENTRY-2 img {
	width: 58px;
	height: auto;
}

#YSF-CUSTOM-ENTRY-3 img {
	width: 60px;
	height: auto;
}

#YSF-CUSTOM-ENTRY-4 img {
	width: 60px;
	height: auto;
}

#YSF-CUSTOM-ENTRY-5 img {
	width: 60px;
	height: auto;
}

#YSF-CUSTOM-ENTRY-6 img {
	width: 115px;
	height: auto;
}

#YSF-IFRAME-LAYER {
	border: 0;
	outline: none;
}

.ysf-online-invite-wrap {
	z-index: 10001;
	position: fixed;
	_position: absolute;
	top: 50%;
	left: 50%;
}

.ysf-online-invite {
	position: relative;
	top: -50%;
	left: -50%;
	cursor: pointer;
}

.ysf-online-invite img {
	display: block;
	width: 250px;
}

.ysf-online-invite .ysf-online-invite-img {
	width: 100%;
	height: 100%
}

.ysf-online-invite .text {
	position: absolute;
	top: -11px;
	left: 0;
	right: 0;
	overflow: hidden;
	margin: 36px 20px 0 67px;
	line-height: 140%;
	color: #526069;
	font-size: 14px;
	font-family: "Microsoft YaHei", "微软雅黑", tahoma, arial, simsun, "宋体";
	text-align: left;
	white-space: normal;
	word-wrap: break-word;
}

.ysf-online-invite .close {
	position: absolute;
	top: -6px;
	right: -6px;
	width: 32px;
	height: 32px;
	background: url(https://qiyukf.com/sdk/res/img/invite-close.png)
		no-repeat;
	cursor: pointer;
}

.ysf-online-invite .close.custom {
	top: -16px;
	right: -16px;
}
</style>
<style>
html #hm_t_undefined .hm-t-map-card {
	position: fixed;
	right: 52px;
	bottom: 44px;
	border: 1px solid #c7c7c7;
	z-index: 99998;
	white-space: normal;
	font-size: 14px;
	line-height: 17px;
	overflow: hidden;
	color: #fff;
	background: #404040;
	_position: absolute;
}

html #hm_t_undefined .hm-t-map-card-title {
	border-bottom: 2px solid #f0f0f0;
	height: 23px;
	padding-top: 6px;
	color: #000;
	font-weight: bold;
	text-align: center;
	background-color: #f1f1f1;
	background: linear-gradient(top, #f1f1f1 0%, #e6e6e6 100%);
	background: -webkit-linear-gradient(top, #f1f1f1 0%, #e6e6e6 100%);
	background: -moz-linear-gradient(top, #f1f1f1 0%, #e6e6e6 100%);
	background: -ms-linear-gradient(top, #f1f1f1 0%, #e6e6e6 100%);
}

html #hm_t_undefined .hm-t-map-card-info {
	font-size: 12px;
	background-color: #fff;
	color: #333;
}

html #hm_t_undefined .hm-t-map-card-info table {
	font-size: 12px;
}

html #hm_t_undefined .hm-t-map-card-info table td {
	width: 65px;
}

html #hm_t_undefined .hm-t-map-card-info .hm-t-map-card-info-table-content
	{
	white-space: normal;
	word-break: break-all;
	word-wrap: break-word;
	width: auto;
}

html #hm_t_undefined .hm-t-map-card-info .hm-t-map-card-info-table-index
	{
	width: 43px;
	padding-left: 5px;
}

html 
#hm_t_undefined .hm-t-map-card-map-link {
	height: 30px;
	font-size: 12px;
	color: #0082cb;
	background-color: #f9f9f9;
	background: linear-gradient(top, #f9f9f9 0%, #ececec 100%);
	background: -webkit-linear-gradient(top, #f9f9f9 0%, #ececec 100%);
	background: -moz-linear-gradient(top, #f9f9f9 0%, #ececec 100%);
	background: -ms-linear-gradient(top, #f9f9f9 0%, #ececec 100%);
	text-align: center;
}

:root .hm-t-map-card-map-link {
	background-color: #f9f9f9;
}

html #hm_t_undefined .hm-t-map-card-map-link img {
	margin: 5px 5px 0 0;
	vertical-align: bottom;
	*vertical-align: text-bottom;
}

html #hm_t_undefined .hm-t-map-card-bug-map-link {
	cursor: pointer;
}

html #hm_t_undefined .hm-t-unfold-map-card {
	position: fixed;
	right: 2px;
	z-index: 99998;
	display: block;
	width: 40px;
	text-align: center;
	white-space: normal;
	text-decoration: none;
	_position: absolute;
	color: #fff;
	background: #666;
	cursor: pointer;
	height: '37px';
	font-size: 14px;
	line-height: 17px;
	padding-top: 3px;
	height: 37px !important;
}

html #hm_t_undefined.hm-t-container .hm-t-map-card-side-arrow {
	right: 45px;
}
#error {
	margin:10px;
	color: red;
}
#msg{
	margin:10px;
	color: green;
}
</style>
<style>
html #hm_t_undefined .hm-t-map-card,html #hm_t_undefined .hm-t-map-card-side-arrow,html #hm_t_undefined .hm-t-unfold-map-card
	{
	_top: expression(eval(document.documentElement.scrollTop +(  
		  document.documentElement.clientHeight ||    
		document.body.clientHeight) -this.offsetHeight-2-0 ) );
}
</style>
</head>

<body>
	<div class="con-reg" id="login-back"
		style="background-image: url(&quot;images/backgroundl-16033.jpg&quot;);">
		<div class="login-layer clearfix">
			<div class="logo-wrapper">
				 <a href="#" class="logo">e家客</a> 
			</div>

			<div class="form-wrapper">
				<h1 class="title">登录到魔方公寓</h1>
				<form action="login" method="post">
					<p class="ctrl-group">
						<input class="form-control" name="loginname" placeholder="登录名"
							type="text"> <i class="if if-user ctrl-tip"></i>
					</p>

					<p class="ctrl-group">
						<input class="form-control" name="password" placeholder="密码"
							type="password"> <i class="if if-lock ctrl-tip"></i>
					</p>
					<div class="reg-alert hidden ">
						<p class="message"></p>
					</div>
					<div id="error">${error}</div>
					<div id="msg">${msg}</div>
					<div class="reg-full-btn">
						<button class="pure-button btn-primary" type="submit">登 录</button>
					</div>
					<div class="setting-info">
						<a class="float-right" href="regist.jsp">注册新帐号</a>
						<a href="#"><i  class="if if-ask"></i> 找回密码</a>
					</div>
				</form>
			</div>
		</div>
		<div class="footer-layer">
			<ul class="product-list">
				<li><a href="#"><i
						class="if if-android"></i>
					<p>Android</p>
				</a></li>
				<li><a href="#"><i
						class="if if-ios"></i>
					<p>Iphone</p>
				</a></li>
				<li><a href="http://weibo.com/u/3907424721" target="_blank"><i
						class="if if-weibo"></i>
					<p>关注微博</p>
				</a></li>
				<li class="webchat"><a href="#"><i class="if if-weixin"></i>
					<p>关注微信</p>
				</a> <!-- <img src="#_files/wechat-hover.png" height="150"></li> -->
			</ul>
			<p class="login-link">
				<a href="#">反馈建议</a> | <a href="#">官方活动</a> | <a href="#">社交关注</a> |
				<a href="#">应用下载</a> | <a href="#">侵权投诉</a> | <a href="#">Complaint
					Guidelines</a>
			</p>
			<p class="login-copy">Copyright © 2016 上海魔域投资管理有限公司 |
				沪ICP备15051961号</p>
		</div>
	</div>
	<input
		value="images/backgroundl-16031.jpg 
				images/backgroundl-16032.jpg 
				images/backgroundl-16033.jpg"
		id="txtBack" type="hidden">

	<script src="files/jquery"></script>


	<script src="files/login"></script>

	<script>
		$(function() {
			var app = new LoginApp();
		});
	</script>

	<script>
		var _hmt = _hmt || [];
		(function initAnalysis() {
			var hm = document.createElement("script");
			hm.src = "//hm.baidu.com/hm.js?d9eca50d5f671140aca08de8f94e3543";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s);
		})();
	</script>
	<script type="text/javascript" src="js/b47ba57cc19d419751fc77c2fcc4fc62.js" defer="defer" async="">
	</script>
	<!-- <div
		style="top: 0px; left: 0px; visibility: hidden; position: absolute; width: 1px; height: 1px;">
		<iframe style="height:0px; width:0px;" src="#_files/delegate.htm"></iframe>
	</div> -->
	<!-- <iframe src="#_files/box.htm" id="YSF-IFRAME-DATA"
		style="width: 0px; height: 0px; border: 0px none; display: none; outline: medium none;"></iframe> -->
	<div class="layer-1" id="YSF-BTN-HOLDER">
		<!-- <div id="YSF-CUSTOM-ENTRY-1">
			<img src="#_files/1.png">
		</div> -->
		<span id="YSF-BTN-CIRCLE"></span>
		<div id="YSF-BTN-BUBBLE">
			<div id="YSF-BTN-CONTENT"></div>
			<span id="YSF-BTN-ARROW"></span><span id="YSF-BTN-CLOSE"></span>
		</div>
	</div>
	<div id="hm_t_undefined" class="hm-t-container">
		<div class="hm-t-map-card"
			style="width: 240px; display: none; bottom: 2px;">
			<div class="hm-t-map-card-title">地图名片</div>
			<div class="hm-t-map-card-info">
				<table>
					<tbody>
						<tr>
							<td class="hm-t-map-card-info-table-index">名称：</td>
							<td class="hm-t-map-card-info-table-content">魔方（中国）生活服务集团</td>
						</tr>
						<tr>
							<td class="hm-t-map-card-info-table-index">地址：</td>
							<td class="hm-t-map-card-info-table-content">上海市闵行区虹梅路3125号</td>
						</tr>
						<tr>
							<td class="hm-t-map-card-info-table-index">电话：</td>
							<td class="hm-t-map-card-info-table-content">4000863650</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div id="hm_t_map_18853" class="hm-t-map-card-map"
				style="width: 240px; height: 180px;">
				<iframe style="width: 100%; height: 100%;" scrolling="no"
					src="about:blank" frameborder="0"></iframe>
			</div>
			<div class="hm-t-map-card-map-link" style="width: 240px;">
				<img src="images/bigMapIcon_search.jpg"><a target="_blank"
					class="hm-t-map-card-bug-map-link">查看大图</a>
			</div>
		</div>
		<div class="hm-t-side-arrow hm-t-map-card-side-arrow"
			style="display: none;"></div>
		<div style="bottom: 2px;"
			class="hm-t-unfold-button hm-t-unfold-button-txt hm-t-unfold-map-card"
			title="地图名片">地图名片</div>
	</div>
</body>

</body>
</html>
