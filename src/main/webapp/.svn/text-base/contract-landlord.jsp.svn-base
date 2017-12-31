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
		//检验表单
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
		
		//检验表单，限制提交
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
		//打印合同
		function ptints()
		{
		//alert("\\\\\\");
		var   obj=document.getElementById("print"); //print表示所要打印的区域
		var   tempWin=window.open( "", "", "toolbar=no;scrollbars=no;resizable=no; "); //重新打开一个窗口，
		tempWin.resizeTo(10,10);
		tempWin.moveTo(-10,-10);
		tempWin.document.open( "text/html ");
		tempWin.document.write(obj.innerHTML);
		tempWin.document.close();
		tempWin.print(); //调用打印机
		tempWin.close();//关闭窗口
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
				<li><a target="_blank" href="homepage.jsp">首页</a></li>
				<li class="active">合同</li>
			</ol>
		</div>
		<div class="wrapper" style="height: 1000px;">
			<form class="form-horizontal" role="form" method="post"
				style="width: 500px;margin: 0 auto; "
				action="contract/updateContract" onsubmit="return checkit();">
				<div id = "print">
				<div
					style=" width:300px;height:50px;  margin: 0 auto;
							text-align: center;vertical-align: middle;	
									">
					<h1 style="font-size: x-large;color: #FFA220 ">承租人信息</h1>
				</div>
				<input type="hidden" name="houseinfoid"
					value="${requestScope.houseinfoid}"> <input type="hidden"
					name="contractid" value="${contract.contractid}"> <input
					type="hidden" name="status" value="1">
				<fieldset>
					<div class="form-group">
						<label for="ticket-subject" class="col-sm-3 control-label">真实姓名:</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="renterrealname"
								value="${contract.renterrealname}" readonly="readonly">
						</div>
					</div>
					<div class="form-group">
						<label for="ticket-subject" class="col-sm-3 control-label">身份证号:</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="renteridcard"
								value="${contract.renteridcard}" readonly="readonly">
						</div>
					</div>
					<div class="form-group">
						<label for="ticket-subject" class="col-sm-3 control-label">电话号码:</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="rentertel"
								value="${contract.rentertel}" readonly="readonly">
						</div>
					</div>
					</fieldset>


					<div
						style=" width:300px;height:50px;  margin: 0 auto;
							text-align: center;vertical-align: middle;	
									">
						<h1 style="font-size: x-large;color: #FFA220 ">出租人信息</h1>
					</div>
					<fieldset>

						<div class="form-group">
							<label for="ticket-subject" class="col-sm-3 control-label">真实姓名:</label>
							<div class="col-sm-9">
								<c:if test="${contract.lodgerrealname==null}">
									<input type="text" class="form-control" name="lodgerrealname"
										placeholder="请输入真是姓名">
								</c:if>
								<c:if test="${contract.lodgerrealname!=null}">
									<input type="text" class="form-control" name="lodgerrealname"
										value="${contract.lodgerrealname}" readonly="readonly">
								</c:if>
							</div>
						</div>
						<div class="form-group">
							<label for="ticket-subject" class="col-sm-3 control-label">身份证号:</label>
							<div class="col-sm-9">
								<c:if test="${contract.lodgeridcard==null}">
									<input type="text" class="form-control" name="lodgeridcard"
										placeholder="请输入身份证号">
								</c:if>
								<c:if test="${contract.lodgeridcard!=null}">
									<input type="text" class="form-control" name="lodgeridcard"
										value="${contract.lodgeridcard}" readonly="readonly">
								</c:if>
							</div>
						</div>
						<div class="form-group">
							<label for="ticket-subject" class="col-sm-3 control-label">电话号码:</label>
							<div class="col-sm-9">
								<c:if test="${contract.lodgertel==null}">
									<input type="text" class="form-control" name="lodgertel"
										placeholder="请输入电话号码">
								</c:if>
								<c:if test="${contract.lodgertel!=null}">
									<input type="text" class="form-control" name="lodgertel"
										value="${contract.lodgertel}" readonly="readonly">
								</c:if>
							</div>
						</div>
						</fieldset>

						<div
							style=" width:300px;height:50px;  margin: 0 auto;
							text-align: center;vertical-align: middle;	
									">
							<h1 style="font-size: x-large;color: #FFA220 ">起租时间</h1>
						</div>
						<div class="form-group">
							<label for="ticket-subject" class="col-sm-3 control-label">起租时间:</label>
							<div class="col-sm-9">
								<input type="text" id="startDate" class="form-control"
									name="startlivetime" value="${contract.startlivetime}"
									readonly="readonly" />
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
								<input type="text" id="endDate" class="form-control"
									name="leavelivetime" value="${contract.leavelivetime}"
									readonly="readonly" />
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
								<input type="text" name="insurancemoney"
									value="${contract.insurancemoney}" readonly="readonly">元/月
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
									id="checkRate" value="${contract.hspersonnum}"
									readonly="readonly">
							</div>
						</div>
						</div>
						<fieldset>
						<div class="form-group">
							<div class="col-sm-offset-3 col-sm-9">
								<div class="col-sm-9">
									<input type="submit" class="form-control"
										style="background-color:#FFA220 " value="提交">
								</div>
							</div>
						</div>
					</fieldset>
			</form>
			<div class="form-group" >
				<div class="col-sm-offset-3 col-sm-9" >
					<div class="col-sm-9">
						<button class="form-control"
							style="background-color:#FFA220 " onclick="ptints()" >打印合同</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 底部文件 -->
	<%@include file="footer.jsp"%>
</body>
</html>
