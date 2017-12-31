<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<html lang="zh-cn">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"><script type="text/javascript" src="js/hm_002.js"></script>
<script src="js/hm.js"></script>
<script async="" src="js/a_003.js"></script>          
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="baidu-site-verification" content="854aGcgynm">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/nivo-default.css" type="text/css">
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css">
<link rel="shortcut icon" href="http://pc.huoju365.com/static/img/favicon.ico" type="image/x-icon">
<script src="js/jquery_003.js"></script>
<script src="js/jquery_004.js"></script>
<script src="js/contswitcher.js"></script>
<script src="js/popover.js"></script>
<script src="js/paddingBottom.js"></script>
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/toast.js"></script>
<script src="js/jquery_002.js"></script>

<script src="js/jquery_005.js"></script>

<script src="js/Validform_v5.js"></script>
<script src="js/jquery_006.js"></script>
<link rel="stylesheet" href="css/bootstrap.css" type="text/css"></link>
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?10dd261f89230a8d60357768d8128133";
  var s = document.getElementsByTagName("script")[0];
  s.parentNode.insertBefore(hm, s);
})();

    $(function(){
      
        $.getJSON("subscribe/getAreaJson2",function(result){ 
               $("#province").append("<option>--请选择--</option>");
              $("#city").append("<option>--请选择--</option>");
              $("#county").append("<option>--请选择--</option>");
              $("#town").append("<option>--请选择--</option>");
             for(var i=0;i<result.length;i++){
                 
			    $("#province").append("<option value='"+result[i][0].province_name+"'>"+result[i][0].province_name+"</option>"); 
             
              } 
       
            });
     });
     
     
     function getCity(){
          var provinceID=$("#province").val();
          $("#city").empty();
          $("#county").empty();
          $("#city").append("<option>--请选择--</option>");
          $("#county").append("<option>--请选择--</option>");
       
        $.getJSON("subscribe/getAreaJson2",function(result){ 
             var k=1;
             for(var i=0;i<result.length;i++){
                  if(result[i][0].province_name==provinceID){
                    for(var j=0;j<result[i].length;j++){
                       
                       if(result[i][j].city_name!=result[i][k++].city_name & k<=result[i].length){
                           
                              $("#city").append("<option value='"+result[i][j].city_name+"'>"+result[i][j].city_name+"</option>"); 
                       }
                       
                
                    }
                     
                 }
              
              } 
       
            });
     
     };
      function getCounty(){
          var provinceID=$("#province").val();
          var cityID=$("#city").val();
          $("#county").empty();
          $("#county").append("<option>--请选择--</option>");
          $("#town").append("<option>--请选择--</option>");
      $.getJSON("subscribe/getAreaJson2",function(result){ 
             for(var i=0;i<result.length;i++){
                      for(var j=0;j<result[i].length;j++){
                        var a=1;   
                         if(cityID==result[i][j].city_name){
                                  a=j;
                                   a++;
                                 if(result[i][j].county_name!=result[i][a].county_name){
                                   
	                              $("#county").append("<option value='"+result[i][j].county_name+"'>"+result[i][j].county_name+"</option>"); 
	                            }
                              
                              }
                    }
              } 
       
            });
     };
     
     function getTown(){
          
          var countyID=$("#county").val();
          $("#town").empty();
            $("#county").append("<option>--请选择--</option>");
          $("#town").append("<option>--请选择--</option>");
          $.getJSON("subscribe/getAreaJson2",function(result){ 
             for(var i=0;i<result.length;i++){
                      for(var j=0;j<result[i].length;j++){
                        var c=1;   
                         if(countyID==result[i][j].county_name){
                                  c=j;   c++;
                                 if(result[i][j].town_name!=result[i][c].town_id){
                                   
	                              $("#town").append("<option value='"+result[i][j].town_name+"'>"+result[i][j].town_name+"</option>"); 
	                            }
                              
                              }
                    }
              } 
       
            });
     };
     
     
      
     
     
     
     
       function getPctJson(){
          $.getJSON("subscribe/getAreaJson",function(result){ 
              alert("ldksjfklsdjfkl");
             alert(result[0].town_name);
       
       });
       };
         function getPctJson2(){
          $.getJSON("subscribe/getAreaJson2",function(result){ 
              alert("ldksjfklsdjfkl");
             /*  [[{"province_id":110,
              "province_name":"北京市",
              "city_id":"110100000000",
              "city_name":"市辖区",
              "county_id":"110101000000",
              "county_name":"东城区",
              "town_id":"110101001000",
              "town_name":"东华门街道办事处"}, */
             alert(result[0][0].town_name);
             alert(result.length);
             for(var i=0;i<result.length;i++){
                  
                  for(var j=0;j<result[i].length;j++){
                        /* console.log(result[i][j]); */
                        alert(result[i][j].province_name);
	                  } 
	             }
	       });   
       
       
        };
     
  
     
   
</script>
<style type="text/css">
    .one{
      color:black;
    }
    .two{
       color: orange;
      
    }
    li{
       margin: 0 10px;
    }
