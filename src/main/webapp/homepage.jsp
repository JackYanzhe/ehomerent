<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>e租房
	一款能秒杀黑中介的APP_安全担保，确认入住再付租金，押金包退杜绝克扣_无中介租房网_个人租房网_房屋出租_租房网站_出租房子信息</title>
<meta name="keywords"
	content="北京租房网_租房子_无中介租房_房屋出租_租房网站_出租房子信息_火炬租房_火炬租房官网_huojuzufang_房租月付_信用卡付房租_分期付房租_上海租房租房网_广州租房网_深圳租房网_成都租房网_南京租房网_杭州租房网_重庆租房网_天津租房网_武汉租房网">
<meta name="description"
	content="火炬租房 一款能秒杀黑中介的APP_怕黑？就用火炬租房！房子房东全验真， 每天在线实时更新海量房源 每间房子均经审核验真；直联直签无中介，租客、房东直接联系、看房、签约 无任何中介环节及中介费用；月租月付无压力,0预付、0费用、住后按月分期付房租；快租快住倍轻松，最快24小时即可成功出租租住成功，提前退租报销违约金">
<meta name="baidu-site-verification" content="8FKOSAWmDP">

<link rel="shortcut icon" href="http://www.huoju365.com/favicon.ico">
<link type="text/css" rel="stylesheet" href="css/souye_files/style.css">
<script type="text/javascript" src="js/souye_files/jquery-1.10.2.min.js"></script>
<script src="js/souye_files/jquery.goup.js"></script>
<script src="js/souye_files/popover.js"></script>
	<script type="text/javascript">
	   //点击快速租房，如没登陆，先登录，登录后转跳issuance-house.jsp发布房源页面
	    function ifLogin(eno){
	
	       if(eno!=null){
	           window.location.href="issuance-house.jsp?userId="+eno;
	       }else{
	           alert("请登录！！！！！！！！！！！！！");
	           window.location.href="login.jsp";
	            }
	   };
	   function ifLogin2(eno){
	       if(eno!=null){
	           window.location.href="subscribe/showUserSubHouseInfo";
	       }else{
	           alert("请登录！！！！！！！！！！！！！");
	           window.location.href="login.jsp";
	            }
	
	   };

</script>
<style type="text/css">
#tipMessage {
	width: 100%;
	text-align: center;
	padding: 12px 0;
	overflow: hidden;
	position: fixed;
	opacity: 0;
	-webkit-transition: .7s;
	z-index: 10000;
}

#tipMessage span {
	border-radius: 5px;
	background: #EC971F;
	padding: 12px;
	color: white;
}

.logs_b {
	display: none;
}

.hzhb .coms img {
	width: 100%;
	margin-top: 20px
}

#hzhb .hzhb {
	width: 800px;
}
</style>
<script src="js/souye_files/share.js"></script>
<link rel="stylesheet" href="css/souye_files/slide_share.css">
</head>

