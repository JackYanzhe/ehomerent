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

<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<style type="text/css">
    .one{
      color:black;
    }
    .two{
       color: orange;
       
      
    }
 
    .fenyepage{
       margin: 0 0px;
       display:inline-block;
      
      
    }
    .hidden{
       hidden:hidden;
    }
  
</style>
<script type="text/javascript">
   $(function(){
      $(".option-link0").mousedown(function(){
	          $(".option-link0").attr("class","option-link0");
	          $(this).attr("class","option-link0 curr");
	         
	      });
      $(".option-link1").mousedown(function(){
          $(".option-link1").attr("class","option-link1");
         $(this).attr("class","option-link1 curr");
      
      });
       $(".option-link2").mousedown(function(){
          $(".option-link2").attr("class","option-link2");
         $(this).attr("class","option-link2 curr");
      
      });
      $(".option-link3").mousedown(function(){
          $(".option-link3").attr("class","option-link3");
         $(this).attr("class","option-link3 curr");
      
      });
      $(".option-link4").mousedown(function(){
          $(".option-link4").attr("class","option-link4");
         $(this).attr("class","option-link4 curr");
      });
     
     
     commitform();
   });
   function commitform(){
     /*  var renttype :月租 年租
             quicktype:整租  单间
             housetype:户型
             monthpay:租金
       */
          var renttype=$(".option-link0.curr").children().html();
          var quicktype=$(".option-link1.curr").children().html();
          var housetype=$(".option-link2.curr").children().html();
          var monthpay=$(".option-link3.curr").children().html();
          
          var pageNo=1;
   
         var monthpaymin=null;
          var monthpaymax=null;
          
          if(monthpay.indexOf("不限")==-1){
               monthpaymin=monthpay.substring(0,4);
             if(monthpay.indexOf("8000元以上")>-1){
                  monthpaymax=8000.00;
                /*  alert(monthpaymin+","+monthpaymax); */
             }if(monthpay.indexOf("1500元以下")>-1){
                  monthpaymax=1500.00;
                  monthpaymin=0.00;
                /*  alert(monthpaymin+","+monthpaymax); */
             }else if(monthpay.indexOf("8000元以上")==-1&monthpay.indexOf("1500元以下")==-1){
                 monthpaymax=monthpay.substring(5,9);
                /*  alert(monthpaymin+","+monthpaymax); */
             }
            
            
          }else{
              monthpaymin=-1; 
              monthpaymax=9999.00; 
            
          }
          
             
          
           /*获取page当前页*/
             var pagenocurr=$("#pagenocurr").val();
             // alert("page2****************"+pagenocurr);
               var p1=1;
                
            
              
           /* alert(renttype+","+quicktype+","+housetype+","+monthpay); */
           $.getJSON("quickrent/queryDynHouseInfo?renttype="+renttype+"&quicktype="+quicktype+"&housetype="+housetype+"&monthpaymin="+monthpaymin+"&monthpaymax="+monthpaymax+"&pageNo="+pagenocurr,function(result){
              /* alert(result.pageList[0].paytype); */
              $(".qksulist").empty();
             
              for(var i=0;i<result.pageList.length;i++){
                   $(".qksulist").append("<a target='_blank' href='${pageContext.request.contextPath}/housedetail?id="+result.pageList[i].houseinfoid+"' class='link-h-item'>" +
					" <li class='h-item'>" +
					"<img class='preview-wrapper' src='"+result.pageList[i].houseimg.imgurl1+"'></img>" +
					"<div class='h-info'>" +
					"<div class='h-name-price'>" +
					"<span class='h-name'>"+result.pageList[i].houseadress+"</span>" +
					"<span class='h-price'>¥"+result.pageList[i].monthpay+"</span>" +
					" </div>" +
					"<div class='h-type-will'>" +
					"<span class='h-type'>"+result.pageList[i].housetype+"</span>" +
					"<span class='h-type'>"+result.pageList[i].quicktype+"</span>" +
					"<span class='h-type'>"+result.pageList[i].paytype+"</span>" +
					" <span class='h-will'>已有<span class='highlight'> 159 </span>人想租</span>" +
					"</div>" +
					"<div class='h-label'>" +
					"<span class='h-label-item'>无押金</span>" +
					"<span class='h-label-item'>家电齐全</span>" +
					"</div>" +
					" <div class='owner-info'>" +
					"<img src='images/userimg111.png' class='owner-icon'>" +
					"<div class='o-name'>"+result.pageList[i].user.loginname+"</div>" +
					"<div class='o-type-pubdate'>" +
					"<span class='o-type'> 业主   </span></div>" +
					" <div class='o-type-pubdate'>" +
					
					"</div>" +
					"<div class='divider'></div>" +
					"</li></a>");
             };
             
             
             
                /*分页*/
                $(".pagination").empty();
                var pageno=result.pageNo;
                var totlpage=result.totalPage;
               /*总页数减去当前页*/
                var sy=totlpage-pageno;
                if(sy<5){
                      pageno=totlpage-4;
                      p1=totlpage-3;
                      var p2=totlpage-2;
                      var p3=totlpage-1;
                      var p4=totlpage; 
                   /*     p1=pageno+1;
                        var p2=pageno+2;
                      var p3=pageno+3;
                      var p4=totlpage; */
                
                }else{
                   p1=pageno+1;
                    var p2=pageno+2;
                    var p3=pageno+3;
                    var p4=pageno+4; 
                   
                }
                if(totlpage<5)
                {
                    pageno=1;
                      p1=2;
                      var p2=3;
                      var p3=4;
                      var p4=5; 
                }
                
                
                   var left=pageno-1;
                  
                   var right=pageno+1;
                   
                   //var qupagecurr=$(obj).html();
                 
                /*控制到最后一页不在显示*/ 
               /*  alert("****************************pageno**************"+pageno+"_______p1_____"+p1+p2+p3+p4+"=========总页数========="+totlpage);
              */
                /*分页*/
             
           var col=pagenocurr;
              
              $(".pagination").append(
                 "  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 当前 <font color='red'> "+col+" </font>页 &nbsp;&nbsp;&nbsp;" +
                 "<li value='1' class='fenyepage curr' ' id='f1'><span class='page-nav'> 首页 </span></li>"+
                    "<li value='"+left +"' class='fenyepage'  id='f2'><span class='page-nav'> << </span></li>"+
                    "<li value='"+pageno+"' class='fenyepage'  id='f3'><span class='page-nav'>"+pageno+"</span></li>"+
                    "<li value='"+p1+"' class='fenyepage'  id='f4'><span class='page-nav'>"+p1+"</span></li>"+
                    "<li value='"+p2+"' class='fenyepage'  id='f5'><span class='page-nav'>"+p2+"</span></li>"+
                    "<li value='"+p3+"' class='fenyepage'  id='f6'><span class='page-nav'>"+p3+"</span></li>"+
                    "<li value='"+p4+"' class='fenyepage'  id='f7'><span class='page-nav' id='p4'>"+p4+"</span></li>"+
                     "<li value='"+right +"' class='fenyepage'  id='f8'><span class='page-nav'> >> </span></li>"+
                     "<li value='"+result.totalPage+"' class='fenyepage'  id='f9'><span class='page-nav'> 末页 </span></li>"
                    + "  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 总 <font color='red'> "+result.totalPage+" </font>页" 
                    
                );
                    /*为首页*/
                    $("#f1").click(function(){
                          
                          $("#pagenocurr").val( $("#f1").val());
                          commitform();
                     });
                    /*点击上一页时传递当前页-1*/
                     $("#f2").click(function(){
                          /*当当前页大于第一页，才能触发上一页 left为上页的页码，上页页码为零时将不再触发*/
                          //alert("lfet============"+left);
                          if($("#pagenocurr").val()>1&&left!=0)
                          {
                          //alert("xianshi+++++++++++++++++"+$("#pagenocurr").val());
                          $("#pagenocurr").val( $("#f2").val());
                          commitform();
                          }
                        
                     });
                     
                     /*显示当前页码*/
                     $("#f3").click(function(){
                        
                          //$("#f3").css("background","#666");
                         $("#pagenocurr").val( $("#f3").val());
                         commitform();
                       
                        
                     });
                     
                     /*f4 f5 f6 f7 依次为页码显示的页面 */
                     $("#f4").click(function(){
                         $("#pagenocurr").val( $("#f4").val());
                          commitform();
                     });
                     $("#f5").click(function(){
                         $("#pagenocurr").val( $("#f5").val());
                          commitform();
                     });
                      $("#f6").click(function(){
                         $("#pagenocurr").val( $("#f6").val());
                          commitform();
                     });
                      $("#f7").click(function(){
                         $("#pagenocurr").val( $("#f7").val());
                          commitform();
                     });
                     /*显示下一页*/
                      $("#f8").click(function(){
                         /*当当前页小于总页数才能进行触发下页*/
                           if($("#pagenocurr").val()<totlpage-1)
                          {
                           
	                         $("#pagenocurr").val( $("#f8").val());
	                      
	                          commitform();
	                          
                          }
                          
                       
                          
                     });
                        /*显示最后一页*/
                      $("#f9").click(function(){
                         $("#pagenocurr").val( $("#f9").val());
                          commitform();
                     });
                   
                  
               
            
                
                 
           });
         function pagenocurrqt(obj){
         
            alert($(obj).html());
         
         }
     
          
       
    
   }

    
   
