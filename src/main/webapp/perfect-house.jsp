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

<title>My JSP 'Order.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href="css/style.css" type="text/css"></link>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/common.css">

<script type="text/javascript" src="bootswatch/jquery.js"></script>
<script type="text/javascript" src="bootswatch/bootstrap.js"></script>
<link rel="stylesheet" href="bootswatch/bootstrap.css" type="text/css"></link>

<style type="text/css">
html,body {
	margin: 0;
	padding: 0;
}

#main {
	margin: 0;
	padding: 40px;
	width: 100%;
	background-image: url("images/backgroundl-16033.jpg");
}

#context {
	margin: 0 auto;
	padding: 50px 60px;
	width: 40%;
	height: 1000px;
	background-color: white;
}

.form-group {
	margin: 5px 50px;
}

.form-label {
	margin: 5px 20px;
}

.pageButton {
	margin: 20px auto;
	width: 30px;
}

.fileInputContainer {
	height: 100px;
	position: relative;
	width: 100px;
	border: solid 1px #ff6401
}

.fileInput {
	height: 100px;
	overflow: hidden;
	font-size: 100px;
	position: absolute;
	right: 0;
	top: 0;
	opacity: 0;
	filter: alpha(opacity = 0);
	cursor: pointer;
}

#div-upload {
	padding: 5px;
	width: 100%;
	height: 120px;
	border: solid 1px #ff6401;
}

#img-upload {
	width: 110px;
	height: 110px;
	border: solid 1px gray;
}
</style>

<script type="text/javascript">
	function goNextPage() {
		$("#div-prePage").css("display", "none");
		$("#button-nextPage").css("display", "none");
		$("#div-nextPage").css("display", "block");
		$("#button-prePage").css("display", "block");
		$("#button-save").css("display", "block");
		$("#form-upload").css("display", "block");
	}
	function goPrePage() {
		$("#div-prePage").css("display", "block");
		$("#button-nextPage").css("display", "block");
		$("#div-nextPage").css("display", "none");
		$("#button-prePage").css("display", "none");
		$("#button-save").css("display", "none");
		$("#form-upload").css("display", "none");
	}
	function goSubmit(){
		 $("#form-add").submit(); 
	}
