<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	<!-- 注意css/bootstrap.css要放置在最上边 -->
	<link rel="stylesheet" href="css/bootstrap.css" type="text/css"></link>
	<link rel="shortcut icon" href="http://pc.huoju365.com/static/img/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="css/style.css" type="text/css"></link>
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/common.css">
	<!-- <link rel="stylesheet" href="css/jquery-ui.css"> -->
	<!-- <link rel="stylesheet" href="css/nivo-default.css" type="text/css">
	<link rel="stylesheet" href="css/nivo-slider.css" type="text/css"> -->
	<!-- <script src="js/hm.js"></script>
	<script src="js/jquery_003.js"></script>
	<script src="js/jquery_006.js"></script>
	<script src="js/contswitcher.js"></script>
	<script src="js/popover.js"></script>
	<script src="js/paddingBottom.js"></script>
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/toast.js"></script>
	<script src="js/jquery_002.js"></script>
	<script src="js/jquery_005.js"></script>
	<script src="js/Validform_v5.js"></script>
	<script src="js/jquery_004.js"></script> -->
	<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    
    
    <link rel="stylesheet" href="css/house_subscribe_css/subscribe.css" type="text/css"></link>
    <link rel="stylesheet" href="css/house_subscribe_css/bootstrap-select.css" type="text/css"></link>
    <script type="text/javascript" src="js/house_subcribe/bootstrap-select.js"></script>
    <style type="text/css">
       .selectxl{
        width:20%;
        height:50px;
        display:inline-block;
     
     }
    
    </style>
   <script type="text/javascript">
      //定义全局变量，类似于页面缓存，只进行一次异步操作，可提高效率
        var result_subjsonData=null;
     $(function(){
         /* 初始化选择省级 */
        $.getJSON("subscribe/getAreaJson2",function(result){ 
              result_subjsonData = result;
              $("#city").append("<option>--请选择--</option>");
              $("#county").append("<option>--请选择--</option>");
             for(var i=0;i<result.length;i++){
                 
			     $("#province").append("<option value='"+result[i][0].province_id+"'>"+result[i][0].province_name+"</option>"); 
             
              } 
       
            });
            /* 保存区域  */
            $("#saveArea").click(function(){
             
              var provinceInfo=$("#province").find("option:selected").html();
              var cityInfo=$("#city").find("option:selected").html();
              var countyInfo=$("#county").find("option:selected").html();
              var townInfo=$("#town2").find("option:selected").html();
              var areaInfo=provinceInfo+" "+cityInfo+" "+countyInfo+" "+townInfo;
            
              $("#areaInfomg").val(areaInfo);
            
            });
     });
     
     /* 选择市级 */
     function getCity(){
          var provinceID=$("#province").val();
          $("#city").empty();
          $("#county").empty();
          $("#city").append("<option>--请选择--</option>");
          $("#county").append("<option>--请选择--</option>");
          if(result_subjsonData!=null){
             var result= result_subjsonData;
             var k=1;
             for(var i=0;i<result.length;i++){
                  if(result[i][0].province_id==provinceID){
                    for(var j=0;j<result[i].length;j++){
                       
                       if(result[i][j].city_id!=result[i][k++].city_id & k<=result[i].length){
                           $("#city").append("<option value='"+result[i][j].city_id+"'>"+result[i][j].city_name+"</option>"); 
                       }
                    }
                 }
              } 
             
          }else{
              $.getJSON("subscribe/getAreaJson2",function(result){ 
                  result_subjsonData = result;
              });
          }
          
          
        /* $.getJSON("subscribe/getAreaJson2",function(result){ 
             var k=1;
             for(var i=0;i<result.length;i++){
                  if(result[i][0].province_id==provinceID){
                    for(var j=0;j<result[i].length;j++){
                       
                       if(result[i][j].city_id!=result[i][k++].city_id & k<=result[i].length){
                           $("#city").append("<option value='"+result[i][j].city_id+"'>"+result[i][j].city_name+"</option>"); 
                       }
                    }
                 }
              } 
            }); */
         };
         /* 选择区、县级 */
      function getCounty(){
          var provinceID=$("#province").val();
          var cityID=$("#city").val();
          $("#county").empty();
          $("#county").append("<option>--请选择--</option>");
          if(result_subjsonData!=null){
            
             var result=result_subjsonData;
             for(var i=0;i<result.length;i++){
                      for(var j=0;j<result[i].length;j++){
                        var a=1;   
                         if(cityID==result[i][j].city_id){
                                  a=j;
                                   a++;
                                 if(result[i][j].county_id!=result[i][a].county_id){
	                              $("#county").append("<option value='"+result[i][j].county_id+"'>"+result[i][j].county_name+"</option>"); 
	                            }
                              }
                    }
              } 
          
          }else{
              $.getJSON("subscribe/getAreaJson2",function(result){ 
                  result_subjsonData = result;
              });
          }
         /* $.getJSON("subscribe/getAreaJson2",function(result){ 
             for(var i=0;i<result.length;i++){
                      for(var j=0;j<result[i].length;j++){
                        var a=1;   
                         if(cityID==result[i][j].city_id){
                                  a=j;
                                   a++;
                                 if(result[i][j].county_id!=result[i][a].county_id){
	                              $("#county").append("<option value='"+result[i][j].county_id+"'>"+result[i][j].county_name+"</option>"); 
	                            }
                              }
                    }
              } 
            }); */
     };
     /* 选择街道、阵级 */
     function getTown(){
           $("#town2").append("<option>--请选择--</option>");
          var countyID=$("#county").val();
          $("#town2").empty();
          $("#town2").append("<option>--请选择--</option>");
          
          if(result_subjsonData!=null){
              var result=result_subjsonData;
              for(var i=0;i<result.length;i++){
                      for(var j=0;j<result[i].length;j++){
                        var c=1;   
                         if(countyID==result[i][j].county_id){
                                  c=j;   c++;
                                 if(result[i][j].town_id!=result[i][c].town_id){
                                   
	                              $("#town2").append("<option value='"+result[i][j].town_id+"'>"+result[i][j].town_name+"</option>"); 
	                            }
                              }
                    }
              } 
          
          }else{
              $.getJSON("subscribe/getAreaJson2",function(result){ 
                  result_subjsonData = result;
              });
          }
         /*  $.getJSON("subscribe/getAreaJson2",function(result){ 
             for(var i=0;i<result.length;i++){
                      for(var j=0;j<result[i].length;j++){
                        var c=1;   
                         if(countyID==result[i][j].county_id){
                                  c=j;   c++;
                                 if(result[i][j].town_id!=result[i][c].town_id){
                                   
	                              $("#town2").append("<option value='"+result[i][j].town_id+"'>"+result[i][j].town_name+"</option>"); 
	                            }
                              }
                    }
              } 
            }); */
     };
     
      
     
  
  </script>
  
  
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
          <div class="subspanl">
           <div class="panel panel-success">
			  <div class="panel-heading">订阅房源</div>
			  <div class="panel-body">
			              我的订阅房源信息填写
			       <div class="sub_formstyl">
			         <form class="form-horizontal" role="form" action="subscribe/saveSubInfo" method="post">
			         <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label">区域位置：</label>
					    <div class="col-sm-10">
					      <!-- <input type="password" class="form-control" id="inputPassword3" placeholder="Password"> -->
					       <div class="sublength">
							  <input type="text" name="subarealocalinfo" value="请选择区域位置" id="areaInfomg" class="sublength btn btn-default btn-sm dropdown-toggle"  data-toggle="modal" data-target="#myModal_area">
							                 
							  </input>
							</div>
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">租金区间：</label>
					    <div class="col-sm-10">
					      <input type="text" name="rentmoneymin" class="formwid form-control"  placeholder="区间上限"> ----
					      <input type="text" name="rentmoneymax" class="formwid form-control"  placeholder="区间下限">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label">周期长短：</label>
					    <div class="col-sm-10">
					      <!-- <input type="password" class="form-control" id="inputPassword3" placeholder="Password"> -->
					       <div class="sublength">
							  <select name="circletime" class="sublength2" >
							         <option value="不限" selected="selected">不限</option>
							         <option value="年租">年租</option>
							         <option value="月租">月租</option>
							                   
							  </select>
							</div>
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label">租住类型：</label>
					     <div class="col-sm-10">
					      <!-- <input type="password" class="form-control" id="inputPassword3" placeholder="Password"> -->
					       <div class="sublength">
							 <select name="renttype" class="sublength2" >
							         <!--  请选择周期长短 --> <!-- <span class="caret"></span> -->
							         <option value="不限" selected="selected">不限</option>
							         <option value="整租">整租</option>
							         <option value="分租">分租</option>
							         <option value="单间">单间</option>
							         <option value="床位">床位</option>
							                   
							  </select>
							</div>
					    </div>
					  </div>
					   
					   <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label">房屋户型：</label>
					     <div class="col-sm-10">
					      <!-- <input type="password" class="form-control" id="inputPassword3" placeholder="Password"> -->
					       <div class="sublength">
							  <select name="housetype" class="sublength2" >
							         <!--  请选择周期长短 --> <!-- <span class="caret"></span> -->
							         <option value="不限" selected="selected">不限</option>
							         <option value="一室">一室</option>
							         <option value="二室">二室</option>
							         <option value="三室">三室</option>
							         <option value="三室以上">三室以上</option>
							                   
							  </select>
							</div>
					    </div>
					  </div>
					  
					  
					  <div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10">
					      <button type="submit" class="btn btn-warning centerLoc">提交</button>
					     
					    </div>
					  </div>
					</form>   
			         
			       </div>      

					

			              
			              
			  </div>
			</div>
          </div>
         
         
           <a href="subscribe/testsub">===========我的contrall测试============</a>
            <a href="subscribe/getAreaJson">===========我的json转换测试8888888888888============</a>
           <a onclick="getPctJson();">===========我的json转换测试============</a>
   
			
			<!-- Modal -->
			<!-- 区域位置模态框 -->
			<div class="modal fade" id="myModal_area" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			        <h4 class="modal-title" id="myModalLabel">选择区域位置</h4>
			      </div>
			      <div class="modal-body">
			        <!-- 填充数据处 -->
			         <h1>三级级联测试使用</h1>
			         
			         <div class="selectxl" >
					     <select class= "form-control"  id="province" onclick="getCity()"></select>
					  </div>
					  <div class="selectxl" >
					     <select class= "form-control" id="city" onchange="getCounty()"></select>
					  </div>
					  <div class="selectxl" >
					     <select class= "form-control" id="county" onchange="getTown()"></select>
					  </div>
					  <div class="selectxl" >
					     <select class= "form-control" id="town2"></select>
					  </div>
			        
			        
			        
			        

			        
			        
			        
			        
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
			        <button type="button" id="saveArea" class="btn btn-primary" data-dismiss="modal">保存</button>
			      </div>
			    </div>
			  </div>
			</div>
			<!-- Modal -->
			<!-- 周期长短模态框 -->
			<div class="modal fade" id="myModal_circle" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			        <h4 class="modal-title" id="myModalLabel">选择周期长短</h4>
			      </div>
			      <div class="modal-body">
			        <!-- 填充数据处 -->
			         <h1>我的模态框</h1>
			        
			        
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			        <button type="button" class="btn btn-primary">Save changes</button>
			      </div>
			    </div>
			  </div>
			</div>
			
			
			<!-- Modal -->
			<!-- 租住类型模态框 -->
			<div class="modal fade" id="myModal_renttype" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			        <h4 class="modal-title" id="myModalLabel">选择租住类型</h4>
			      </div>
			      <div class="modal-body">
			        <!-- 填充数据处 -->
			         <h1>我的模态框</h1>
			        
			        
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			        <button type="button" class="btn btn-primary">Save changes</button>
			      </div>
			    </div>
			  </div>
			</div>
			
			<!-- Modal -->
			<!-- 房屋类型模态框 -->
			<div class="modal fade" id="myModal_housetype" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			        <h4 class="modal-title" id="myModalLabel">选择房屋类型</h4>
			      </div>
			      <div class="modal-body">
			        <!-- 填充数据处 -->
			         <h1>我的模态框</h1>
			        
			        
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			        <button type="button" class="btn btn-primary">Save changes</button>
			      </div>
			    </div>
			  </div>
			</div>
			
			
			
			
			

         </div>

    


     </div>
<!-- footer -->
	 
</div>
<div class="footer">
	     <%@include file="footer.jsp" %>
	</div> 
  </body>
  

</html>
