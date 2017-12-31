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
<style type="text/css">
#button:hover{
	background-color: #FF6401;
}
</style>
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
				<li class="active">我的订单</li>
			</ol>
			<c:forEach items="${requestScope.oList}" var="order"> 
			<div class="wrapper">
				<div style="background-color: #6b5a70;width: 100%;height: 1px;"></div> 
					<div class="h-summary">
						<div class="h-preview">
							<div class="p-img-wrap">
								<img class="p-img" alt="图片" src="${order.house.houseimg.imgurl1}">
							</div>
						</div>
						<div class="h-detail">
							<div class="h-type">
								<span class="room-type"><i class="c-333">房屋类型：</i>${order.house.housetype}</span> <span
									class="rent-type"><i class="c-333">出租方式：</i>${order.house.renttype}</span> <span
									class="pay-type"><i class="c-333">可入住人数：</i>${order.house.hspersonnum}人</span> <span
									class="h-area"><i class="c-333">最短租期：</i>${order.house.housingtime}天</span><span
									class="h-area" style="width: 100%;"><i class="c-333">下单时间：</i>${order.orderdate}</span>
							</div>
							<div class="h-price-favor">
								<span class="h-price">${order.house.monthpay}元/月<i class="small">（30天）</i> </span>
							</div>
							<div class="h-label">
								<span class="h-label-item">家具齐全</span> <span
									class="h-label-item">邻近地铁</span>
							</div>
							<div class="h-type">
								<span class="room-type"><i class="c-333">总价：</i>${order.totalprice}元</span>
								<c:if test="${order.orderstatus==0}">
								 <span class="room-type"><i class="c-333">支付状态：</i>未支付</span>
								 </c:if>
								 <c:if test="${order.orderstatus==1}">
								 <span class="room-type"><i class="c-333">支付状态：</i>已支付</span>
								 </c:if>
								 <span class="room-type">
										<label class="btn btn-outline-primary active" aria-pressed="true" id="button"> 
										<a href="contract.jsp?monthpay=${order.house.monthpay}&houseinfoid=${order.house.houseinfoid}&orderid=${order.orderid}" 
										class="blue">签订合同</a>
										</label>
								</span>
								
								<span class="room-type">
										<label class="btn btn-outline-primary active" aria-pressed="true" id="button"> 
										<a href="contract/findContracts?orderid=${order.orderid}" 
										class="blue">查询合同详情</a>
										</label>
								</span> 
								 
								<c:if test="${order.orderstatus==0}">
								<span class="room-type">
										<label class="btn btn-outline-primary active" aria-pressed="true" id="button"> 
										<a href="#?orderid=${order.orderid}" 
										class="blue">去支付</a>
										</label>
								</span> 
								 </c:if>
								 <c:if test="${order.orderstatus==1}">
								<span class="room-type">
										<label class="btn btn-outline-primary active" aria-pressed="true" id="button"> 
										<a href="javascript:void(0)" 
										>订单已完成</a>
										</label>
								</span> 
								 </c:if>
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
					<li><a href="pagination?pageNo=${pageNo-1}&userId=${sessionScope.userId}">«</a></li>
				</c:if>
				
				<c:forEach items="${requestScope.list}" var="i">
				<c:if test="${requestScope.pageNo==i}">
					<li class="active"><a href="pagination?pageNo=${i}&userId=${sessionScope.userId}">${i}</a>
					</li>
				</c:if>
				<c:if test="${requestScope.pageNo!=i}">
					<li><a href="pagination?pageNo=${i}&userId=${sessionScope.userId}">${i}</a>
					</li>
				</c:if>
				</c:forEach>

				<c:if test="${requestScope.pageNo!=totalPage}">
				<li><a href="pagination?pageNo=${pageNo+1}&userId=${sessionScope.userId}">»</a></li>
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