<body>

	<!--头部内容-->
	<header> <img
		src="images/souye_files/banner_01.gif"
		class="banner">
	<div id="logo">
		<p class="f1 pa">火炬租房</p>
		<p class="f2 pb">一款能秒杀黑中介的APP</p>
	</div>
	<!--点击显示地区-->
	<div id="dq">
		<a href="javascript:void(0);" id="beijing">北京&nbsp;&nbsp;<img
			src="images/souye_files/xjt.png"
			style="position: absolute; top:32%; right:0px;">
		</a>
		<div class="area" style="display: none;">
			<ul>
				<li><a href="javascript:void(0);">上海</a>
				</li>
				<li><a href="javascript:void(0);">北京</a>
				</li>
				<li><a href="javascript:void(0);">深圳</a>
				</li>
			</ul>
		</div>
	</div>
	
	<nav>
	<ul class="dingjicaidan">
		<c:if test="${!empty loginname }">
			<li><a href="exit" class="tologin">${loginname}退出</a></li>
			
		</c:if>
		<c:if test="${empty loginname }">
			<li><a href="login" class="tologin">登录</a></li>
			
		</c:if>
		
		
		<li id="dh"><a href="javascript:void(0);">个人中心</a>
			<ul class="ejdh">
				<div class="xtpic"></div>
				<li class="dyfy"><a href="updateUser.jsp" >完善个人信息</a>
				</li>
				<li class="dyfy"><a href="findAllCollection" >我的收藏</a>
				</li>
				<li class="dyfy"><a href="javascript:void(0);" onclick="ifLogin2(${sessionScope.user.userid});">订阅房源</a> 
				</li>
				<li class="dyfy"><a href="subscribe/showUserSubHouseInfo" >订阅房源修改</a> 
				</li>
			</ul></li>
		<li><a href="javascript:void(&#39;0&#39;)" onclick="ifLogin(${sessionScope.user.userid});">闪电出租</a>
		</li>
		<li><a href="quickrent.jsp">快速求租</a>
		</li>
		<li class="active"><a href="homepage.jsp">首页</a>
		</li>
	</ul>
	</nav>

	<div id="db">
		<img
			src="images/souye_files/index_03.png"
			width="929" height="65" class="db">
		<p class="yj">————&nbsp;&nbsp;确认入住再付租金&nbsp;&nbsp;&nbsp;&nbsp;押金包退杜绝克扣&nbsp;&nbsp;————</p>
		<!--开始找房-->
		<ul class="find">
			<li><a
				href="subscribe/searchHouseInfo?rentypeInfo=整租">
					<!-- <p class="col"> -->整租<!-- </p> -->
			</a>
			</li>
			<li><a
				href="subscribe/searchHouseInfo?rentypeInfo=合租">合租</a>
			</li>
			<li><a
				href="subscribe/searchHouseInfo?rentypeInfo=单间">单间</a>
			</li>
			<li><a
				href="subscribe/searchHouseInfo?rentypeInfo=床位">床位</a>
			</li>
			<li><a
				href="subscribe/searchHouseInfo?rentypeInfo=月租">纯月租</a>
			</li>
			<li class="hot"><a
				href="http://pc.huoju365.com/index.php/main/easy_pay_intro">轻松付</a>
				<img
				src="images/souye_files/hot.png"
				style="position:absolute; left:70%; top:-15px;"></li>
		</ul>
		<form class="seracheform" action="subscribe/searchHouseInfo">
			<div id="pos">
				<ul>
					<li><a
						href="http://pc.huoju365.com/index.php/housing/area/12/353.html">亦庄</a>
					</li>
					<li><a
						href="http://pc.huoju365.com/index.php/housing/area/1/5.html">北苑</a>
					</li>
					<li><a
						href="http://pc.huoju365.com/index.php/housing/area/7/250.html">宋家庄</a>
					</li>
					<li><a
						href="http://pc.huoju365.com/index.php/housing/area/11/333.html">天通苑</a>
					</li>
				</ul>
			</div>
			<input name="pageNo" value="1" type="hidden">
			<input placeholder="请输入区域、地铁线或小区名开始找房" class="srk" name="searchInfo"/> 
			<button class="btn serche">开始找房</button>
			</a>
		</form>
	</div>


	<!--四个列表项目-->

	<div id="four">
		<dl>
			<dt>
				<img
					src="images/souye_files/four_03.png">
			</dt>
			<dd class="font16">房客房东全验真</dd>
			<dd class="font10">每天在线海量房源、上万租客，租赁双方身份均经审核验证。</dd>
		</dl>
		<dl>
			<dt>
				<img
					src="images/souye_files/fourt_05.png">
			</dt>
			<dd class="font16">快租快住倍轻松</dd>
			<dd class="font10">房东24小时即可成功出租， 租客当天即可快捷入住。</dd>
		</dl>
		<dl>
			<dt>
				<img
					src="images/souye_files/fourt_07.png">
			</dt>
			<dd class="font16">直联直签无中介</dd>
			<dd class="font10">租客、房东直接联系、看房、 签约，无任何中介环节及中 介费用。</dd>
		</dl>
		<dl>
			<dt>
				<img
					src="images/souye_files/fourf_09.png">
			</dt>
			<dd class="font16">租金押金不克扣</dd>
			<dd class="font10">租金、押金，在线担保支付， 杜绝欺诈与克扣。</dd>
		</dl>
	</div>


	</header>

	<!--搜索房源、发布房源-->

	<div id="content">
		<div class="content sbys">
			<div class="left">
				<div class="zk">
					<div class="img">
						<img
							src="images/souye_files/title.png">
					</div>
					<p class="title bold">租客用APP签约</p>
					<p class="dec bold">安全又轻松</p>
				</div>
				<div style="border-bottom:1px solid #e5e5e5; width:250px;"></div>
				<div class="zks">
					<dl>
						<dt>
							<img
								src="images/souye_files/sindex_18.jpg">
						</dt>
						<dd>租价特优</dd>
					</dl>
					<dl>
						<dt>
							<img
								src="images/souye_files/sindex_20.jpg">
						</dt>
						<dd>住后付款</dd>
					</dl>
					<dl>
						<dt>
							<img
								src="images/souye_files/sindex_22.jpg">
						</dt>
						<dd>退租保险</dd>
					</dl>
					<dl>
						<dt>
							<img
								src="images/souye_files/sindex_24.jpg">
						</dt>
						<dd>0息月付</dd>
					</dl>
					<a href="http://pc.huoju365.com/index.php/housing/search/%20.html"><button
							class="btna sbys">搜索房源</button>
					</a>
				</div>

			</div>
			<div
				style="border-right:1px solid #f5f5f5; width: 1px ; height: 370px; position: absolute; left: 49%; top:30px;"></div>
			<div class="right">
				<div class="zka">
					<div class="img">
						<img
							src="images/souye_files/title.png">
					</div>
					<p class="title bold">房东用APP签约</p>
					<p class="dec bold">便捷又放心</p>
				</div>
				<div style="border-bottom:1px solid #e5e5e5; width:250px;"></div>
				<div class="zksa">
					<dl>
						<dt>
							<img
								src="images/souye_files/sindex_30.jpg">
						</dt>
						<dd>隐私保护</dd>
					</dl>
					<dl>
						<dt>
							<img
								src="images/souye_files/sindex_37.jpg">
						</dt>
						<dd>租客认证</dd>
					</dl>
					<dl>
						<dt>
							<img
								src="images/souye_files/sindex_32.jpg">
						</dt>
						<dd>房屋保险</dd>
					</dl>
					<dl>
						<dt>
							<img
								src="images/souye_files/sindex_34.jpg">
						</dt>
						<dd>准时收租</dd>
					</dl>
					<a href="javasciprt:void(&#39;0&#39;)">
					<button class="btnb sbys" onclick="ifLogin(${sessionScope.userId});">发布房源</button>
					</a>
				</div>

			</div>
		</div>
	</div>

	<!--火炬轻松付-->

	<div id="hj">
		<div class="hj">
			<img
				src="images/souye_files/pro_03.png">
			<div class="hjtext">
				<p class="bold sizeb">
					火炬<span class="orange">轻松付</span>
				</p>
				<p class="sizea c666">0预付，0费用，往后按月分期付房租</p>
			</div>
			<div class="ljty">
				<a href="http://pc.huoju365.com/index.php/main/easy_pay_intro">立即体验</a>
			</div>
		</div>
	</div>

	<!--一站式安全租房-->

	<div id="aqzf">
		<div class="szpic">
			<p class="zfts left">一站式安全租房</p>
			<div class="jt right">
				<img
					src="images/souye_files/jt.png">
				<div class="yzzk">租客</div>
				<div class="yzfd">房东</div>
				<p class="fa">寻找房子</p>
				<p class="fb">支付租金</p>
				<p class="fc">确认入住</p>
				<p class="fd">办理退租</p>
				<p class="fa2">发布房源</p>
				<p class="fb2">收取租金</p>
				<p class="fc2">收回房子</p>
				<div class="xsqy">
					<div class="xsqya">线上签约</div>
				</div>
				<div class="ptdb">
					<div class="ptdba">平台担保</div>
				</div>
				<p class="map">
					<a href="http://www.huoju365.com/#good">下载APP&gt;&gt;</a>
				</p>

			</div>
			<div class="clear"></div>
		</div>
	</div>

	<!--合作伙伴-->
	<div id="hzhb">
		<div class="hzhb sbys">
			<h1>合作伙伴</h1>
			<div class="coms">
				<img
					src="images/souye_files/hzhb-bg.jpg">
				<div class="clear"></div>
			</div>
		</div>
	</div>

	<!--火炬租房传递美好生活-->
	<div id="good" name="good">
		<img
			src="images/souye_files/footer_04.jpg">
		<div class="hsh sbys">
			<p class="hjzf sizeb">火炬租房</p>
			<h1 class="hjzf">传递美好生活</h1>
			<button class="btna sbys">火炬租房APP</button>
			<button class="btnb sbys">火炬租房（房东版）</button>
			<div style="width: 285px">
				<div class="left">
					<div class="iphone">iPhone</div>
					<div class="android">Android</div>
				</div>
				<div class="zkewm left">
					<img
						src="images/souye_files/fk.png"
						id="ewm">
				</div>
				<div class="clear"></div>
				<div class="hjapp">
					<h1>
						<a href="http://www.huoju365.com/"><img
							src="images/souye_files/hjzfapp.jpg"
							alt="火炬租房">
						</a>
					</h1>
				</div>

			</div>
		</div>
	</div>
	<!-- Footer-start -->

	<div class="footer">
		<div class="copyright">
			<div class="contract">
				<span class="big">客服电话</span> <span class="small">400-6339-365(早9:00
					~ 晚9:00)</span>
				<ul class="share">
					<li class="item weixin"><img
						src="images/souye_files/img-151.png"
						class="s-qrcode"> <i class="icon"></i></li>
					<a href="http://weibo.com/huoju365" target="_blank">
						<li ="" class="item weibo"><i class="icon"></i>
					</a>
				</ul>
			</div>
			<p class="copyrightcont">炬传（北京）科技有限公司 ©2015 huoju365.com
				京ICP备15011671号-1</p>
		</div>
		<div class="friend-link">
			<span class="legend">友情链接：</span> <a href="http://hao.360.cn/"
				target="_blank" class="fl-item">360导航</a> <a
				href="http://se.360.cn/" target="_blank" class="fl-item">360安全浏览器</a>
			<a href="https://www.hao123.com/" target="_blank" class="fl-item">hao123上网导航</a>
			<a href="http://www.3456.cc/" target="_blank" class="fl-item">3456网址导航</a>
			<a href="http://123.sogou.com/about/shoulu.html" target="_blank"
				class="fl-item">搜狗网址导航</a> <a href="http://www.265.com/submit/"
				target="_blank" class="fl-item">265上网导航</a> <a
				href="http://i.firefoxchina.cn/" target="_blank" class="fl-item">火狐主页</a>
			<a href="http://www.114la.com/" target="_blank" class="fl-item">114啦网址导航</a>
			<a href="http://www.1616.net/" target="_blank" class="fl-item">1616个人门户</a>
			<a href="http://www.0460.com/" target="_blank" class="fl-item">0460网站之家</a>
		</div>
		<div class="link">
			<a target="_blank"
				href="ourselves.jsp">关于我们</a>
			<a target="_blank"
				href="http://pc.huoju365.com/index.php/main/aboutus/4.html">工作机会</a>
			<a target="_blank"
				href="http://pc.huoju365.com/index.php/enterprise/cooperate.html">企业合作</a>
			<a target="_blank"
				href="http://pc.huoju365.com/index.php/main/aboutus/5.html">联系我们</a>
			<a target="_blank"
				href="http://pc.huoju365.com/index.php/main/sitemap.html">网站地图</a> <a
				target="_blank"
				href="http://pc.huoju365.com/index.php/main/aboutus/7.html">服务条款</a>
		</div>
	</div>
	<!-- Footer-end-->
	<!-- 弹层 -->
	<div id="tipMessage" style="top: -45px;">
		<span></span>
	</div>
	<!-- 弹层 -->


	<!-- <script type="text/javascript">
        var base_contextPath="";
    </script> -->
	<script type="text/javascript"
		src="js/souye_files/main.js"></script>
	<!-- <script>
	 window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"1","bdMiniList":["weixin","sqq","mshare","copy","qzone","douban","tsina","tieba"],"bdPic":"","bdStyle":"0","bdSize":"16"},"slide":{"type":"slide","bdImg":"0","bdPos":"right","bdTop":"250"}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
	$('.item.weixin').hover(function(){
        $('.s-qrcode').show();
    },function(){
        $('.s-qrcode').hide();
    });
	$(".logout").click(function(){
		location.href="/logout.jhtml"
	});
	
</script> -->


	<div
		style="position: fixed; width: 60px; height: 60px; cursor: pointer; bottom: 56px; right: 56px; display: none;"
		class="goup-container" title="">
		<div class="goup-arrow"
			style="width: 0px; height: 0px; margin: 0px auto; padding-top: 13px;"></div>
	</div>
	<div class="bdshare-slide-button-box bdshare-slide-style-r0"
		style="top: 250px; width: 0px; z-index: 99999; right: 0px;"
		data-bd-bind="1510207381410">
		<a href="#" 
			class="bdshare-slide-button" style="left: -24px;"></a>
		<div class="bdshare-slide-list-box" style="width: 0px; display: none;">
			<div class="bdshare-slide-top">分享到</div>
			<div class="bdshare-slide-list">
				<ul class="bdshare-slide-list-ul" style="width: 116px;"></ul>
			</div>
			<div class="bdshare-slide-bottom" style="width: 116px;">
				<a href="#" class="slide-more" data-cmd="more">更多...</a>
			</div>
		</div>
	</div>
</body>
</html>