</style>
<title>【房东低价出租北京租房子】北京租房信息_北京房屋出租_北京租房网站_火炬租房 一款能秒杀黑中介的APP_安全担保,如遇欺诈先行赔付_确认入住再付租金_押金包退杜绝克扣</title>
<meta name="keywords" content="北京租房子_北京租房信息_北京房屋出租_北京租房网站_无中介租房_安全找房_火炬租房官网_huojuzufang ">
<meta name="description" content="火炬租房 一款能秒杀黑中介的APP_怕黑？就用火炬租房！房子房东全验真 每天在线实时更新海量房源 每间房子均经审核验真，直联直签无中介 租客、房东直接联系、看房、签约 无任何中介环节及中介费用，租金押金不克扣 租金、押金，在线担保支付，确认入住后才付出，杜绝欺诈与克扣">
<script src="js/share.js"></script>
<script type="text/javascript" charset="utf-8" src="js/a.js"></script>
<script type="text/javascript" charset="utf-8" src="js/a_002.js"></script>
<link rel="stylesheet" href="css/slide_share.css"></head>
<body class="rent search">
   <div class="container">
 
       <div id="not-open">
      <p>北京以外的地区，正在玩命开通中，</p>
      <p>敬请期待！</p>
   </div>
  <div class="header">
    <!-- 头部 -->
    <div class="wrapper">
        <%@include file="header.jsp" %>
     </div>
    <div class="navbox n-box-2">
         <div class="quick-search">
               
         <ul class="list">
              <li class="item father area">
                   <h2 class="title">按区域找房子</h2>
               </li>        
                       
         </ul>
        
        </div>
    </div>
</div>
<script>

</script>
    <!--Banner 非必须 -->
    <div class="banner"></div>

    <!-- 主体 -->
    <div class="main">
        <div class="wrapper">
            <!-- 当前位置 -->
            <div class="cur-pos"><a target="_blank" href="">首页</a> &gt; <a target="_blank" href="">我要找房</a></div>
            <!-- End当前位置 -->

			            <!-- 过滤表单 -->
			         <!--    <ul>
			               <li>
			                <div class="switcher">
			                    
			                    <span class="switcher-item curr"><i class="icon ic-1"></i>区域</span>
			                    			                    			                    			
                    		 </div>
                    		 </li>
                         </ul> -->
			       <form class="form-horizontal" action="quickrent/select" method="post" id="form">
			    
				        <ul>
				         
				            <label class="fg-title" style=" margin-right: 13px;float: left;" >区域:</label>
				           
				          
					       <select class="form-control" id="province" onchange="getCity()" name="pname" style="width: 15% ;display: block; float: left;"></select>
					      
					        <select class="form-control" id="city" onchange="getCounty() " style="width: 15% ;display: block; float: left;"></select>
					      
					        <select class="form-control" id="county" onchange="getTown()" style="width: 15% ;display: block; float: left;"></select>
					      
					        <select class="form-control" id="town" style="width: 15% ;display: block; float: left;"></select>
					     
					       
				        </ul>     
				      
				       <ul>
				               <label >租住时间:</label>
				            <input type="radio" name="cnz" value="年租">年租
				             <input type="radio" name="cnz" value="纯月租">纯月租
				       </ul>

				       <ul>
				           <label >租住时间:</label>
				           <input type="radio" name="cnz" value="年租">年租
				           <input type="radio" name="cnz" value="纯月租">纯月租
				       </ul>
				        <ul>
				           <label class="fg-title" style=" margin-right: 13px;">租住类型:</label>
				           <input type="radio" name="zz" value="整租">整租
				           <input type="radio" name="zz" value="合租">合租
				       </ul>
				   <!--     <input type="submit" value="提交"> -->
				   <button class="btn  btn-search" type="submit" class="search-bar">搜索</button>
                  </form>
    <!-- footer -->
<div class="footer">
     <%@include file="footer.jsp" %>
</div>  
<script>
    $('.item.weixin').hover(function(){
        $('.s-qrcode').show();
    },function(){
        $('.s-qrcode').hide();
    })
</script></div>
<script>
    $(function(){
        //排序按钮
        // $('.btn-ctl').click(function(){
        //     if($(this).hasClass('curr')){
        //         $(this).toggleClass('up');
        //     }else{
        //         $('.btn-ctl').removeClass('curr');
        //          $('.btn-ctl').removeClass('up');
        //         $(this).addClass('curr');
        //     }  
        // })
         //小区列表
        function log( message ) {
            $( "#txt-cmt" ).val( message );
        };
        $( "#txt-cmt" ).autocomplete({
            minLength: 0,
             // open: function() { $('.ui-menu').width($('#txt-cmt').width()) },
            source: "http://pc.huoju365.com/index.php/housing/coordinates_community_list_ajax.html",
            focus: function( event, ui ) {
                $( "#txt-cmt" ).val( ui.item.name);
                log( ui.item ? ui.item.name : '没选择');
                $('.err-tip.st1').css('visibility','hidden');
                // return false;
            },
            select: function( event, ui ) {
                $( "#txt-cmt" ).val( ui.item.name );
                log( ui.item ? ui.item.name : '没选择');
                $('.err-tip.st1').css('visibility','hidden');
                return false;
            }
        })
        .autocomplete( "instance" )._renderItem = function( ul, item ) {
            return $( "<li>" )
            .append( "<a><span class='cmt-name'>" + item.name + "</span><span class='desc'>" + (item.address ? item.address:'') + "</span></a>" )
                .appendTo( ul );
        };
    })
