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

<title>My JSP 'regist.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link rel="stylesheet" href="css/as-code.css" type="text/css"></link>
<script type="text/javascript" src="js/b47ba57cc19d419751fc77c2fcc4fc62.js"></script>
<link rel="stylesheet" href="css/css.css" type="text/css"></link>
<link rel="stylesheet" href="css/font_aod104w65ii6yldi.css" type="text/css"></link>
<link rel="stylesheet" href="css/grids-responsive-min.css" type="text/css"></link>
<link rel="stylesheet" href="css/hideShowPassword.css" type="text/css"></link>

<script type="text/javascript" src="js/hm.js"></script>
<link rel="stylesheet" href="js/ion.css" type="text/css"></link>


<link rel="stylesheet" href="js/pure-min.css" type="text/css"></link>
<script type="text/javascript" src="js/s.js"></script>
<script type="text/javascript" src="js/vds.js"></script>
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<style type="text/css">
	.msg1{
		color: red;
		}
	.msg2{
		color: green;
		}
	
</style>
<script type="text/javascript">
   function t(){
  		
   		$.getJSON("finduser?loginname="+ $("#loginname").val(),function(result){
				$("#msg").html(result.msg);
				//alert(result.msg);
				  if(result.msg=="*用户名可用!!!"){
					$("#msg").addClass("msg2");
				}
			});
	 };
   
  
	
	
</script>
</head>

<body>
	<div class="con-reg" id="login-back"
		style="background-image: url(&quot;images/backgroundl-16032.jpg&quot;);">
		<div class="login-layer reg-layer">
			<div class="logo-wrapper">
				<a href="http://www.52mf.com.cn/" class="logo">魔方公寓</a>
			</div>

			<div class="form-wrapper">
				<h1 class="title">注册新账号</h1>
				
				<form action="regist" method="post" id="formReg">
				
					<p class="ctrl-group" id="w">
						<label id="q">用户名</label> 
						<input class="form-control" onblur="t()" id="loginname" name="loginname" placeholder="用户名" type="text">
						
					</p>
					<span id="msg" class="msg1"></span>
					<p class="ctrl-group">
						<label>密码</label> <input class="form-control"
							id="password" name="password" placeholder="密码" type="text">
					</p>
					<div class="reg-full-btn">
						<button class="pure-button btn-success" type="submit">立即注册</button>
					</div>
					<div class="setting-info">
						<a class="float-right"
							href="http://www.52mf.com.cn/Account/Feedback">意见反馈</a> 已有帐号？<a
							href="login.jsp">立即登录</a>

					</div>
				</form>

			</div>

		</div>

		<div class="footer-layer reg-footer">
			<ul class="product-list">
				<li><a href="#"><i
						class="if if-android"></i>
					<p>Android</p>
				</a></li>
				<li><a href="#"><i
						class="if if-ios"></i>
					<p>Iphone</p>
				</a></li>
				<li><a href="#" target="_blank"><i
						class="if if-weibo"></i>
					<p>关注微博</p>
				</a></li>
				<li class="webchat"><a href="#"><i class="if if-weixin"></i>
					<p>关注微信</p>
				</a> <img
					src="images/wechat-hover.png"
					height="150"></li>
			</ul>
			<p class="login-link">
				<a href="#">反馈建议</a> | <a href="#">官方活动</a> | <a href="#">社交关注</a> |
				<a href="#">应用下载</a> | <a href="#">侵权投诉</a> | <a href="#">Complaint
					Guidelines</a>
			</p>
			<p class="login-copy">Copyright © 2016 上海魔域投资管理有限公司 |
				沪ICP备15051961号</p>
		</div>

		<canvas class="particles-js-canvas-el"
			style="width: 100%; height: 100%;" width="1920" height="945"></canvas>
	</div>

	<input
		value="images/backgroundl-16033.jpg images/backgroundl-16032.jpg images/backgroundl-16031.jpg"
		id="txtBack" type="hidden">


	 <script
		src="files/jquery"></script>
 

	<script type="text/javascript" src="js/hideShowPassword.js"></script>
	<script type="text/javascript" src="js/modernizr.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/ion.js"></script>
	<script
		src="files/login"></script>

	<script>
		$(function() {
			var app = new RegApp();
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
	<script
		src="js/b47ba57cc19d419751fc77c2fcc4fc62.js"
		defer="defer" async=""></script>


	<!--  <div
		style="top: 0px; left: 0px; visibility: hidden; position: absolute; width: 1px; height: 1px;">
		<iframe style="height:0px; width:0px;"
			src="htm/delegate.htm"></iframe>
	</div> 
	 <iframe
		src="htm/box.htm"
		id="YSF-IFRAME-DATA"
		style="width: 0px; height: 0px; border: 0px none; display: none; outline: medium none;"></iframe>  -->
	<div class="layer-1" id="YSF-BTN-HOLDER">
		<div id="YSF-CUSTOM-ENTRY-1">
			<img
				src="images/1.png">
		</div>
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
				<img
					src="images/bigMapIcon.jpg"><a
					target="_blank" class="hm-t-map-card-bug-map-link">查看大图</a>
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
