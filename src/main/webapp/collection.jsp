<%@page import="org.springframework.web.context.request.RequestScope"%>
<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%-- <base href="<%=basePath%>"> --%>

<title>My JSP 'Order.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<link rel="stylesheet" href="css/bootstrap.css" type="text/css"></link>
<link rel="stylesheet" href="css/style.css" type="text/css"></link>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/house-detail/swiper.css" type="text/css"></link>
<link rel="stylesheet" href="css/common.css">

<script type="text/javascript">
	
	
	
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
				<li><a target="_blank" href="homepage.jsp">首页</a>
				</li>
				<li class="active">我的收藏</li>
			</ol>
			<c:forEach items="${requestScope.oList}" var="collection"> 
			<div class="wrapper">
				<div style="background-color: #6b5a70;width: 100%;height: 1px;"></div> 
					<div class="h-summary">
						<div class="h-preview">
							<div class="p-img-wrap">
								<img class="p-img" alt="图片" src="${collection.house.houseimg.imgurl1}">
							</div>
						</div>
						<div class="h-detail">
							<div class="h-type">
								<span class="room-type"><i class="c-333">房屋类型：</i>${collection.house.housetype}</span> <span
									class="rent-type"><i class="c-333">出租方式：</i>${collection.house.renttype}</span> <span
									class="pay-type"><i class="c-333">可入住人数：</i>${collection.house.hspersonnum}人</span> <span
									class="h-area"><i class="c-333">最短租期：</i>${collection.house.housingtime}天</span>
							</div>
							<div class="h-price-favor">
								<span class="h-price">${collection.house.monthpay}元/月<i class="small">（30天）</i> </span>
							</div>
							<div class="h-label">
								<span class="h-label-item">家具齐全</span> <span
									class="h-label-item">邻近地铁</span>
							</div> 
							<%-- <div class="h-type"  style="background-color:  #ff6401; text-align: right;">
								<span class="room-type" ><i class="c-333"><a href="delCollection?id=${collection.collectionId }">删除收藏</a></span> 
							</div>  --%>
							<div class="h-type">
								<%-- <span class="room-type"><i class="c-333">收藏时间：</i>${collection.colTime}</span> <span
									class="room-type"><i class="c-333">执行操作：</i><a href="deletes(collection.collectionId)" style="color:#ff6401; ">删除收藏</a></span> --%>
								<span class="room-type"><i class="c-333">收藏时间：</i>${collection.colTime}</span> <span
									class="room-type"><i class="c-333">执行操作：</i><a href="delCollection?id=${ collection.collectionId}" style="color:#ff6401; ">删除收藏</a></span>
							</div>
						</div>
					</div>
				 
			</div>
			</c:forEach> 
			
			
			<ul class="pagination">
				<c:if test="${requestScope.pageNo==1}">
					<li><a href="javascript:void(0)">«</a>
				</c:if>
				<c:if test="${requestScope.pageNo!=1}">
					<li><a href="findAllCollection?pageNo=${pageNo-1}">«</a></li>
				</c:if>
				
				<c:forEach items="${requestScope.list}" var="i">
				<c:if test="${requestScope.pageNo==i}">
					<li class="active"><a href="findAllCollection?pageNo=${i}">${i}</a>
					</li>
				</c:if>
				<c:if test="${requestScope.pageNo!=i}">
					<li><a href="findAllCollection?pageNo=${i}">${i}</a>
					</li>
				</c:if>
				</c:forEach>

				<c:if test="${requestScope.pageNo!=totalPage}">
				<li><a href="findAllCollection?pageNo=${pageNo+1}">»</a></li>
				</c:if>
				<c:if test="${requestScope.pageNo==totalPage}">
				<li><a href="javascript:void(0)">»</a></li>
				</c:if>
			</ul>
		</div>
	</div>
	<!-- 底部文件 -->
	<%@include file="footer.jsp"%>

</body>
</html>
