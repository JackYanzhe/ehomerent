<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>" target="order.jsp">

<title>My JSP 'Order.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

 <link rel="stylesheet" href="css/bootstrap.css" type="text/css"></link>
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>

 <link rel="stylesheet" href="bootswatch/bootstrap.css" type="text/css"></link>
  <script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="bootswatch/bootstrap.js"></script>
<script type="text/javascript" src="bootswatch/jquery.js"></script>
 
<link rel="stylesheet" href="css/style.css" type="text/css"></link>
<link rel="stylesheet" href="css/reset.css">

<!-- <link rel="stylesheet" href="./issuance-house_files/jquery-ui.css"> -->
<link rel="stylesheet" href="css/common.css">
<!-- <link rel="stylesheet" href="./issuance-house_files/style.css"> -->
<!-- <link rel="stylesheet" href="./issuance-house_files/nivo-default.css" type="text/css"> -->
<!-- <link rel="stylesheet" href="./issuance-house_files/nivo-slider.css" type="text/css" -->

<style type="text/css">
#issuance-DIV {
	width: 68%;
	margin: auto auto;
	background: white;
	position: relative;
	top: 100px;

}
.form-group{
margin: 30px 130px;

}
.guider-publish{
    padding: 2em 0 1.5em;
    text-align: center;
}
h1 {
    font-size: 1.6em;
    color: #ff6401;
}
h2 {
    font-size: .7em;
    margin-top: 1em;
    color: #857d7b;
}
</style>
</head>
<body>
	<!-- 头部 -->
	<div class="header">
		<%@include file="header.jsp"%>
	</div>
	<!-- 中间文件 -->
	 <!-- 发布房源 -->
    <div class="guider-publish">
        <h1>发布你的房源</h1>
        <h2>火炬租房让你的房子快速出租</h2>
    </div>
	<div style="background-image: url('images/backgroundl-16033.jpg'); width:100%; height:500px; ">
		<!--出租表格  -->
		<div id="issuance-DIV">
			<div id="issuanceForm-DIV">
				<form class="form-horizontal" role="form" action="addHouse"
					method="post">
					<div class="form-group">
						<label for="inputPassword3" class="col-sm-2 control-label">小区名称</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="houseadress"
								id="uname" placeholder="请输入小区名称" onblur="checkName(this.value)">
							<span id="msg"></span>
						</div>
					</div>
					<input type="hidden" name="userId" value="${sessionScope.user.userid}">
					<label for="inputPassword3" class="col-sm-2 control-label">房源户型</label>
					<div class="btn-group" data-toggle="buttons">
						<label class="btn btn-outline-primary active"> 
						  <input type="radio" name="housetype" id="option1" checked="" value="单间（公卫）">单间（公卫）
						</label>
						<label class="btn btn-outline-primary"> <input
							type="radio" name="housetype" id="option2" value="单间（独卫）">单间（独卫）</label> 
							 <label class="btn btn-outline-primary"> <input
							type="radio" name="housetype" id="option3" value="一室一厅一卫">一室一厅一卫</label> 
							<label class="btn btn-outline-primary"> <input type="radio"
							name="housetype" id="option3"  value=" 二室一厅一卫"> 二室一厅一卫 </label>
							<!--  </div>  -->
						<!-- 	 <div class="form-group"></div> -->
							  <div data-toggle="buttons"> 
							 </div> 
								 <label class="btn btn-outline-primary"> <input
							type="radio" name="housetype" id="option5"  value="三室一厅一卫">三室一厅一卫</label> 
							 <label class="btn btn-outline-primary"> <input
							type="radio" name="housetype" id="option6" value="三室一厅二卫">三室一厅二卫</label> 
							<label class="btn btn-outline-primary"> <input type="radio"
							name="housetype" id="option7"  value="四室一厅一卫"> 四室一厅一卫 </label>
								
							<label class="btn btn-outline-primary"> <input type="radio"
							name="housetype" id="option8" value="四室一厅两卫"> 四室一厅两卫 </label>
							 <!--  </div> -->
					</div> 
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-primary">下一步</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		
	</div>
	<!-- 底部文件 -->
	<div class="footer">
		<%@include file="footer.jsp"%>
	</div>

</body>
</html>
