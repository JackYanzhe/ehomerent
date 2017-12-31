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

<!-- <link rel="stylesheet" href="bootswatch/bootstrap.css" type="text/css"></link>
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="bootswatch/bootstrap.js"></script> -->
<!-- <script type="text/javascript" src="bootswatch/jquery.js"></script> -->

<link rel="stylesheet" href="css/style.css" type="text/css"></link>
<link rel="stylesheet" href="css/reset.css">



<link rel="stylesheet" href="css/style.css" type="text/css"></link>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/house-detail/swiper.css"
	type="text/css"></link>
<link rel="stylesheet" href="css/common.css">
<style type="text/css">
h1 {
	font-size: 1.6em;
	color: #ff6401;
}
</style>
<script type="text/javascript">
	
   //删除全部房源信息
   function emptyAll(id){
/*     alert("666666666666"); */
        var r=confirm("是否确认删除发布的全部房源信息？");
        if(r==true){
            $(".wrapper").empty();
            $.getJSON("deleteAllHouse","UserId="+id,function(result){
            alert(result);
          })
       }
   }
	   
 function houseDetail(id){
    window.location.href="housedetail?id="+id;
 }

        //删除商品
		function confirmDelete(id){
			 var r=confirm("是否确认删除该商品？");
			 if(r==true){ 
		/* 	  alert("************"); */
			  $.getJSON("deleteHouseById","houseId="+id,function(result){  

	        alert("************"+result.msg);
				});
		 } 
	}
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
				<li class="active">房东专区</li>
			</ol>

			<div class="wrapper">
				<div style="background-color: #6b5a70;width: 100%;height: 1px;"></div>
				<c:forEach items="${pageItem.pageList}" var="house">

					<div class="h-summary" style="height:300px" onclick="houseDetail(${house.houseinfoid})">
						<div class="h-preview" style="width:400px;height:285px">
							<div class="p-img-wrap">
								<img class="p-img" alt="图片" src="${house.houseimg.imgurl1}">
							</div>
						</div>
						<div class="h-detail">
							<div class="h-type">
								<h1>${house.houseadress}</h1>
								<span class="room-type"><i class="c-333">房屋类型：</i>${house.housetype}</span>
								<span class="rent-type"><i class="c-333">出租方式：</i>${house.renttype}</span>
								<span class="pay-type"><i class="c-333">可入住人数：</i>${house.hspersonnum}人</span>
								<span class="h-area"><i class="c-333">最短租期：</i>${house.housingtime}天</span>
							</div>
							<div class="h-price-favor">
								<span class="h-price">${house.monthpay}元/月<i
									class="small">（30天）</i> </span>
							</div>

							<div class="h-label">
								<span class="h-label-item">家具齐全</span> <span
									class="h-label-item">邻近地铁</span>
							</div>

							<div class="h-type">
								<span class="room-type"><i class="c-333">具体地址：</i>${house.location}</span>
								<span class="room-type"><i class="c-333">出租方式：</i>${house.renttype}</span>
								<span class="room-type"> <label
									class="btn btn-outline-primary">

										<td class="shopping_product_list_6">

										<td class="shopping_product_list_6">
										<input  type="button" onclick=""
										 class="btnb sbys" >
										立即收藏</input>

									</td> </lable>
								</span> <span class="room-type"> <label
									class="btn btn-outline-primary">
										<td class="shopping_product_list_6">
										<input  type="button" onclick="confirmDelete(${house.houseinfoid})"
										 class="btnb sbys" >
										删除</input></td> </lable>
								</span>
							</div>

						</div>
					</div>
				<%-- 	<input  type="button" class="btnb sbys" onclick="confirmDelete(${house.houseinfoid})">删除999999999999</input>  --%>
				</c:forEach>
			</div>

			<label class="btn btn-outline-primary">
				<div>
					<input type="button" value="清空发布的房源" onclick="emptyAll(${userId})" id="emptyAll" />
				</div> 
			</label>
			
			<c:url var="pageNoClick" value="findAllHouse">
				<c:param name="userId" value="${sessionScope.user.userid}"></c:param>
			</c:url>
			<c:url var="preWindowClick" value="findAllHouse">
				<c:param name="pageNo" value="${preWindowFirstNo}"></c:param>
				<c:param name="userId" value="${sessionScope.user.userid}"></c:param>
			</c:url>
			<c:url var="nextWindowClick" value="findAllHouse">
				<c:param name="pageNo" value="${nextWindowFirstNo }"></c:param>
				<c:param name="userId" value="${sessionScope.user.userid}"></c:param>
			</c:url>
			<c:url var="firstPageClick" value="findAllHouse">
				<c:param name="pageNo" value="1"></c:param>
				<c:param name="userId" value="${sessionScope.user.userid}"></c:param>
			</c:url>
			<c:url var="lastPageClick" value="findAllHouse">
				<c:param name="pageNo" value="${pageItem.totalPage }"></c:param>
				<c:param name="userId" value="${sessionScope.user.userid}"></c:param>
			</c:url>
			
			<div style=" height:200px;">
				<ul class="pagination pager pagination pagination-lg">

					<c:if test="${pageItem.pageNo==1 && pageItem.totalPage>0  }">
						<li class="disabled"><a href="javascript:void(0)">首页</a>
						</li>
					</c:if>
					<c:if test="${pageItem.pageNo>1 }">
						<li><a href="${firstPageClick }">首页</a></li>
					</c:if>

					<c:if test="${pageItem.pageNo<=5 && pageItem.totalPage>0 }">
						<li class="disabled"><span>&laquo;<span
								class="sr-only"></span> </span></li>
					</c:if>
					<c:if test="${pageItem.pageNo>5 }">
						<li><a href="${preWindowClick }">&laquo;</a></li>
					</c:if>

					<c:forEach items="${pageNoList }" var="i">
						<c:if test="${pageItem.pageNo ==i }">
							<li class="active"><span> ${i }<span class="sr-only"></span>
							</span>
							</li>
						</c:if>

						<c:if test="${pageItem.pageNo !=i }">
							<li><a href="${pageNoClick }&pageNo=${i }">${i }</a>
							</li>
						</c:if>
					</c:forEach>

					<c:if
						test="${pageItem.pageNo==nextWindowFirstNo && pageItem.totalPage>0 }">
						<li class="disabled"><span>&raquo;<span
								class="sr-only"></span> </span></li>
					</c:if>
					<c:if test="${pageItem.pageNo<nextWindowFirstNo }">
						<li><a href="${nextWindowClick }">&raquo;</a></li>
					</c:if>

					<c:if test="${pageItem.pageNo==pageItem.totalPage }">
						<li class="disabled"><span>尾页<span class="sr-only"></span>
						</span>
						</li>
					</c:if>
					<c:if test="${pageItem.pageNo<pageItem.totalPage }">
						<li><a href="${lastPageClick }">尾页</a></li>
					</c:if>
					
					<div class="btn-group" style=" height:40px;">
						<div>
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown">
								${pageItem.pageSize} <span class="caret"></span>
							</button>

							<ul class="dropdown-menu" role="menu">
								<c:forEach var="i" begin="1" end="9">
									<li><a href="findAllHouse?pageSize=${i}&userId=${sessionScope.user.userid}">${i}</a></li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</ul>
			</div>
		</div>
		<br>总页数:${pageItem.totalPage} <br> 当前页数:${pageItem.pageNo} <br>
	</div>

	<!-- 底部文件 -->
	<%@include file="footer.jsp"%>

</body>
</html>