</script>
</head>
<body>
	<!-- 头部 -->
	<div>
		<%@include file="header.jsp"%>
	</div>

	<div style="background-color: #ff6401;width: 100%;height: 1px;"></div>
	<div id="main">
		<div id="context">
			<form id="form-add" action="updateHouse" method="post">
				<div id="div-prePage" style="display:block">
					<legend>出租信息</legend>
					<label class="form-label" for="rentMoney">租金(元)</label>
					<div class="form-group">
						<input type="text" class="form-control" id="rentMoney"
							name="monthpay" placeholder="输入租金">
					</div>
					<label class="form-label">出租方式</label>
					<div class="form-group" data-toggle="buttons">
						<label class="btn btn-outline-primary" aria-pressed="true">
							<input type="radio" name="renttype" id="rentType0" checked=""
							value="月租">
							&nbsp;&nbsp;&nbsp;&nbsp;月租&nbsp;&nbsp;&nbsp;&nbsp; </label> <label
							class="btn btn-outline-primary" aria-pressed="true"> <input
							type="radio" name="renttype" id="rentType1" value="年租">
							&nbsp;&nbsp;&nbsp;&nbsp;年租&nbsp;&nbsp;&nbsp;&nbsp; </label>
					</div>

					<label class="form-label">付款方式</label>
					<div class="form-group" data-toggle="buttons">
						<label class="btn btn-outline-primary" aria-pressed="true">
							<input type="radio" name="tpaytype" id="payType0" checked=""
							value="押一付一"> 押一付一 </label> <label
							class="btn btn-outline-primary" aria-pressed="true"> <input
							type="radio" name="tpaytype" id="payType1" value="押三付一">
							押三付一 </label> <label class="btn btn-outline-primary" aria-pressed="true">
							<input type="radio" name="tpaytype" id="payType2" value="年付">
							&nbsp;&nbsp;&nbsp;&nbsp;年付&nbsp;&nbsp;&nbsp;&nbsp; </label>
					</div>

					<legend>房屋信息</legend>
					<label class="form-label" for="houseArea">房屋室内面积</label>
					<div class="form-group">
						<input type="text" class="form-control" name="acreage"
							placeholder="输入房屋室内面积">
					</div>

					<label class="form-label">装修程度</label>
					<div class="form-group" data-toggle="buttons">
						<label class="btn btn-outline-primary" aria-pressed="true">
							<input type="radio" name="hsdecorationrank" id="decorationRent0"
							checked="" value="简装">
							&nbsp;&nbsp;&nbsp;&nbsp;简装&nbsp;&nbsp;&nbsp;&nbsp; </label> <label
							class="btn btn-outline-primary" aria-pressed="true"> <input
							type="radio" name="hsdecorationrank" id="decorationRent1"
							value="中装">
							&nbsp;&nbsp;&nbsp;&nbsp;中装&nbsp;&nbsp;&nbsp;&nbsp; </label> <label
							class="btn btn-outline-primary" aria-pressed="true"> <input
							type="radio" name="hsdecorationrank" id="decorationRent2"
							value="精装"> &nbsp;&nbsp;&nbsp;&nbsp;精装
							&nbsp;&nbsp;&nbsp;&nbsp; </label>
					</div>

					<label class="form-label">房屋朝向</label>
					<div class="form-group" data-toggle="buttons">
						<label class="btn btn-outline-primary" aria-pressed="true">
							<input type="radio" name="hsdecoration" id="decoration0"
							checked="" value="东">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;东&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</label> <label class="btn btn-outline-primary" aria-pressed="true">
							<input type="radio" name="hsdecoration" id="decoration1"
							value="南">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;南&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</label> <label class="btn btn-outline-primary" aria-pressed="true">
							<input type="radio" name="hsdecoration" id="decoration2"
							value="西">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;西&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp; </label> <label class="btn btn-outline-primary"
							aria-pressed="true"> <input type="radio"
							name="hsdecoration" id="decoration3" value="北">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;北&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp; </label>
					</div>

					<label class="form-label" for="floor">楼层</label>
					<div class="form-group">
						<input type="text" class="form-control" id="floor" name="floor"
							placeholder="输入楼层">
					</div>

					<label class="form-label" for="personNum">可入住人数</label>
					<div class="form-group">
						<input type="text" class="form-control" id="personNum"
							name="hspersonnum" placeholder="输入可入住人数">
					</div>

					<label class="form-label" for="house.location">详细位置信息</label>
					<div class="form-group">
						<input type="text" class="form-control" id="location"
							name="location" placeholder="输入详细位置信息">
					</div>

					<label class="form-label" for="housingTime">交房年份</label>
					<div class="form-group">
						<select class="form-control" id="housingtime" name="housingtime">
							<option value="1990">1990</option>
							<option value="1991">1991</option>
							<option value="1992">1992</option>
							<option value="1993">1993</option>
							<option value="1994">1994</option>
							<option value="1995">1995</option>
							<option value="1996">1996</option>
							<option value="1997">1997</option>
							<option value="1998">1998</option>
							<option value="1999">1999</option>
							<option value="2000">2000</option>
							<option value="2001">2001</option>
							<option value="2002">2002</option>
							<option value="2003">2003</option>
							<option value="2004">2004</option>
							<option value="2005">2005</option>
							<option value="2006">2006</option>
							<option value="2007">2007</option>
							<option value="2008">2008</option>
							<option value="2009">2009</option>
							<option value="2010">2010</option>
							<option value="2011">2011</option>
							<option value="2012">2012</option>
							<option value="2013">2013</option>
							<option value="2014">2014</option>
							<option value="2015">2015</option>
							<option value="2016">2016</option>
							<option value="2017">2017</option>
						</select>
					</div>

				</div>

				<div id="div-nextPage" style="display:none">
					<label class="form-label">租金包含</label>
					<div class="form-group" data-toggle="buttons">
						<label class="btn btn-outline-primary"> <input
							type="checkbox" name="charge.electric" value="1">
							&nbsp;&nbsp;&nbsp;&nbsp;电费&nbsp;&nbsp;&nbsp;&nbsp; </label> <label
							class="btn btn-outline-primary"> <input type="checkbox"
							name="charge.water" value="1">
							&nbsp;&nbsp;&nbsp;&nbsp;水费&nbsp;&nbsp;&nbsp;&nbsp; </label> <label
							class="btn btn-outline-primary"> <input type="checkbox"
							name="charge.property" value="1">
							&nbsp;&nbsp;物业费&nbsp;&nbsp; </label> </label> <label
							class="btn btn-outline-primary"> <input type="checkbox"
							name="charge.hygiene" value="1">
							&nbsp;&nbsp;卫生费&nbsp;&nbsp; </label> <label
							class="btn btn-outline-primary"> <input type="checkbox"
							name="charge.heating" value="1">
							&nbsp;&nbsp;取暖费&nbsp;&nbsp; </label> </label> <label
							class="btn btn-outline-primary"> <input type="checkbox"
							name="charge.parkinglot" value="1">
							&nbsp;&nbsp;车位费&nbsp;&nbsp; </label> <label
							class="btn btn-outline-primary"> <input type="checkbox"
							name="charge.wificharge" value="1">
							&nbsp;&nbsp;宽带费&nbsp;&nbsp; </label> </label> <label
							class="btn btn-outline-primary"> <input type="checkbox"
							name="charge.cabletv" value="1">&nbsp;&nbsp;电视费&nbsp;&nbsp;
						</label>
					</div>

					<label class="form-label">家具包含</label>
					<div class="form-group" data-toggle="buttons">
						<label class="btn btn-outline-primary"> <input
							type="checkbox" name="furniture.bed" value="1">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;床&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</label> <label class="btn btn-outline-primary"> <input
							type="checkbox" name="furniture.landlordask" value="1">
							&nbsp;&nbsp;&nbsp;&nbsp;沙发&nbsp;&nbsp;&nbsp;&nbsp; </label> <label
							class="btn btn-outline-primary"> <input type="checkbox"
							name="furniture.wardrobe" value="1">
							&nbsp;&nbsp;&nbsp;&nbsp;衣柜&nbsp;&nbsp;&nbsp;&nbsp; </label> </label> <label
							class="btn btn-outline-primary"> <input type="checkbox"
							name="furniture.chair" value="1">
							&nbsp;&nbsp;&nbsp;&nbsp;椅子&nbsp;&nbsp;&nbsp;&nbsp; </label> <label
							class="btn btn-outline-primary"> <input type="checkbox"
							name="furniture.desk" value="1">
							&nbsp;&nbsp;&nbsp;&nbsp;书桌&nbsp;&nbsp;&nbsp;&nbsp; </label> </label> <label
							class="btn btn-outline-primary"> <input type="checkbox"
							name="furniture.teatable" value="1">
							&nbsp;&nbsp;&nbsp;&nbsp;茶几&nbsp;&nbsp;&nbsp;&nbsp; </label> <label
							class="btn btn-outline-primary"> <input type="checkbox"
							name="furniture.diningtable" value="1">
							&nbsp;&nbsp;&nbsp;&nbsp;餐桌&nbsp;&nbsp;&nbsp;&nbsp; </label> </label> <label
							class="btn btn-outline-primary"> <input type="checkbox"
							name="furniture.cupboard" value="1">&nbsp;&nbsp;&nbsp;&nbsp;橱柜&nbsp;&nbsp;&nbsp;&nbsp;
						</label> <label class="btn btn-outline-primary"> <input
							type="checkbox" name="furniture.kitchenware" value="1">&nbsp;&nbsp;&nbsp;&nbsp;厨具&nbsp;&nbsp;&nbsp;&nbsp;
						</label>
					</div>

					<label class="form-label">家电包含</label>
					<div class="form-group" data-toggle="buttons">
						<label class="btn btn-outline-primary"> <input
							type="checkbox" name="electric.television" value="1">
							&nbsp;&nbsp;&nbsp;&nbsp;电视&nbsp;&nbsp;&nbsp;&nbsp; </label> <label
							class="btn btn-outline-primary"> <input type="checkbox"
							name="electric.refrigerator" value="1">
							&nbsp;&nbsp;&nbsp;&nbsp;冰箱&nbsp;&nbsp;&nbsp;&nbsp; </label> <label
							class="btn btn-outline-primary"> <input type="checkbox"
							name="electric.washingmachine" value="1">
							&nbsp;&nbsp;洗衣机&nbsp;&nbsp; </label> </label> <label
							class="btn btn-outline-primary"> <input type="checkbox"
							name="electric.airconditioner" value="1">
							&nbsp;&nbsp;&nbsp;&nbsp;空调&nbsp;&nbsp;&nbsp;&nbsp; </label> <label
							class="btn btn-outline-primary"> <input type="checkbox"
							name="electric.wifi" value="1">
							&nbsp;&nbsp;&nbsp;&nbsp;宽带&nbsp;&nbsp;&nbsp;&nbsp; </label> </label> <label
							class="btn btn-outline-primary"> <input type="checkbox"
							name="electric.heater" value="1">
							&nbsp;&nbsp;热水器&nbsp;&nbsp; </label> <label
							class="btn btn-outline-primary"> <input type="checkbox"
							name="electric.gasstove" value="1">
							&nbsp;&nbsp;燃气灶&nbsp;&nbsp; </label> </label> <label
							class="btn btn-outline-primary"> <input type="checkbox"
							name="electric.lampblackmachine" value="1">&nbsp;&nbsp;油烟机&nbsp;&nbsp;
						</label>
					</div>

					<label class="form-label">上传房屋照片</label>

				</div>
			</form>

			<form id="form-upload" style="display:none" action="upload"
				method="post" enctype="multipart/form-data">
				<input type="hidden" class="form-control" name="housetype"
					value="<%=request.getParameter("housetype")%>"> <input
					type="hidden" class="form-control" name="houseadress"
					value="<%=request.getParameter("houseadress")%>"> <input
					id="uploadImg" type="file" name="upload"> <input
					type="submit" value="上传">
				<div id="div-upload">
					<img id="img-upload" alt="" src="upload/${fileName }">
				</div>
			</form>

			<div class="pageButton">
				<input id="button-prePage" type="button" class="btn btn-primary"
					style="display:none" onclick="goPrePage()" value="上一页"><input
					id="button-nextPage" type="button" class="btn btn-primary"
					onclick="goNextPage()" value="下一页"> <br>
				<input id="button-save" type="button" class="btn btn-primary"
					style="display:none" onclick="goSubmit()"
					value="&nbsp;&nbsp;保存&nbsp;">
			</div>
		</div>
	</div>

	<!-- 底部文件 -->
	<%@include file="footer.jsp"%>

</body>
</html>
