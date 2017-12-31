<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/house-detail/reset.css">
<link rel="stylesheet" href="css/house-detail/jquery-ui.css">
<link rel="stylesheet" href="css/house-detail/common.css">
<link rel="stylesheet" href="css/house-detail/style.css">
<link rel="stylesheet" href="css/house-detail/nivo-default.css" type="text/css">
<link rel="stylesheet" href="css/house-detail/nivo-slider.css" type="text/css">
<link rel="shortcut icon" href="http://pc.huoju365.com/static/img/favicon.ico" type="image/x-icon">
<link href="css/house-detail/swiper_002.css" rel="stylesheet">
<link href="css/house-detail/swiper.css" rel="stylesheet">
<link href="css/house-detail/touchTouch.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script charset="utf-8" src="http://map.qq.com/api/js?v=2.exp"></script>
<style type="text/css">
	#pc-tracer-3{
	
		width:10.5em;
	}
</style>

<script type="text/javascript">
function addCollection( userId, houseId){
	
	if($(".collection").html()=="加入收藏"){
		$(".collection").html("已收藏");
	}
	$.get("addCollection?userId="+userId+"&houseId="+houseId,function(){
		
	});
}
		
	
</script>

</head>
<body class="house">
<div class="container">
		<div class="header">
		    <!-- 头部 -->
		   <%@include file="header.jsp" %>
		</div>
		<!-- 主体 -->
		<div class="main">
			<div class="wrapper">
				<!-- 当前位置 -->
				<div class="cur-pos">
					<a target="_blank"
						href="http://pc.huoju365.com/index.php/main/index.html">首页</a>&gt;
					<a target="_blank"
						href="http://pc.huoju365.com/index.php/housing/search.html">我要租房</a>&gt;
					<a target="_blank"
						href="http://pc.huoju365.com/index.php/housing/area/4/174/0/0/0/0/0.html">什刹海</a>&gt;
					<a target="_blank"
						href="http://pc.huoju365.com/index.php/housing/search/%E5%8C%97%E9%95%BF%E8%A1%97.html">北长街</a>
				</div>
				<!-- End当前位置 -->
			</div>
			<div class="wrapper">
				<!-- 房屋概况 -->
				<div class="h-summary">
					<div class="h-preview">
						<ul class="p-img-wrap">
							<li class="p-img"
								href="http://img.huoju365.com/file/510f4016-843d-40e4-81d8-7fa28e40306c"
								style="background-image:url(./${house.houseimg.imgurl1})"></li>
						</ul>
						<div class="swiper-container swiper-container-horizontal">
							<div class="swiper-wrapper">
								<li class="swiper-slide swiper-slide-active"
									style="background-image: url(&quot;http://img.huoju365.com/file/510f4016-843d-40e4-81d8-7fa28e40306c&quot;); width: 86.5px;"></li>
							</div>

							<!-- 如果需要导航按钮 -->
							<div class="swiper-button-prev swiper-button-disabled"></div>
							<div class="swiper-button-next swiper-button-disabled"></div>
						</div>
					</div>
					<div class="h-detail">
						<h1 class="h-name">${house.houseadress}</h1>
						<div class="h-type">
							<span class="room-type"><i class="c-333">户型：</i>${house.housetype}</span>
							<span class="rent-type"><i class="c-333">出租方式：</i>${house.quicktype}</span>
							<span class="pay-type"><i class="c-333">付款方式：</i>${house.paytype}</span> 
							<span class="h-area"><i class="c-333">面积：</i>${house.acreage} m<sup>2</sup> </span>
						</div>
						<div class="h-price-favor">
							<span class="h-price">${house.monthpay}元/月</span>
						</div>
						<div class="h-label">
							<span class="h-label-item">家电齐全</span> <span class="h-label-item">家具齐全</span>
							<span class="h-label-item">成熟社区</span> <span class="h-label-item">精装修</span>

						</div>

						<div class="download-link">
							<img src="images/house-detail/down-load-hover.png">下载APP直接电话联系房东
						</div>

						<div class="h-book-will">
													
							<span class="h-add-book-list"><a
								onclick="addCollection(${userId},${house.houseinfoid});"
								id="pc-tracer-3" class="collection">加入收藏</a> </span> 
							</span> 
							<span class="h-add-book-list"><a  id="pc-tracer-3" href="
								addOrder?house.houseinfoid=${house.houseinfoid}&userId=${sessionScope.userid}">马上租住</a> </span> <span class="h-will">已有
								<span class="highlight">401</span>人想租
							</span>
						</div>
					</div>
				</div>
			</div>
			<!-- End概况 -->

			<!-- 房屋详描述 -->
			<div class="h-nav-wrapper"
				style="height:122px; overflow: hidden; width:100%; ">
				<div class="h-nav">
					<div class="wrapper">
						<ul>
							<li class="h-nav-item curr"><a href="#hahnai-1">基本信息</a></li>
							<li class="h-nav-item"><a href="#hahnai-2">房屋配置</a></li>
							<li class="h-nav-item"><a href="#hnai-3">租金详情</a></li>
							<li class="h-nav-item"><a href="#hnai-7">房东介绍</a></li>
							<li class="h-nav-item small"><a href="#hnai-4">服务承诺&amp;特别提醒</a></li>
							<li class="h-nav-item"><a href="#hnai-5">位置信息</a></li>
							<li class="h-nav-item last-child"><a href="#hnai-8">交易保障</a></li>
						</ul>
					</div>
				</div>
			</div>
			<a id="hahnai-1"></a>
			<div class="sec sec-1">
				<div class="sec-title">
					<img
						src="images/house-detail/sec-title-icon.png">基本信息
				</div>
				<div class="sec-main">
					<div class="sc-left">
						<ul>
							<li class="sc-item"><span class="si-name">可入住时间</span> <span
								class="si-value">${house.housingtime}</span></li>
							<li class="sc-item"><span class="si-name">楼层</span> <span
								class="si-value">${house.floor}</span></li>
							<li class="sc-item"><span class="si-name">房源编号</span> <span
								class="si-value">${house.houseinfoid}</span></li>
					
						</ul>
					</div>
					<div class="sc-right">
						<ul>
							<li class="sc-item"><span class="si-name">可入住人数</span> <span
								class="si-value">${house.hspersonnum}人</span></li>
							<li class="sc-item"><span class="si-name">装修</span> <span
								class="si-value">${house.hsdecorationrank}</span></li>
							<li class="sc-item"><span class="si-name">房屋朝向</span> <span
								class="si-value">${house.hsdecoration}</span></li>
						</ul>
					</div>
				</div>
			</div>
			<a id="hahnai-2"></a>
			<div class="sec sec-2">
				<div class="sec-title">
					<img
						src="images/house-detail/sec-title-icon.png">房屋配置
				</div>
				<div class="sec-main">
					<div class="sc-left">
						<ul>
							<li class="sc-item"><span class="si-name">家具</span></li>
							<li class="sc-item"><span class="si-name">家电</span></li>
							<li class="sc-item"><span class="si-name">附加设施</span></li>
						</ul>
					</div>
					<div class="sc-right">
						<ul>
							<li class="sc-item">
								<c:if test="${house.furniture.bed==1}">
								<span class="si-name   active"><i class="icon ic-5"></i>床</span> 
								</c:if>
								<c:if test="${house.furniture.bed!=1}">
								<span class="si-name   "><i class="icon ic-5"></i>床</span> 
								</c:if>
								<c:if test="${house.furniture.landlordask==1}">
								<span class="si-name   active"><i class="icon ic-13"></i>沙发</span> 
								</c:if>
								<c:if test="${house.furniture.landlordask!=1}">
								<span class="si-name   "><i class="icon ic-13"></i>沙发</span> 
								</c:if>
								<c:if test="${house.furniture.wardrobe==1}">
								<span class="si-name   active"><i class="icon ic-10"></i>衣柜</span> 
								</c:if>
								<c:if test="${house.furniture.wardrobe!=1}">
								<span class="si-name   "><i class="icon ic-10"></i>衣柜</span> 
								</c:if>
								<c:if test="${house.furniture.diningtable==1}">
								<span class="si-name   active"><i class="icon ic-16"></i>餐桌</span> 
								</c:if>
								<c:if test="${house.furniture.diningtable!=1}">
								<span class="si-name   "><i class="icon ic-16"></i>餐桌</span> 
								</c:if>
								<c:if test="${house.furniture.chair==1}">
								<span class="si-name   active"><i class="icon ic-19"></i>椅子</span> 
								</c:if>
								<c:if test="${house.furniture.chair!=1}">
								<span class="si-name   "><i class="icon ic-19"></i>椅子</span> 
								</c:if> 
								<c:if test="${house.furniture.desk==1}">
								<span class="si-name   active"><i class="icon ic-8"></i>书桌</span> 
								</c:if>
								<c:if test="${house.furniture.desk!=1}">
								<span class="si-name   "><i class="icon ic-8"></i>书桌</span> 
								</c:if> 
								<c:if test="${house.furniture.cupboard==1}">
								<span class="si-name   active"><i class="icon ic-20"></i>橱柜</span> 
								</c:if>
								<c:if test="${house.furniture.cupboard!=1}">
								<span class="si-name   "><i class="icon ic-20"></i>橱柜</span> 
								</c:if> 
								<c:if test="${house.furniture.kitchenware==1}">
								<span class="si-name   active"><i class="icon ic-7"></i>厨具</span> 
								</c:if>
								<c:if test="${house.furniture.kitchenware!=1}">
								<span class="si-name   "><i class="icon ic-7"></i>厨具</span> 
								</c:if>
							</li>
							<li class="sc-item">
								<c:if test="${house.electric.television==1}">
								<span class="si-name   active"><i class="icon ic-15"></i>电视</span> 
								</c:if>
								<c:if test="${house.electric.television!=1}">
								<span class="si-name   "><i class="icon ic-15"></i>电视</span> 
								</c:if>
								 <c:if test="${house.electric.refrigerator==1}">
								<span class="si-name   active"><i class="icon ic-9"></i>冰箱</span> 
								</c:if>
								<c:if test="${house.electric.refrigerator!=1}">
								<span class="si-name   "><i class="icon ic-9"></i>冰箱</span> 
								</c:if>
								 <c:if test="${house.electric.washingmachine==1}">
								<span class="si-name   active"><i class="icon ic-18"></i>洗衣机</span> 
								</c:if>
								<c:if test="${house.electric.washingmachine!=1}">
								<span class="si-name   "><i class="icon ic-18"></i>洗衣机</span> 
								</c:if>
								  <c:if test="${house.electric.airconditioner==1}">
								<span class="si-name   active"><i class="icon ic-12"></i>空调</span> 
								</c:if>
								<c:if test="${house.electric.airconditioner!=1}">
								<span class="si-name   "><i class="icon ic-12"></i>空调</span> 
								</c:if>
							</li>
							<li class="sc-item">
							 	<c:if test="${house.electric.wifi==1}">
								<span class="si-name   active"><i class="icon ic-11"></i>无线网</span> 
								</c:if>
								<c:if test="${house.electric.wifi!=1}">
								<span class="si-name   "><i class="icon ic-11"></i>无线网</span> 
								</c:if>
								<c:if test="${house.electric.heater==1}">
								<span class="si-name   active"><i class="icon ic-6"></i>热水器</span> 
								</c:if>
								<c:if test="${house.electric.heater!=1}">
								<span class="si-name   "><i class="icon ic-6"></i>热水器</span> 
								</c:if> 
								 <c:if test="${house.electric.gasstove==1}">
								<span class="si-name   active"><i class="icon ic-14"></i>燃气灶</span> 
								</c:if>
								<c:if test="${house.electric.gasstove!=1}">
								<span class="si-name   "><i class="icon ic-14"></i>燃气灶</span> 
								</c:if> 
								<c:if test="${house.electric.lampblackmachine==1}">
								<span class="si-name   active"><i class="icon ic-17"></i>油烟机</span> 
								</c:if>
								<c:if test="${house.electric.lampblackmachine!=1}">
								<span class="si-name   "><i class="icon ic-17"></i>油烟机</span> 
								</c:if>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<a id="hnai-3" style="margin-top:3em"></a>
			<div class="sec sec-3">
				<div class="sec-title">
					<img
						src="images/house-detail/sec-title-icon.png">租金详情
				</div>
				<div class="sec-main">
					<span class="sm-title">租金包括的费用</span>
					<ul class="sm-list">
						<c:if test="${house.charge.property==1}">
						<li class="sl-item active"><i class="sli-icon icon-1"></i><span class="sli-cont">物业费</span></li>
						</c:if>
						<c:if test="${house.charge.property!=1}">
						<li class="sl-item "><i class="sli-icon icon-1"></i><span class="sli-cont">物业费</span></li>
						</c:if>
						<c:if test="${house.charge.hygiene==1}">
						<li class="sl-item active"><i class="sli-icon icon-2"></i><span class="sli-cont">卫生费</span></li>
						</c:if>
						<c:if test="${house.charge.hygiene!=1}">
						<li class="sl-item "><i class="sli-icon icon-2"></i><span class="sli-cont">卫生费</span></li>
						</c:if>
						<c:if test="${house.charge.heating==1}">
						<li class="sl-item active"><i class="sli-icon icon-3"></i><span class="sli-cont">取暖费</span></li>
						</c:if>
						<c:if test="${house.charge.heating!=1}">
						<li class="sl-item "><i class="sli-icon icon-3"></i><span class="sli-cont">取暖费</span></li>
						</c:if>
						<c:if test="${house.charge.parkinglot==1}">
						<li class="sl-item active"><i class="sli-icon icon-4"></i><span class="sli-cont">车位费</span></li>
						</c:if>
						<c:if test="${house.charge.parkinglot!=1}">
						<li class="sl-item "><i class="sli-icon icon-4"></i><span class="sli-cont">车位费</span></li>
						</c:if>
						<c:if test="${house.charge.wificharge==1}">
						<li class="sl-item active"><i class="sli-icon icon-5"></i><span class="sli-cont">宽带费</span></li>
						</c:if>
						<c:if test="${house.charge.wificharge!=1}">
						<li class="sl-item "><i class="sli-icon icon-5"></i><span class="sli-cont">宽带费</span></li>
						</c:if>
						<c:if test="${house.charge.cabletv==1}">
						<li class="sl-item active"><i class="sli-icon icon-6"></i><span class="sli-cont">有线电视费</span></li>
						</c:if>
						<c:if test="${house.charge.cabletv!=1}">
						<li class="sl-item "><i class="sli-icon icon-6"></i><span class="sli-cont">有线电视费</span></li>
						</c:if>
						<c:if test="${house.charge.zili==1}">
						<li class="sl-item active"><i class="sli-icon icon-7"></i><span class="sli-cont">全部自理</span></li>
						</c:if>
						<c:if test="${house.charge.zili!=1}">
						<li class="sl-item "><i class="sli-icon icon-7"></i><span class="sli-cont">全部自理</span></li>
						</c:if>
						
					</ul>
				</div>
			</div>
			<a id="hnai-7"></a>
			<div class="sec sec-7">
				<div class="sec-title">
					<img
						src="images/house-detail/sec-title-icon.png">房东介绍
				</div>
				<div class="sec-main">
					<div class="owner-bar">
						<div class="td">
							<img
								src="images/house-detail/img-098.jpg"
								class="avatar">
						</div>
						<div class="td">
							<span class="o-info name">${house.user.username}</span> <span class="o-info role">业主</span>
						</div>
						<div class="td"></div>
						<div class="td">
							<div class="download-link">
								<img
									src="images/house-detail/down-load-hover.png">下载APP直接电话联系房东
							</div>
						</div>
					</div>
					<div class="speech">
						<div class="sp-item">
							<h1 class="title">房东寄语</h1>
							<p>${house.landlordwordsent}</p>
						</div>
						<div class="sp-item si-2">
							<h1 class="title">对租客的要求</h1>
							<p>${house.landlordask}</p>
							
						</div>
					</div>
				</div>
			</div>
			<a id="hnai-4"></a>
			<div class="sec sec-4">
				<div class="sec-title">
					<img
						src="images/house-detail/sec-title-icon.png">服务承诺&amp;特别提醒
				</div>
				<div class="sec-main">
					服务承诺： 1、在线签约、线上支付，你“确认入住”后，房东才可以提取你在线支付的租金；
					2、选择“特约房东”所属的房屋，并通过火炬租房在线签约或上传线下签订的合同，如遇欺诈火炬先行赔付； <br> 特别提醒：
					1、如你没有通过火炬租房签约，切勿因任何原因在入住或签署合同前付款；
					2、如你没有通过火炬租房签约，将无法享受火炬租房所有安全担保服务； 3、租房过程中，请你务必核验对方的出租资质及相关证照。
				</div>
			</div>
			<a id="hnai-5"></a>
			<div class="sec sec-5">
				<div class="sec-title">
					<img
						src="images/house-detail/sec-title-icon.png">位置信息
				</div>
				<div class="sec-main" >
					<div class="h-around">
						<div>
							<input id="keyword" value="美食" type="text"> <input
								value="搜索" onclick="searchKeyword()" type="button">
						</div>
						<ul class="ha-list">
							<li onclick="searchKeyword2(this);" class="hal-item curr"><span  class="hali-cont">美食</span></li>
							<li onclick="searchKeyword2(this);" class="hal-item"><span  class="hali-cont">超市</span></li>
							<li onclick="searchKeyword2(this);" class="hal-item"><span  class="hali-cont">银行</span></li>
							<li onclick="searchKeyword2(this);" class="hal-item"><span  class="hali-cont">医院</span></li>
							<li onclick="searchKeyword2(this);" class="hal-item"><span  class="hali-cont">地铁</span></li>
							<li onclick="searchKeyword2(this);" class="hal-item"><span  class="hali-cont">公交</span></li>
						</ul>
					</div>
					<div class="map" id="map"></div>
					<input id="address" type="hidden" value="${house.location}">
				</div>
			</div>
			<a id="hnai-8"></a>
			<div class="sec sec-8">
				<div class="sec-title">
					<img
						src="images/house-detail/sec-title-icon.png">交易保障<input type="hidden" id="maplocation" value="${house.location}"></input>
				</div>
				<div class="sec-main">
					<ul class="list">
						<li class="item"><i class="icon">1</i>
							<h1>房子房东全验真</h1>
							<h2>每天在线实时更新海量房源每间房子均经审核验真</h2></li>
						<li class="item"><i class="icon">2</i>
							<h1>直联直签无中介</h1>
							<h2>租客、房东直接联系、看房、签约无任何中介环节及中介费用</h2></li>
						<li class="item"><i class="icon">3</i>
							<h1>租金押金不克扣</h1>
							<h2>租金、押金，在线担保支付，确认入住后才付出，杜绝欺诈与克扣</h2></li>
					</ul>
				</div>
			</div>
