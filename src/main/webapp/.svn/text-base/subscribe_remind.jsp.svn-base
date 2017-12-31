<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'house_subscribe.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!-- <link rel="shortcut icon" href="images/logo.ico" type="image/x-icon"> -->
	
 <!-- 注意css/bootstrap.css要放置在最上边 -->
	<link rel="stylesheet" href="css/bootstrap.css" type="text/css"></link>
	<link rel="shortcut icon" href="./images/logo.ico" type="image/x-icon">
	<link rel="stylesheet" href="css/style.css" type="text/css"></link>
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/common.css">
	<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    
    
    <link rel="stylesheet" href="css/house_subscribe_css/subscribe.css" type="text/css"></link>
    <link rel="stylesheet" href="css/house_subscribe_css/bootstrap-select.css" type="text/css"></link>
    <script type="text/javascript" src="js/house_subcribe/bootstrap-select.js"></script>
    <style type="text/css">
      .lintg{
        
         height:50px;
         
      
      }
    
    </style>
  </head>
  
  <body class="rent">
   <div class="header">
		    <!-- 头部 -->
		   <%@include file="header.jsp" %>
		</div>
     <div class="container">
	   
	    <div class="banner"></div>
	
  
 
   
    <!-- 主体 -->
    <div class="main">
         <div class="wrapper">
          <!-- 订阅房源列表显示列表 -->
                <div class="house-list ">
                    <div class="control-bar contr-lineheg lintg">
                    <!-- 默认排序 -->                                     
                        <a href="#" class="order-link">
                            <span class="btn-ctl curr">默认排序</span>
                        </a>
                    <!-- 最新 -->                                    
                        <a href="#" class="order-link">
                            <span class="btn-ctl "> <i class="icon-btn-ctl"></i>最新</span>
                        </a>
                    <!-- 价格 -->                                        
                        <a href="#" class="order-link">
                            <span class="btn-ctl "> <i class="icon-btn-ctl"></i>价格</span>
                        </a>
                        <span class="num-res">
                                                                                    共找到<span class="highlight">2270</span>套房源
                        </span>
                    </div>
                    <div class="data-empty">
                        <img class="zoomer" src="#/zoomer.png">
                        <p class="empty-tip">没找到符合您需求的房源...</p>
                    </div>
                    <ul class="list">
                        <!-- 订阅房源列表 -->
                      <c:forEach items="${hslist}" var="house">
                          
	                       <a target="_blank" href=" ${pageContext.request.contextPath}/housedetail?id=${house.houseinfoid}" class="link-h-item">
	                       <li class="h-item">
	                       <div class="preview-wrapper" style="background-image:url('./images/a2.jpg')"></div>   
	                       <div class="h-info">
	                                    <div class="h-name-price">
	                                        <span class="h-name">${house.houseadress}</span>
	                                        <span class="h-price">${house.monthpay}</span>
	                                    </div>
	                                    <div class="h-type-will">
	                                        <span class="h-type">${house.housetype}</span>
	                                        <span class="h-type">${house.renttype}</span>
	                                        <span class="h-type">${house.paytype}</span>
	                                        <span class="h-will">已有<span class="highlight"> 801 </span>人想租</span>
	                                    </div>
	                                    <div class="h-label">
	                                        <span class="h-label-item">家电齐全</span>
	                                       <span class="h-label-item">家具齐全</span>
	                                                                                                    
	                                    </div>
	                                    <div class="owner-info">
	                                        <img src="${house.user.userimage}" class="owner-icon">
	                                        <div class="o-name">${house.user.loginname}</div>
	                                        <div class="o-type-pubdate">
	                                            <span class="o-type">业主</span>
	                                        </div>
	                                    </div>
	                                </div>
	                                <div class="divider"></div>
	                            </li>
	                       </a>
                     </c:forEach>
                       
                    
                    </ul>
             <!--  <div class="pagination">                                                      
                  <a href="#" class="page-link"><span class="page-nav curr">1</span></a>
                  <a href="#" class="page-link"><span class="page-nav ">2</span></a>
                  <a href="#" class="page-link"><span class="page-nav ">3</span></a>
                  <a href="###" class="page-link"><span class="page-nav elli">...</span></a>
                  <a href="#" class="page-link"><span class="page-nav ">10</span></a>
                  <a href="#" class="page-link"><span class="page-nav next">
                  <img src="static/img/icon-page-next.png">▶</span></a>                
                    </div> -->
                </div>
            <!-- End房源列表 -->
        
        
        
         </div>

    


     </div>

</div>
<!-- footer -->
	<div class="footer" style="position: fixed;bottom: 0px;width:100%;">
	     <%@include file="footer.jsp" %>
	</div>  
  </body>

</html>