</script>
<style type="text/css">
    .show{
       display: none;
       hidden:hidden;
    }
</style>
<title>【房东低价出租北京租房子】北京租房信息_北京房屋出租_北京租房网站_火炬租房 一款能秒杀黑中介的APP_安全担保,如遇欺诈先行赔付_确认入住再付租金_押金包退杜绝克扣</title>
<meta name="keywords" content="北京租房子_北京租房信息_北京房屋出租_北京租房网站_无中介租房_安全找房_火炬租房官网_huojuzufang ">
<meta name="description" content="火炬租房 一款能秒杀黑中介的APP_怕黑？就用火炬租房！房子房东全验真 每天在线实时更新海量房源 每间房子均经审核验真，直联直签无中介 租客、房东直接联系、看房、签约 无任何中介环节及中介费用，租金押金不克扣 租金、押金，在线担保支付，确认入住后才付出，杜绝欺诈与克扣">
<link rel="stylesheet" href="css/slide_share.css"></head>
<body class="rent search">

       <div id="not-open">
      <p>北京以外的地区，正在玩命开通中，</p>
      <p>敬请期待！</p>
   </div>
  <div class="header">
        <%@include file="header.jsp" %>
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
			                <div class="switcher">
			                    <span class="switcher-item curr"><i class="icon ic-1"></i>区域</span>		
			                    	                    			                    			
                    		 </div>
			       <form action="quickrent/select" method="post" id="form">
			             <div class="form-main">
				                    <!-- 区域 -->
				                    <div class="fm-box active" id="fm_addr">
				                      <!--   <div class="form-group">
				                            <span class="fg-title" style=" margin-right: 13px;">区域:</span>
				                            <div class="fg-main">     							                        
    				                            <a href="http://pc.huoju365.com/index.php/housing/area/1/-1/0/0/0/0/0/0/0.html" class="area-name " id="showdis_1">
				                                <span class="fg-menu">朝阳</span>
				                            </a>        							                        
    				                            <a href="http://pc.huoju365.com/index.php/housing/area/2/-1/0/0/0/0/0/0/0.html" class="area-name " id="showdis_2">
				                                <span class="fg-menu">海淀</span>
				                            </a>       							                        
    				                            <a href="http://pc.huoju365.com/index.php/housing/area/3/-1/0/0/0/0/0/0/0.html" class="area-name " id="showdis_3">
				                                <span class="fg-menu">东城</span>
				                            </a>        							                        
    				                            <a href="http://pc.huoju365.com/index.php/housing/area/4/-1/0/0/0/0/0/0/0.html" class="area-name " id="showdis_4">
				                                <span class="fg-menu">西城</span>
				                            </a><a href="http://pc.huoju365.com/index.php/housing/area/7/-1/0/0/0/0/0/0/0.html" class="area-name " id="showdis_7">
				                                <span class="fg-menu">丰台</span>
				                            </a><a href="http://pc.huoju365.com/index.php/housing/area/8/-1/0/0/0/0/0/0/0.html" class="area-name " id="showdis_8">
				                                <span class="fg-menu">通州</span>
				                            </a><a href="http://pc.huoju365.com/index.php/housing/area/9/-1/0/0/0/0/0/0/0.html" class="area-name " id="showdis_9">
				                                <span class="fg-menu">石景山</span>
				                            </a><a href="http://pc.huoju365.com/index.php/housing/area/10/-1/0/0/0/0/0/0/0.html" class="area-name " id="showdis_10">
				                                <span class="fg-menu">房山</span>
				                            </a><a href="http://pc.huoju365.com/index.php/housing/area/11/-1/0/0/0/0/0/0/0.html" class="area-name " id="showdis_11">
				                                <span class="fg-menu">昌平</span>
				                            </a><a href="http://pc.huoju365.com/index.php/housing/area/12/-1/0/0/0/0/0/0/0.html" class="area-name " id="showdis_12">
				                                <span class="fg-menu">大兴</span>
				                            </a><a href="http://pc.huoju365.com/index.php/housing/area/13/-1/0/0/0/0/0/0/0.html" class="area-name " id="showdis_13">
				                                <span class="fg-menu">顺义</span>
				                            </a><a href="http://pc.huoju365.com/index.php/housing/area/14/-1/0/0/0/0/0/0/0.html" class="area-name " id="showdis_14">
				                                <span class="fg-menu">密云</span>
				                            </a><a href="http://pc.huoju365.com/index.php/housing/area/15/-1/0/0/0/0/0/0/0.html" class="area-name " id="showdis_15">
				                                <span class="fg-menu">怀柔</span>
				                            </a><a href="http://pc.huoju365.com/index.php/housing/area/16/-1/0/0/0/0/0/0/0.html" class="area-name " id="showdis_16">
				                                <span class="fg-menu">延庆</span>
				                            </a><a href="http://pc.huoju365.com/index.php/housing/area/17/-1/0/0/0/0/0/0/0.html" class="area-name " id="showdis_17">
				                                <span class="fg-menu">平谷</span>
				                            </a><a href="http://pc.huoju365.com/index.php/housing/area/18/-1/0/0/0/0/0/0/0.html" class="area-name " id="showdis_18">
				                                <span class="fg-menu">门头沟</span>
				                            </a><a href="http://pc.huoju365.com/index.php/housing/area/19/-1/0/0/0/0/0/0/0.html" class="area-name " id="showdis_19">
				                                <span class="fg-menu">燕郊</span>
				                            </a><a href="http://pc.huoju365.com/index.php/housing/area/20/-1/0/0/0/0/0/0/0.html" class="area-name " id="showdis_20">
				                                <span class="fg-menu">北京周边</span>
				                            </a>
				           </div>
				                        </div>  		 -->		                        
				                       <div class="form-group">
				                            <span class="fg-title">租住时间:</span>
				                   	        <a href="#" onclick="commitform();" class="option-link0 curr"><label onclick="commitform();" class="label">不限</label></a>
				                            <a href="#" onclick="commitform();" class="option-link0"><label class="label">年租</label></a>
				                            <a href="#" onclick="commitform();" class="option-link0"><label class="label">纯月租</label></a>
				                            
				                        </div>
				                        <div class="form-group">
				                            <span class="fg-title">租住类型:</span>
				                            				       <!--  curr -->                     				                            
				                            <a href="#" onclick="commitform();" class="option-link1 curr"><label class="label">不限</label></a>
				                            <a href="##" onclick="commitform();" class="option-link1"><label class="label">整租</label></a>
				                            <a href="##" onclick="commitform();" class="option-link1"><label class="label">合租</label></a>
				                            <a href="#" onclick="commitform();" class="option-link1"><label class="label">单间</label></a>
				                            <a href="#" onclick="commitform();" class="option-link1"><label class="label">床位</label></a>
				                        </div>
				                        <div class="form-group">
				                            <span class="fg-title">户型:</span>
				                               <a href="#" onclick="commitform();" class="option-link2 curr"><label class="label">不限</label></a>
				                               <a href="#" onclick="commitform();" class="option-link2"><label class="label">一室一厅一卫</label></a>
				                               <a href="#" onclick="commitform();" class="option-link2"><label class="label">二室一厅一卫</label></a>
				                               <a href="#" onclick="commitform();" class="option-link2"><label class="label">三室一厅一卫</label></a>
				                               <a href="#" onclick="commitform();" class="option-link2"><label class="label">三室一厅二卫</label></a>
				                               <a href="#" onclick="commitform();" class="option-link2"><label class="label">四室一厅一卫</label></a>
				                        </div>
				                        <div class="form-group">
				                            <span class="fg-title">租金:</span>
				                            <a href="#" onclick="commitform();" class="option-link3 curr"><label class="label">不限</label></a>
				                            <a href="#" onclick="commitform();" class="option-link3"><label class="label">1500元以下</label></a>
				                      		<a href="#" onclick="commitform();" class="option-link3"><label class="label">1500~2500元</label></a>
				                            <a href="#" onclick="commitform();" class="option-link3"><label class="label">2500~4000元</label></a>
				                            <a href="#" onclick="commitform();" class="option-link3"><label class="label">4000~6000元</label></a>
				                            <a href="#" onclick="commitform();" class="option-link3"><label class="label">6000~8000元</label></a>
				                            <a href="#" onclick="commitform();" class="option-link3"><label class="label">8000元以上</label></a>
				                        </div>
				                      
				                    </div>
				                    <!-- End区域 -->
				                </div>
				            </form>
			            <!-- End过滤表单 -->

            <!-- 房源列表 -->
                <div class="house-list ">
                    <div class="control-bar">
                    <!-- 默认排序 -->
                                                                        
                        <a href="" class="order-link">
                            <span class="btn-ctl curr">默认排序</span>
                        </a>
                        <a href="" class="order-link">
                            <span class="btn-ctl "> <i class="icon-btn-ctl"></i>最新</span>
                        </a>
                   
                        <span class="num-res">
                                                                                         共找到<span class="highlight">5925</span>套房源
                        </span>
                    </div>
                    <div class="data-empty">
                        <img class="zoomer" src="">
                        <p class="empty-tip">没找到符合您需求的房源...</p>
                    </div>
                 <ul class="list">
                    <div class="qksulist">
                    
                    

                      <!-- 每个房源板块的信息 -->
                       <!--  <a target="_blank" href="#" class="link-h-item">
                          <li class="h-item">
                          <div class="preview-wrapper" style="background-image:url('http://img.huoju365.com/file/e4384263-8f4f-4a87-9ee3-d148036aff7a')"></div>   
                            <div class="h-info">
                                <div class="h-name-price">
                                    <span class="h-name">丰台体育馆 丰台大井五里店</span>
                                    <span class="h-price">¥900</span>
                                </div>
                                <div class="h-type-will">
                                    <span class="h-type">4室1厅1卫</span>
                                    <span class="h-type">整租</span>
                                    <span class="h-type">押零付十二</span>
                                    <span class="h-will">已有<span class="highlight"> 159 </span>人想租</span>
                                </div>
                                <div class="h-label">
                                   <span class="h-label-item">无押金</span>
                                   <span class="h-label-item">家电齐全</span>                                                                    
                                </div>
                                <div class="owner-info">
                                   <img src="#/70dea159-4825-4ca7-961d-f2b2b99d653e" class="owner-icon">
                                    <div class="o-name">毛女士</div>
                                    <div class="o-type-pubdate">
                                        <span class="o-type">
                                     		   业主  
                                         </span>
                                    </div>
                                    <div class="o-type-pubdate">
                                    	<img class="owner-icon" alt="立即入住" src="images/quickRent.png">
                                        <a class="o-type" href="contract.jsp">立即入住</a>
                                    </div>
                                </div>
                            </div>
                            <div class="divider"></div>
                        </li></a> -->
                   
                   </div>    
                </ul>
           <div class="pagination2">
           <!-- 写分页 -->
           <div id="page">
         
               <ul class="pagination">
	               <!--   <li value="2" class="fenyepage curr" onclick="commitform();"><span class="page-nav"> 首页 </span></li>
	                 <li value="2" class="fenyepage" onclick="commitform();"><span class="page-nav"> &lt;&lt; </span></li>
	                 <li value="2" class="fenyepage" onclick="commitform();"><span class="page-nav">1</span></li>
	                 <li value="2" class="fenyepage" onclick="commitform();"><span class="page-nav">2</span></li>
	                 <li value="3" class="fenyepage" onclick="commitform();"><span class="page-nav">3</span></li>
	                 <li value="4" class="fenyepage" onclick="commitform();"><span class="page-nav">4</span></li>
	                 <li value="5" class="fenyepage" onclick="commitform();"><span class="page-nav">5</span></li>
	                 <li value="2" class="fenyepage" onclick="commitform();"><span class="page-nav"> &gt;&gt; </span></li>
	                 <li value="4" class="fenyepage" onclick="commitform();"><span class="page-nav"> 末页 </span></li> -->
              </ul>
           </div>                          
    
       </div>
            <!-- End房源列表 -->

      </div>
 </div>
  <input type="hidden" value="1" id="pagenocurr"/>
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
   <div id="YUa9uTsC2UnWAenMqKqBww3k" style="display:none">
   <!-- <script id="369af91719ff78166f59b98a4994ad0e" type="text/javascript" src="%E3%80%90%E6%88%BF%E4%B8%9C%E4%BD%8E%E4%BB%B7%E5%87%BA%E7%A7%9F%E5%8C%97%E4%BA%AC%E7%A7%9F%E6%88%BF%E5%AD%90%E3%80%91%E5%8C%97%E4%BA%AC%E7%A7%9F%E6%88%BF%E4%BF%A1%E6%81%AF_%E5%8C%97%E4%BA%AC%E6%88%BF%E5%B1%8B%E5%87%BA%E7%A7%9F_%E5%8C%97%E4%BA%AC%E7%A7%9F%E6%88%BF%E7%BD%91%E7%AB%99_%E7%81%AB%E7%82%AC%E7%A7%9F%E6%88%BF%20%E4%B8%80%E6%AC%BE%E8%83%BD%E7%A7%92%E6%9D%80%E9%BB%91%E4%B8%AD%E4%BB%8B%E7%9A%84APP_%E5%AE%89%E5%85%A8%E6%8B%85%E4%BF%9D,%E5%A6%82%E9%81%87%E6%AC%BA%E8%AF%88%E5%85%88%E8%A1%8C%E8%B5%94%E4%BB%98_%E7%A1%AE%E8%AE%A4%E5%85%A5%E4%BD%8F%E5%86%8D%E4%BB%98%E7%A7%9F%E9%87%91_%E6%8A%BC%E9%87%91%E5%8C%85%E9%80%80%E6%9D%9C%E7%BB%9D%E5%85%8B%E6%89%A3_files/a.htm"></script>
    --></div>
   <div class="bdshare-slide-button-box bdshare-slide-style-r0" style="top: 250px; width: 0px; z-index: 99999; right: 0px;" data-bd-bind="1510272211895"><a href="#" onclick="return false;" class="bdshare-slide-button" style="left: -24px;"></a>
   <div class="bdshare-slide-list-box" style="width: 0px; display: none;">
   <div class="bdshare-slide-top">分享到</div><div class="bdshare-slide-list"><ul class="bdshare-slide-list-ul" style="width: 116px;"></ul></div>
   <div class="bdshare-slide-bottom" style="width: 116px;"><a href="#" onclick="return false;" class="slide-more" data-cmd="more">更多...</a></div>
  </div>