<!-- footer -->
	<div class="footer">
	     <%@include file="footer.jsp" %>
	</div> 
</div>
</div>
<script type="text/javascript">
   var searchService, markers = [];
   //初始化经纬度
   var jw1=39.916527;
   var jw2=116.397128;
  $(function(){
        //调用地址解析类
	     geocoder = new qq.maps.Geocoder({
		 complete : function(result){
				  var jwstr=result.detail.location.toString();
				  //得到经纬度的值，即地址的详细
				  var arry=jwstr.split(",");
				      jw1=arry[0];
				      jw2=arry[1];
				      
				        
				  var center = new qq.maps.LatLng(jw1,jw2);
				  
			      var map = new qq.maps.Map(document.getElementById('map'), {
			              center: center,
			              zoom: 13
			          });
			          
			       //标注详细信息
			      var marker = new qq.maps.Marker({
		                map:map,
		                position: result.detail.location
		            }); 
		            
		            
                 //设置Poi检索服务，用于本地检索_周边检索
                searchService = new qq.maps.SearchService({
                //检索成功的回调函数
                complete: function(results) {
                    //设置回调函数参数
                    var pois = results.detail.pois;
                    var infoWin = new qq.maps.InfoWindow({
                        map: map
                    });
                    if(keyword.value=='超市'){
                        icon = new qq.maps.MarkerImage(
                            "./images/house-detail/icon-market.png"
                        );
                    }else if(keyword.value=='美食'){
                        icon = new qq.maps.MarkerImage(
                            "./images/house-detail/icon-food.png"
                        );
                    }
                    else if(keyword.value=='银行'){
                        icon = new qq.maps.MarkerImage(
                            "./images/house-detail/icon-bank.png"
                        );
                    }
                    else if(keyword.value=='医院'){
                        icon = new qq.maps.MarkerImage(
                            "./images/house-detail/icon-hospital.png"
                        );
                    }
                    else if(keyword.value=='公交'){
                        icon = new qq.maps.MarkerImage(
                            "./images/house-detail/icon-bus.png"
                        );
                    }
                    else if(keyword.value=='地铁'){
                        icon = new qq.maps.MarkerImage(
                            "./images/house-detail/icon-metro.png"
                        );
                    }
                    var latlngBounds = new qq.maps.LatLngBounds();
                    for (var i = 0, l = pois.length; i < l; i++) {
                        var poi = pois[i];
                        //扩展边界范围，用来包含搜索到的Poi点
                        latlngBounds.extend(poi.latLng);
                        (function(n) {
                            var marker = new qq.maps.Marker({
                                map: map
                            });
                            marker.setPosition(pois[n].latLng);

                            marker.setTitle(i + 1);
                            marker.setIcon(icon);
                            markers.push(marker);

                            qq.maps.event.addListener(marker, 'click', function() {
                                
                                infoWin.open();
                                infoWin.setContent('<div>' + '名称：' + pois[n].name + '，地址：' + pois[n].address+'</div>');
                                infoWin.setPosition(pois[n].latLng);
                            });
                        })(i);
                    }
                    infoWin.close();
                    markerOri.setPosition(center);
                    //调整地图视野
                    map.fitBounds(latlngBounds);

                },
                //若服务请求失败，则运行以下函数
                error: function() {
                    // alert("出错了。");
                }
            });
                //调用搜索方法
                searchKeyword();   
		   }
		});
			//通过getLocation();方法获取位置信息值
			var region = $("#maplocation").val();
		    geocoder.getLocation(region);
	  });
                //清除地图上的marker
                function clearOverlays(overlays) {
                    var overlay;
                    while (overlay = overlays.pop()) {
                        overlay.setMap(null);
                    }
                }
                //设置搜索的范围和关键字等属性
                function searchKeyword() {
                     var keyword = $('#keyword').val();
		                if(keyword == null)
		                {
		                    keyword = '美食';
		                }
                    clearOverlays(markers);
                    //根据输入的城市设置搜索范围
                   // searchService.setLocation(region);
                    //设置搜索页码
                    searchService.setPageIndex(1);
                    //设置每页的结果数
                    searchService.setPageCapacity(6);
                    //根据输入的关键字在搜索范围内检索
                    //searchService.search(keyword);
                     var region2 = new qq.maps.LatLng(jw1,jw2);
                     searchService.searchNearBy(keyword, region2 , 2000);
                   
                }
                function searchKeyword2(obj){
                   //变换选择超市及其它
                    $(".hal-item.curr").attr("class","hal-item");
                    $(obj).attr("class","hal-item curr");
                    var keyword=$(obj).children().html();
                    $("#keyword").val(keyword);
                    searchKeyword();
                }
                /* }
                } */
</script>
</body>
</html>