</script>
<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"1","bdMiniList":["weixin","sqq","mshare","copy","qzone","douban","tsina","tieba"],"bdPic":"","bdStyle":"0","bdSize":"16"},"slide":{"type":"slide","bdImg":"0","bdPos":"right","bdTop":"250"}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>

<div style="position: fixed; width: 60px; height: 60px; cursor: pointer; bottom: 56px; right: 56px; display: none;" class="goup-container" title="">
<div class="goup-arrow" style="width: 0px; height: 0px; margin: 0px auto; padding-top: 13px;"></div>
</div>
   <div id="YUa9uTsC2UnWAenMqKqBww3k" style="display:none"><script id="369af91719ff78166f59b98a4994ad0e" type="text/javascript" src="%E3%80%90%E6%88%BF%E4%B8%9C%E4%BD%8E%E4%BB%B7%E5%87%BA%E7%A7%9F%E5%8C%97%E4%BA%AC%E7%A7%9F%E6%88%BF%E5%AD%90%E3%80%91%E5%8C%97%E4%BA%AC%E7%A7%9F%E6%88%BF%E4%BF%A1%E6%81%AF_%E5%8C%97%E4%BA%AC%E6%88%BF%E5%B1%8B%E5%87%BA%E7%A7%9F_%E5%8C%97%E4%BA%AC%E7%A7%9F%E6%88%BF%E7%BD%91%E7%AB%99_%E7%81%AB%E7%82%AC%E7%A7%9F%E6%88%BF%20%E4%B8%80%E6%AC%BE%E8%83%BD%E7%A7%92%E6%9D%80%E9%BB%91%E4%B8%AD%E4%BB%8B%E7%9A%84APP_%E5%AE%89%E5%85%A8%E6%8B%85%E4%BF%9D,%E5%A6%82%E9%81%87%E6%AC%BA%E8%AF%88%E5%85%88%E8%A1%8C%E8%B5%94%E4%BB%98_%E7%A1%AE%E8%AE%A4%E5%85%A5%E4%BD%8F%E5%86%8D%E4%BB%98%E7%A7%9F%E9%87%91_%E6%8A%BC%E9%87%91%E5%8C%85%E9%80%80%E6%9D%9C%E7%BB%9D%E5%85%8B%E6%89%A3_files/a.htm"></script></div>
   <div class="bdshare-slide-button-box bdshare-slide-style-r0" style="top: 250px; width: 0px; z-index: 99999; right: 0px;" data-bd-bind="1510272211895"><a href="#" onclick="return false;" class="bdshare-slide-button" style="left: -24px;"></a>
   <div class="bdshare-slide-list-box" style="width: 0px; display: none;">
   <div class="bdshare-slide-top">分享到</div><div class="bdshare-slide-list"><ul class="bdshare-slide-list-ul" style="width: 116px;"></ul></div>
   <div class="bdshare-slide-bottom" style="width: 116px;"><a href="#" onclick="return false;" class="slide-more" data-cmd="more">更多...</a></div>
  </div>
</div>
<script type="text/javascript" src="%E3%80%90%E6%88%BF%E4%B8%9C%E4%BD%8E%E4%BB%B7%E5%87%BA%E7%A7%9F%E5%8C%97%E4%BA%AC%E7%A7%9F%E6%88%BF%E5%AD%90%E3%80%91%E5%8C%97%E4%BA%AC%E7%A7%9F%E6%88%BF%E4%BF%A1%E6%81%AF_%E5%8C%97%E4%BA%AC%E6%88%BF%E5%B1%8B%E5%87%BA%E7%A7%9F_%E5%8C%97%E4%BA%AC%E7%A7%9F%E6%88%BF%E7%BD%91%E7%AB%99_%E7%81%AB%E7%82%AC%E7%A7%9F%E6%88%BF%20%E4%B8%80%E6%AC%BE%E8%83%BD%E7%A7%92%E6%9D%80%E9%BB%91%E4%B8%AD%E4%BB%8B%E7%9A%84APP_%E5%AE%89%E5%85%A8%E6%8B%85%E4%BF%9D,%E5%A6%82%E9%81%87%E6%AC%BA%E8%AF%88%E5%85%88%E8%A1%8C%E8%B5%94%E4%BB%98_%E7%A1%AE%E8%AE%A4%E5%85%A5%E4%BD%8F%E5%86%8D%E4%BB%98%E7%A7%9F%E9%87%91_%E6%8A%BC%E9%87%91%E5%8C%85%E9%80%80%E6%9D%9C%E7%BB%9D%E5%85%8B%E6%89%A3_files/get" id="adData"></script>
  
  </body>
 </html>