<%@page import="org.springframework.web.context.request.RequestScope"%>
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

<title>My JSP 'Order.jsp' starting page</title>

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
<script type="text/javascript">
	 $(function(){
	 	
	
	 	
	 	$("input").blur(function(){
	 	$(this).next().empty();
	 	if($(this).val()==""){
	 	
	 		$(this).next().html("内容不能为空!!!!");
	 	}
	 	});
	});
</script>
</head>
<body class="house">
	<!-- 头部 -->
	<div>
		<%@include file="header.jsp"%>
	</div>
	<div style="background-color: #ff6401;width: 100%;height: 1px;"></div>
	<div class="main">
		<div class="wrapper">
			<ol class="breadcrumb">
				<li><a target="_blank" href="homepage.jsp">首页</a></li>
				<li class="active">完善个人信息</li>
			</ol>
			<div class="wrapper" style="height: 1000px;">
				<form class="form-horizontal" role="form" action="updateUser" method="post" onsubmit="chick();" enctype="multipart/form-data">
					<fieldset>

						<div class="form-group">
							<div class="col-sm-9">
								<input type="hidden" class="form-control" id="ticket-name"
									name="userid" value="${user.userid }"  ><span class="alert" style="color:red;"></span>
							</div>
						</div>
						<div class="form-group">
							<label for="ticket-name" class="col-sm-3 control-label">登录名:</label>
							<div class="col-sm-9" >
								<input type="text" class="form-control" id="ticket-name"
									placeholder="请输入登录名" name="loginname" value="${user.loginname }"><span class="alert" style="color:red;"></span>
							</div>
						</div>
						<div class="form-group">
							<label for="ticket-email" class="col-sm-3 control-label">密码:</label>
							<div class="col-sm-9">
								<input type="password" class="form-control" id="ticket-email"
									placeholder="请输入密码" name="password"><span class="alert" style="color:red;"></span>
							</div>
						</div>
					</fieldset>
					<fieldset>

						<div class="form-group">
							<label for="ticket-subject" class="col-sm-3 control-label">真实姓名:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="username"
									id="ticket-subject" placeholder="请输入真是姓名"><span class="alert" style="color:red;"></span>
							</div>
						</div> 
						<div class="form-group">
							<label for="ticket-attachment" class="col-sm-3 control-label">上传头像:
							</label>
							<div class="col-md-9">
								<input type="file" id="ticket-attachment" name="userimage">
							</div>
						</div>
						 <div class="form-group">
							<label for="ticket-subject" class="col-sm-3 control-label">身份证号:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="idcard"
									id="ticket-subject" placeholder="请输入身份证号"><span class="alert" style="color:red;"></span>
							</div>
						</div>
						<div class="form-group">
							<label for="ticket-subject" class="col-sm-3 control-label">电话号码:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="telephone"
									id="ticket-subject" placeholder="请输入电话号码"><span class="alert" style="color:red;"></span>
							</div>
						</div>
						<div class="form-group">
							<label for="ticket-priority" class="col-sm-3 control-label">性别:</label>
							<div class="col-sm-9">
								<select id="ticket-priority" name="gender"
									class="select-ticket-priority">
									<option value="-1">请选择</option>
									<option value="0">男</option>
									<option value="1">女</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="ticket-subject" class="col-sm-3 control-label">地址:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="address"
									id="ticket-subject" placeholder="请输入地址"><span class="alert" style="color:red;"></span>
							</div>
						</div>
						<div class="form-group">
							<label for="ticket-subject" class="col-sm-3 control-label">邮箱:</label>
							<div class="col-sm-9">
								<input type="email" class="form-control" name="email"
									id="ticket-subject" placeholder="请输入邮箱"><span class="alert" style="color:red;"></span>
							</div>
						</div>
						<div class="form-group">
							<label for="ticket-priority" class="col-sm-3 control-label">年龄:</label>
							<div class="col-sm-9">
								<select id="age" onchange="change();" name="age"
									class="select-ticket-priority">
									<option value="-1">请选择</option>
									<option value="70后">70后</option>
									<option value="80后">80后</option>
									<option value="90后">90后</option>
									<option value="00后">00后</option>
									<option value="保密">保密</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="ticket-priority" class="col-sm-3 control-label">学历:</label>
							<div class="col-sm-9">
								<select id="ticket-priority" name="eduexperience"
									class="select-ticket-priority">
									<option value="-1">请选择</option>
									<option value="大专">大专</option>
									<option value="本科">本科</option>
									<option value="硕士">硕士</option>
									<option value="博士">博士</option>
									<option value="保密">保密</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="ticket-priority" class="col-sm-3 control-label">婚姻状况:</label>
							<div class="col-sm-9">
								<select id="ticket-priority" name="marriagestatus"
									class="select-ticket-priority">
									<option value="-1">请选择</option>
									<option value="已婚">已婚</option>
									<option value="未婚">未婚</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="ticket-priority" class="col-sm-3 control-label">所属行业:</label>
							<div class="col-sm-9">
								<select id="ticket-priority" name="worktype"
									class="select-ticket-priority">
									<option value="-1">请选择</option>
									<option value="销售业">销售业</option>
									<option value="金融业">金融业</option>
									<option value="服务业">服务业</option>
									<option value="快递业">快递业</option>
									<option value="自由人士">自由人士</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="ticket-message" class="col-sm-3 control-label">个人描述:</label>
							<div class="col-sm-9">
								<textarea class="form-control" name="personaltag"
									id="ticket-message" rows="5" cols="30" placeholder="请输入个人爱好"></textarea>
							</div>
						</div>

						<!-- <div class="form-group">
							<label for="ticket-attachment" class="col-sm-3 control-label">Attach
								File</label>
							<div class="col-md-9">
								<input type="file" id="ticket-attachment">
								<p class="help-block">
									<em>Valid file type: .jpg, .png, .txt, .pdf. File size
										max: 1 MB</em>
								</p>
							</div>
						</div> -->

						<div class="form-group">
							<div class="col-sm-offset-3 col-sm-9">
								<input type="submit" class="btn btn-primary btn-block" id="submitBtn"
									value="提交">
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>

	</div>


	<!-- 底部文件 -->
	<%@include file="footer.jsp"%>

</body>
</html>
