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
				<li class="active">合同</li>
			</ol>
		</div>
			<div class="wrapper" style="height: 1000px;">
				<div
					style=" width:300px;height:50px;  margin: 0 auto;
							text-align: center;vertical-align: middle;	
									">
					<h1 style="font-size: x-large;color: #FFA220 ">承租人信息</h1>
				</div>
				<form class="form-horizontal" role="form" method="post"
					style="width: 500px;margin: 0 auto; " action="contract/updateContract" onsubmit="return checkit();">
					<input type="hidden" name="houseinfoid" value="<%=request.getParameter("houseinfoid")%>">
					<input type="hidden" name="orderid" value="<%=request.getParameter("orderid")%>">
					<input type="hidden" name="monthpay" value="<%=request.getParameter("monthpay")%>">
					<input type="hidden" name="status" value="0">
					<fieldset>
						<div class="form-group">
							<label for="ticket-subject" class="col-sm-3 control-label">真实姓名:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="renterrealname"
									 placeholder="请输入真是姓名">
							</div>
						</div>
						<div class="form-group">
							<label for="ticket-subject" class="col-sm-3 control-label">身份证号:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="renteridcard"
									 placeholder="请输入身份证号">
							</div>
						</div>
						<div class="form-group">
							<label for="ticket-subject" class="col-sm-3 control-label">电话号码:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="rentertel"
									 placeholder="请输入电话号码"
									>
							</div>
						</div>


						<div
							style=" width:300px;height:50px;  margin: 0 auto;
							text-align: center;vertical-align: middle;	
									">
							<h1 style="font-size: x-large;color: #FFA220 ">起租时间</h1>
						</div>
						<div class="form-group">
							<label for="ticket-subject" class="col-sm-3 control-label">起租时间:</label>
							<div class="col-sm-9">
								<input type="text" id="startDate" class="Wdate" name="startlivetime"
									onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',maxDate:'#F{$dp.$D(\'endDate\')}'})" />
							</div>
						</div>

						<div
							style=" width:300px;height:50px;  margin: 0 auto;
							text-align: center;vertical-align: middle;	
									">
							<h1 style="font-size: x-large;color: #FFA220 ">离开时间</h1>
						</div>
						<div class="form-group">
							<label for="ticket-subject" class="col-sm-3 control-label">离开时间:</label>
							<div class="col-sm-9">
								<input type="text" id="endDate" class="Wdate" name = "leavelivetime"
									onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',minDate:'#F{$dp.$D(\'startDate\')}',maxDate:'2120-10-01'})" />
							</div>
							<span style="color: red;"></span>
						</div>

						 <div
							style=" width:300px;height:50px;  margin: 0 auto;
							text-align: center;vertical-align: middle;	
									">
							<h1 style="font-size: x-large;color: #FFA220 ">服务费</h1>
						</div>
						<div class="form-group">
							<label for="ticket-subject" class="col-sm-3 control-label">服务费:</label>
							<div class="col-sm-9">
								<input type="text" name="insurancemoney" value="99" readonly="readonly">元/月
							</div>
						</div> 


						<div
							style=" width:300px;height:50px;  margin: 0 auto;
							text-align: center;vertical-align: middle;	
									">
							<h1 style="font-size: x-large;color: #FFA220 ">入住人数</h1>
						</div>
						<div class="form-group">
							<label for="ticket-subject" class="col-sm-3 control-label">入住人数:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="hspersonnum"
									id="checkRate" placeholder="请填写您入住的人数" onblur="checking()">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-3 col-sm-9">
								<div class="col-sm-9">
									<input type="submit" class="form-control"
										style="background-color:#FFA220 " value="提交"
										>
								</div>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
	</div>
			<!-- 底部文件 -->
			<%@include file="footer.jsp"%>
</body>
</html>