</div>
<!-- <script type="text/javascript" src="%E3%80%90%E6%88%BF%E4%B8%9C%E4%BD%8E%E4%BB%B7%E5%87%BA%E7%A7%9F%E5%8C%97%E4%BA%AC%E7%A7%9F%E6%88%BF%E5%AD%90%E3%80%91%E5%8C%97%E4%BA%AC%E7%A7%9F%E6%88%BF%E4%BF%A1%E6%81%AF_%E5%8C%97%E4%BA%AC%E6%88%BF%E5%B1%8B%E5%87%BA%E7%A7%9F_%E5%8C%97%E4%BA%AC%E7%A7%9F%E6%88%BF%E7%BD%91%E7%AB%99_%E7%81%AB%E7%82%AC%E7%A7%9F%E6%88%BF%20%E4%B8%80%E6%AC%BE%E8%83%BD%E7%A7%92%E6%9D%80%E9%BB%91%E4%B8%AD%E4%BB%8B%E7%9A%84APP_%E5%AE%89%E5%85%A8%E6%8B%85%E4%BF%9D,%E5%A6%82%E9%81%87%E6%AC%BA%E8%AF%88%E5%85%88%E8%A1%8C%E8%B5%94%E4%BB%98_%E7%A1%AE%E8%AE%A4%E5%85%A5%E4%BD%8F%E5%86%8D%E4%BB%98%E7%A7%9F%E9%87%91_%E6%8A%BC%E9%87%91%E5%8C%85%E9%80%80%E6%9D%9C%E7%BB%9D%E5%85%8B%E6%89%A3_files/get" id="adData"></script>
  --> 
  </body>
 </html>