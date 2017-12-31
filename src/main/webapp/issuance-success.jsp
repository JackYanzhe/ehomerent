<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<script type="text/javascript">
	   //点击完善租房信息
    function wanshan111(houseId,housetype,houseadress){
/*  alert(houseadress);
        alert(housetype); */
        window.location.href="perfect-house.jsp?houseId="+houseId+"&housetype="+housetype+"&houseadress="+houseadress; 
  

   }

</script>
<style type="text/css">
#success-DIV {
 	width:20%; 
	margin: auto auto;
	background: white;
	position: relative;
	top: 100px;

}
#wanshan{
    width:10%;
    margin: auto auto;
}

</style>
</head>
<body class="publish step1">
	<!-- 头部 -->
	
	<div class="header">
	    <%@include file="header.jsp" %>
	</div>
<!-- 中间文件 -->
 <!-- 发布房源 -->
    <div class="guider-publish">
        <h1>发布你的房源</h1>
        <h2>火炬租房让你的房子快速出租</h2>
    </div>

	<div  style="background-image: url('images/backgroundl-16033.jpg'); width:100%; height:540px;">
	<div id="success-DIV">
	  <img src="images/house-detail/20171115101622.png"></img>
	  <div id="wanshan">
	  <button type="button" class="btn btn-primary btn-lg" onclick="wanshan111(${houseId},'${housetype}','${houseadress}')">完善房源信息</button>
	  </div>
	  <input type="hidden" id="hiddenId" value="${houseId }">
	<div class="progress">
  <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 10%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
</div>
	</div>
	
	</div>
	<!-- 底部文件 -->
	<div class="footer">
	   <%@include file="footer.jsp" %>


</html>
