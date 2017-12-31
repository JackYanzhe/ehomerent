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
      .container{
        min-height: 608px;
      
      }
    
    </style>
    <script type="text/javascript">
       $(function(){
           $(".page-link").click(function(){
               var pageNo=$(this).children().html();
               var searchInfo=$("#searchinfosub").val();
               window.location.href="subscribe/searchHouseInfo?pageNo="+pageNo+"&searchInfo="+searchInfo;
               
           
           });
          
           
           $("#prepg").click(function(){
               //总页码
               var tolnum=$("#totalpagenum").val();
               var pgnumpr=$("#pgno1").children().html();
                var pgnum1=parseInt(pgnumpr);
               if((pgnum1-5)>=0){
                  //依次页码进行递减
                   $("#pgno1").children().html(pgnum1-5);
	               $("#pgno2").children().html(pgnum1-4);
	               $("#pgno3").children().html(pgnum1-3);
	               $("#pgno4").children().html(pgnum1-2);
	               $("#pgno5").children().html(pgnum1-1); 
               }
               
           });
            $("#nextpg").click(function(){
               //总页码
               var tolnum=$("#totalpagenum").val();
               var pgnumnt=$("#pgno5").children().html();
                var pgnum5=parseInt(pgnumnt);
              
               if((tolnum-pgnum5)>5){
                  //依次页码进行递加
                   $("#pgno1").children().html(pgnum5+1);
	               $("#pgno2").children().html(pgnum5+2);
	               $("#pgno3").children().html(pgnum5+3);
	               $("#pgno4").children().html(pgnum5+4);
	               $("#pgno5").children().html(pgnum5+5); 
               }
             
           });
           
           
           if($("#pgno1").children().html()==$("#pageNosub").val()){
                $(".page-link").children().attr("class","page-nav");
                $("#pgno1").children().attr("class","page-nav curr");
           
           }
           if($("#pgno2").children().html()==$("#pageNosub").val()){
                $(".page-link").children().attr("class","page-nav");
                $("#pgno2").children().attr("class","page-nav curr");
           
           }
           if($("#pgno3").children().html()==$("#pageNosub").val()){
                $(".page-link").children().attr("class","page-nav");
                $("#pgno3").children().attr("class","page-nav curr");
           
           }
           if($("#pgno4").children().html()==$("#pageNosub").val()){
                $(".page-link").children().attr("class","page-nav");
                $("#pgno4").children().attr("class","page-nav curr");
           
           }
           if($("#pgno5").children().html()==$("#pageNosub").val()){
                $(".page-link").children().attr("class","page-nav");
                $("#pgno5").children().attr("class","page-nav curr");
           
           }
           
           
           
           
       
        //alert($("#searchinfosub").val()+$("#pageNosub").val());
       
       
       
       
       });
      
    
    </script>
  </head>
  
  <body class="rent">
   <div class="header">
		    <!-- 头部 -->
		   <%@include file="header.jsp" %>
		</div>
   <div class="container">
	   
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
                      <c:forEach items="${sghlist}" var="seachhouse">
                          
	                       <a target="_blank" href=" ${pageContext.request.contextPath}/housedetail?id=${seachhouse.houseinfoid}" class="link-h-item">
	                       <li class="h-item">
	                       <div class="preview-wrapper" style="background-image:url('./${seachhouse.houseimg.imgurl1}')"></div>   
	                       <div class="h-info">
	                                    <div class="h-name-price">
	                                        <span class="h-name">${seachhouse.houseadress}</span>
	                                        <span class="h-price">${seachhouse.monthpay}</span>
	                                    </div>
	                                    <div class="h-type-will">
	                                        <span class="h-type">${seachhouse.housetype}</span>
	                                        <span class="h-type">${seachhouse.quicktype}</span>
	                                        <span class="h-type">${seachhouse.paytype}</span>
	                                         
	                                        <span class="h-will">已有<span class="highlight"> 801 </span>人想租</span>
	                                    </div>
	                                    <div class="h-label">
	                                        <span class="h-label-item">家电齐全</span>
	                                       <span class="h-label-item">家具齐全</span>
	                                                                                                    
	                                    </div>
	                                    <div class="owner-info">
	                                        <img src="${seachhouse.user.userimage}" class="owner-icon">
	                                        <div class="o-name">${seachhouse.user.loginname}</div>
	                                        <div class="o-type-pubdate">
	                                            <span class="o-type">业主</span>
	                                            <span class="h-type" style="color:red">&nbsp;&nbsp;&nbsp;&nbsp;地址：${seachhouse.location}</span>
	                                        </div>
	                                    </div>
	                                </div>
	                                <div class="divider"></div>
	                            </li>
	                       </a>
                     </c:forEach>
                       
                    
                    </ul>
              <div class="pagination" style="width:100%;">   
                 <a id="prepg"><span class="page-nav prev">◀</span></a>                                                   
                  <a id="pgno1" class="page-link"><span class="page-nav curr">1</span></a>
                  <a id="pgno2" class="page-link"><span class="page-nav">2</span></a>
                  <a id="pgno3" class="page-link"><span class="page-nav">3</span></a>
                  <a id="pgno4" class="page-link"><span class="page-nav">4</span></a>
                   <a id="pgno5" class="page-link"><span class="page-nav">5</span></a>
                  <a id="nextpg" ><span class="page-nav next">▶</span></a> 
                  <input type="hidden" id="searchinfosub" value="${searchInfo}">
                  <input type="hidden" id="pageNosub" value="${pageNo}"> 
                  <input type="hidden" id="totalpagenum" value="${totalpagenum}">              
              </div>
                </div>
            <!-- End房源列表 -->
        
        
        
         </div>

    


     </div>

</div>
<!-- footer -->
	<div class="footer" style="bottom: 0px;width:100%;">
	     <%@include file="footer.jsp" %>
	</div>  
  </body>

</html>
