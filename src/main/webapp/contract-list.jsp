<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'Contract.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="css/bootstrap.css" type="text/css"></link>  
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<link rel="stylesheet" href="css/style.css" type="text/css"></link>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/house-detail/swiper.css"
	type="text/css"></link>
<link rel="stylesheet" href="css/common.css">
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script> 
<script type="text/javascript">
	 	function checking()
		{	
		     var nubmer = $("#checkRate").val();
		     if(isNaN(nubmer)||nubmer<=0||!(/^\d+$/.test(nubmer))){
		    {	 
		       /*  alert("请输入正确的数值,只允许输入整数!");	 */ 
		        return false;		 
		     }
		 } 
		}
		function checkit(){
		   var arr = $("input[type='text']");
		   var f ;
		   $.each(arr,function(i,result){
				/* alert($(this).val()); */
		   		if($(result).val() == ""){
		   			/* alert("页面内容必须填写完整"); */
		   			 f = false;
		   		}else{
		   			 f = true;
		   		}	
		   });
		   
		 return f;
		}
	
</script>
<style type="text/css">
.list{
	margin:0 auto;
	width: 700px;
}
.list tr td{
	height:30px;
	border: solid;
	border-color: #F5F5F5;
	text-align: center;
}

</style>
</head>

<body>
	<!-- 头部 -->
	<div>
		<%@include file="header.jsp"%>
	</div>
	<div style="background-color: #ff6401;width: 100%;height: 1px;"></div>
	<div class="main">
		<div class="wrapper">
			<ol class="breadcrumb">
				<li><a target="_blank" href="homepage.jsp">首页</a>
				</li>
				<li class="active">合同列表</li>
			</ol>
		</div>
		
		<div class="wrapper" style="height: 1000px;">
			
			<table class="list">
				<tr>
					<td>合同编号</td>
					<td>合同时间</td>
					<td>合同状态</td>
					<td>查看详情</td>
				</tr>
				<c:forEach items="${requestScope.cList}" var="contract">
					<tr>
					<td>${contract.contractid}</td>
					<td>${contract.contractsigntime}</td>
					<td>${contract.status}</td>
					<td><a href="contract/findContractsByContractid?contractid=${contract.contractid}">查看详情</a></td>
				</tr>
				</c:forEach>
			</table>	
	</div>	
	</div>
			<!-- 底部文件 -->
			<%@include file="footer.jsp"%>
</body>
</html>
