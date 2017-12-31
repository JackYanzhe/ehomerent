<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

  <head>  
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/jquery-ui.css">
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/nivo-default.css" type="text/css">
	<link rel="stylesheet" href="css/nivo-slider.css" type="text/css">
	<link rel="shortcut icon" href="http://pc.huoju365.com/static/img/favicon.ico" type="image/x-icon">
	<script type="text/javascript" src="js/jquery-1.11.1.js"></script>

<script type="text/javascript">
	//点击快速租房，如没登陆，先登录，登录后转跳issuance-house.jsp发布房源页面
	function ifLogin(eno){  
		if(eno!=null){
			window.location.href="issuance-house.jsp?userId="+eno;
		}else{
			window.location.href="login.jsp";
		}
	};
</script>

<script type="text/javascript">
   //定义全局变量，类似于页面缓存，只进行一次异步操作，可提高效率
    var result_jsonData=null;
    function tt(){
    
    //合同信息提示
      $.getJSON("contract/findMsg",function(result){
        if(result.length>0){
          $("#msgImg").show();
          $("#msgNum").html(result.length);
        }else{
             $("#msgImg").hide();
             $("#msgNum").hide();
        }
     });
   }
   $(function(){
   //合同信息提示
	 tt();
     //异步显示消息通知
     $.get("subscribe/showSubMsgInfo",function(result){
        if(result>0){
          $("#msgimg").show();
          $("#msgnum").html(result);
        }else{
             $("#msgimg").hide();
             $("#msgnum").hide();
        }
     });
     
    // 用来显示三级级联展开面板
    function show_l3(){
        $('.quick-search .pannel').css('width','34em');
        $('.quick-search .pannel .sheet-wrap').show();
    }
    function hide_l3(){
        $('.quick-search .pannel').css('width','auto');
        $('.quick-search .pannel .sheet-wrap').hide();
    }

    $('.header .subnav .item').hover(function(){
        $(this).find('.hv-qrcode').show();
            },function(){
            $(this).find('.hv-qrcode').hide();
       });
     //选择城市下拉列表(仅支持郑州、北京、上海、广州、深圳)
    $('.city').click(function(){
        $('.city-list').toggle();
    });
    $('.city').blur(function(){
        $('.city-list').hide();
    });
    
     $('.itemcity').click(function(){
       
       var cityname=$(this).html();
       $(".handle").empty();
       /* var cityID=110100000000; */
          /* 
                                       北京市：110100000000
                                       天津市：120100000000 
                                      上海市：310100000000
                                      广州市：440100000000
                                     深圳市： 440300000000
                                    郑州市：410100000000*/
       if(cityname=="郑州"){
           $(".handle").attr("id",410100000000);
           $(".handle").append(cityname+"<img src='./images/img-152.png' class='icon'>");
       }
       if(cityname=="北京"){
          $(".handle").attr("id",110100000000);
          $(".handle").append(cityname+"<img src='./images/img-152.png' class='icon'>");
       }
       if(cityname=="上海"){
          $(".handle").attr("id",310100000000);
          $(".handle").append(cityname+"<img src='./images/img-152.png' class='icon'>");
       }
       if(cityname=="广州"){
          $(".handle").attr("id",440100000000);
          $(".handle").append(cityname+"<img src='./images/img-152.png' class='icon'>");
       }
       if(cityname=="深圳"){
          $(".handle").attr("id",440300000000);
          $(".handle").append(cityname+"<img src='./images/img-152.png' class='icon'>");
       }
    });
    
    
    $('.quick-search .father').hover(function(){
        $(this).find('.pannel').show();
        //写区域级联
	     /* 选择区、县级 */
          /* var cityID=110100000000; */
           
          var cityID=$(".handle").attr("id");
          var citynamestr=$(".handle").html().substring(0,2);
         /*  alert(citynamestr); */
          /* 
                                       北京市：110100000000
                                       天津市：120100000000 
                                      上海市：310100000000
                                      广州市：440100000000
                                     深圳市： 440300000000
                                    郑州市：410100000000*/
          if(result_jsonData==null){
		      $.getJSON("subscribe/getAreaJson2",function(result){
		              //接收城市数据，以便用户下次进行操作时，不用再于后台进行交互
		              result_jsonData=result; 
		              $("#countyd").empty();
		              $("#countyd").append(" <a target='_blank' href='http://pc.huoju365.com/index.php/housing/area.html' class='more'>全"+citynamestr+"市</a>"); 
			             var areamid=0;
			             for(var i=0;i<result.length;i++){
		                      for(var j=0;j<result[i].length;j++){
		                        var a=1;   
		                         if(cityID==result[i][j].city_id){
		                                       a=j;   a++;
		                                 if(result[i][j].county_id!=result[i][a].county_id){
			                                   areamid++;
			                              $("#countyd").append("<li class='m-item' onmouseover='county();' id='areamid_"+areamid+"'><a target='_blank' class='countyidclass' id='"+result[i][j].county_id+"' href='http://pc.huoju365.com/index.php/housing/area/1.html'>"+result[i][j].county_name+"</a></li>"); 
			                            }
		                              }
		                    }
		              }
		             $("#countyd").append("<a target='_blank' href='http://pc.huoju365.com/index.php/housing/area.html' class='more'>全部区域&gt;&gt;</a> "); 
			           
		            });
	          
	          }else{
	                $("#countyd").empty();
		              $("#countyd").append(" <a target='_blank' href='http://pc.huoju365.com/index.php/housing/area.html' class='more'>全"+citynamestr+"市</a>"); 
			             var areamid=0;
			             for(var i=0;i<result_jsonData.length;i++){
		                      for(var j=0;j<result_jsonData[i].length;j++){
		                        var a=1;   
		                         if(cityID==result_jsonData[i][j].city_id){
		                                  a=j;
		                                   a++;
		                                 if(result_jsonData[i][j].county_id!=result_jsonData[i][a].county_id){
		                                   
			                                   areamid++;
			                          
			                              $("#countyd").append("<li class='m-item' onmouseover='county();' id='areamid_"+areamid+"'><a target='_blank' class='countyidclass' id='"+result_jsonData[i][j].county_id+"' href='http://pc.huoju365.com/index.php/housing/area/1.html'>"+result_jsonData[i][j].county_name+"</a></li>"); 
			                            }
		                              }
		                    }
		              }
		             $("#countyd").append("<a target='_blank' href='http://pc.huoju365.com/index.php/housing/area.html' class='more'>全部区域&gt;&gt;</a> "); 
	          
	          }
        /* hide_l3(); */
        
    },function(){
        $(this).find('.pannel').hide();
    });
    $('.quick-search ').hover(function(){
       $('.quick-search .list').show();
    },function(){
       $('.quick-search .list').hide();
    });
    $('.station').click(function(){
        $('.station').removeClass('active');
        $(this).addClass('active');
    });
    $('.city-list .item').click(function(){
        popover('not-open');
    });
    
    
    
    });
    //类似于页面缓存，只进行一次异步操作，可提高效率，同上
    var result=null;
    var ctyID=null;
    /* alert(result); */
    function county(){
        $('.quick-search .pannel').css('width','34em');
        $('.quick-search .pannel .sheet-wrap').show();
        //当前选中的区域id
        
        $(".countyidclass").mouseover(function(){
            //保证只在鼠标在悬浮区域时显示红色
            $(".countyidclass").css("color","#565a5c");
            $(this).css("color","red"); 
            
            
            var countyID= $(this).attr("id");
            ctyID=countyID;
           
            result=result_jsonData;
            //以免出现result_jsonData无值的情况
            if(result==null){
                 $.getJSON("subscribe/getAreaJson2",function(resultdata){
                    result=resultdata;
                 });
            }
            $("#town").empty();
	                 for(var i=0;i<result.length;i++){
	                      for(var j=0;j<result[i].length;j++){
	                        var c=1;   
	                         if(countyID==result[i][j].county_id){
	                                  c=j;   c++;
	                                 if(result[i][j].town_id!=result[i][c].town_id){
	                                         //显示街道信息，并对字符串进行截取
											if(result[i][j].town_name.indexOf("街道办事处")>=0){
		                                      $("#town").append("<ul class='ultown'><li class='litown' onclick='getLocation()'>"+result[i][j].town_name.substring((0),(result[i][j].town_name.length-5))+"</li></ul>");
		                                 
											}else if(result[i][j].town_name.indexOf("办事处")>=0){
		                                      $("#town").append("<ul class='ultown'><li class='litown' onclick='getLocation()'>"+result[i][j].town_name.substring((0),(result[i][j].town_name.length-3))+"</li></ul>");
		                                 
											}
											else{
		                                      $("#town").append("<ul class='ultown'><li class='litown' onclick='getLocation()'>"+result[i][j].town_name+"</li></ul>");
		                                 
											}
	                                 
	 		                        }
	                              }
	                    }
	              } 
            
           
        });
        
        $(".countyidclass").mouseout(function(){
           /*  $(this).css("color","#565a5c"); */ 
            $("#countmsname").val($("#"+ctyID).html());
            $("#"+ctyID).css("color","red");
        });
   };
   
   //点击获取要搜索的详细位置信息
   function getLocation(){
       $('.litown').click(function(){
	         
	         
	          var city=$(".handle").html().substring(0,2);
	          var county=$("#countmsname").val();
	          var town=$(this).html();
	          var locationName=city+"市 "+county+" "+town;
	          $("#locationmsname").val(locationName)
	          /* $("#locationmsname").val(locationName);
	          $(".txt-input").val(locationName); */
	          window.location.href="subscribe/searchHouseInfo?searchInfo="+locationName;
	         
	   });
   
   };
   
</script>
<style type="text/css">
/* 消息通知样式 */
.one {
	position: relative;
	width: 100px;
}

.two {
	position: absolute;
	left: 45px;
	top: -13px;
}

.three {
	position: absolute;
	left: 65px;
	top: -12px;
	color: red;
	font-size: 10px;
	font-style: italic;
}

.ultown {
	width: 100px;
	float: left;
	height: 50px;
}

.litown {
	width: 50%;
	height: 10px;
	font-size: 12px;
	color: #666;
	padding: 5px;
	text-align: center;
	line-height: 20px;
	cursor: pointer;
}

.litown:hover {
	color: red;
}
	.msgText{ 
	     position:relative;
	      width:50px;
	     }
	.msgImg{
	
	     position:absolute;
	     left: 40px;
	     top: -13px;
	
	}
	.msgNum{
	     position:absolute;
	     left: 60px;
	     top: -12px;
	     color:red;
	     font-size: 10px;
	     font-style: italic;
	
	}
.itemcity {
	font-size: .88em;
	line-height: 3em;
	width: 5em;
	text-align: center;
	cursor: pointer;
}
</style>

</head>
<body>
	<!-- 头部 -->
	<div class="header">
		<div class="subnav">
			<div class="wrapper">
				<span class="item logged-in"> <i class="icon ic-1"></i> 欢迎你:
					<c:if test="${!empty image}">
						<img width="20px" height="20px" src="upload/${image}">
					</c:if> ${loginname} <a href="exit">[退出]</a> </span> <span
					class="item"> <a target="_blank" href="pagination?userId=${sessionScope.userId}"> <i
						class="icon ic-2"></i> 清单 </a> </span> <span class="item"> <a
					target="_self" href="findAllHouse?userId=${sessionScope.userId}"> <i class="icon ic-3"></i>房东专区
				</a> </span>
			
						<span class="item">
							<a target="_blank" href="contract/findContractByHouseId">
							<i id = "msgImg" class="msgImg"><img src="images/subscribe-page/zdmsgshow.png" width="20px" height="20px" title="bottom" /></i>
							 <i id="msgText" class="msgText" onclick="tt();">合同消息</i>
							 <i class="msgNum" id="msgNum"></i>
							 </a> 
						</span> 
						<span class="item"> 
						    <a href="subscribe/checkSubInfo"> 
						     <i id="msgimg" class="two"><img src="images/subscribe-page/zdmsgshow.png" width="20px" height="20px" title="bottom" /></i>
						     <i class="one">订阅房源</i> 
						     <i id="msgnum" class="three"></i> 
						    </a> 
						   
                          
						 </span> 
						 <span class="item">
						    <a href="#.htm###"> 
						    <img src="images/img-163.png" class="hv-qrcode" style="display: none;"> 
						    <i class="icon ic-5"></i> 一键租房 </a> 
						 </span> 
						 <span class="item"> 
						    <a target="_blank" href="#/cooperate.html"> 
						    <i class="icon ic-6"></i>企业福利 </a> 
						 </span>
			</div>
		</div>
		


		<div class="wrapper">
			<div class="navbox n-box-1">

				<div class="logo">
					<img src="./images/logo.png" alt="logo">
					<div class="hgroup">
						<h1>
							<a target="_blank" href="http://www.huoju365.com/">e租房</a>
						</h1>
						<h2>一款能秒杀黑中介的APP</h2>
					</div>
				</div>
				<div class="city">
					<ul class="city-list" style="display: none;">
						<li class="itemcity">北京</li>
						<li class="itemcity">上海</li>
						<li class="itemcity">广州</li>
						<li class="itemcity">深圳</li>
						<li class="itemcity">郑州</li>
					</ul>
					<span class="handle" id="410100000000">郑州<img
						src="./images/img-152.png" class="icon"> </span>
					<!-- <input type="hiden" value="" id="citymsname"> -->
					<!-- 隐藏域放置位置信息 -->
					<input type="hidden" value="" id="countmsname"> <input
						type="hidden" value="" id="locationmsname">
				</div>
				<div class="search-bar">
					<form id="form" action="subscribe/searchHouseInfo" method="post">
						<ul class="hot-hit">
							<li class="item"><a target="_blank" href="#.html">望京</a></li>
							<li class="item"><a target="_blank" href="#">安定门</a></li>
							<li class="item"><a target="_blank" href="#">宋家庄</a></li>
							<li class="item"><a target="_blank" href="#">北苑</a></li>
						</ul>

						<!-- <input name="pageNo" value="housing" type="hidden"> 
						<input name="m" value="search" type="hidden"> -->
						<input name="pageNo" value="1" type="hidden">
					    <input name="searchInfo" class="txt-input" onfocus="$('.hot-hit').hide();" onblur="$('.hot-hit').show();" type="text">
						<button class="btn  btn-search" type="submit">搜索</button>
					</form>

				</div>
				<div class="promise">
					<ul>
						<!-- <span>{userId }</span> -->
					</ul>
				</div>
			</div>
			<div class="navbox n-box-2">
				<div class="quick-search">
					<button type="button" class="btn btn-guider">
						<span>快速找房 <img src="./images/img-166.png" class="icon">
						</span>
					</button>
					<ul class="list" style="display: none;">
						<li class="item father area">
							<h2 class="title">按区域找房子</h2> <!-- <p class="tags">
								<span class="tags-item"><a target="_blank"
									href="http://pc.huoju365.com/index.php/housing/area/1.html">朝阳</a>
								</span>
							</p>  -->
							<p class="tags">
								<span class="tags-item"><a target="_blank"
									href="http://pc.huoju365.com/index.php/housing/area/1.html">中原区</a>
								</span> <span class="tags-item"><a target="_blank"
									href="http://pc.huoju365.com/index.php/housing/area/2.html">金水区</a>
								</span> <span class="tags-item"><a target="_blank"
									href="http://pc.huoju365.com/index.php/housing/area/7.html">二七区</a>
								</span> <span class="tags-item"><a target="_blank"
									href="http://pc.huoju365.com/index.php/housing/area/3.html">惠济区</a>
								</span>
							</p> <img src="images/img-153.png" class="more-arrow">
							<div class="pannel" style="display: none; width: 34em;">
								<ul class="qs-menu" id="countyd">
									<!-- 用来显示区名列表 -->



								</ul>
								<div class="sheet-wrap" id="town">
									<!-- 用来显示街道列表 -->



								</div>



							</div>
						</li>
						<li class="item">
							<h2 class="title">
								<a target="_blank" href="#/area.html">以居住方式找房子</a>
							</h2>
							<p class="tags">
								<span class="tags-item">
								<a href="subscribe/searchHouseInfo?rentypeInfo=整租">整租</a> </span> <span class="tags-item">
								<a href="subscribe/searchHouseInfo?rentypeInfo=合租">合租</a> </span> <span class="tags-item">
								<a href="subscribe/searchHouseInfo?rentypeInfo=单间">单间</a> </span> <span class="tags-item">
								<a href="subscribe/searchHouseInfo?rentypeInfo=床位">床位</a> </span>
							</p></li>
						<li class="item">
							<h2 class="title">
								<a target="_blank" href="#/1.html">纯月租 ▪30天起租</a>
							</h2>
							<p class="tags">
								<span class="tags-item"><a target="_blank"
									href="#/1.html">普通住宅</a> </span> <span class="tags-item"><a
									target="_blank" href="#/1.html">酒店</a> </span> <span class="tags-item"><a
									target="_blank" href="#/1.html">公寓</a> </span> <span class="tags-item"><a
									target="_blank" href="#/1.html">酒店式公寓</a> </span>
							</p></li>
					</ul>

				</div>
				<div class="nav">
					<ul>
						<li class="item "><a target="_blank" href="homepage.jsp">首页</a></li>
						<li class="item "><a  href="subscribe/searchHouseInfo?rentypeInfo=整租">整租</a>
						</li>
						<li class="item "><a  href="subscribe/searchHouseInfo?rentypeInfo=合租">合租</a>
						</li>
						<li class="item "><a  href="subscribe/searchHouseInfo?rentypeInfo=单间">单间</a>
						</li>
						<li class="item "><a  href="subscribe/searchHouseInfo?rentypeInfo=床位">床位</a>
						</li>
						<li class="item "><img src="images/img-137.png" class="hot">
							<a  href="subscribe/searchHouseInfo?rentypeInfo=月租">纯月租</a>
						</li>
						<li class="item"><a	href="javascript:ifLogin(${sessionScope.user.userid})">我要招租</a>
						</li>
						<!-- <input type="hidden" > -->
					</ul>
				</div>
			</div>
		</div>
	</div>



</body>
</html>
