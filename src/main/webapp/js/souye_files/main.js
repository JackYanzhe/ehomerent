// JavaScript Document

/*首页效果*/

/*地区*/

$(document).ready(function(){
	    $("#beijing").click(function(event){
		event.stopPropagation();
        $(".area").toggle();
		
        });
		$(window).click(function(){
			$('.area').hide();
		});
   });

/*传递美好生活*/

$(document).ready(function(){
 /*点击为租客版二维码*/
  $(".btna").click(function(){
	$("#ewm").attr("src",base_contextPath+"/client_view/images/fk.png");
  });
  /*点击为房东版二维码*/
  $(".btnb").click(function(){
	$("#ewm").attr("src",base_contextPath+"/client_view/images/fd.png");
  });
  /*移动到安卓下载二维码*/
  $(".android").mouseenter(function(){
	//$("#ewm").attr("src",base_contextPath+"/client_view/images/index_12.jpg");
	  $("#ewm").attr("src",$("#ewm").attr("src"));
  });
  $(".android").mouseleave(function(){
	//$("#ewm").attr("src",base_contextPath+"/client_view/images/index_09.jpg");
	  $("#ewm").attr("src",$("#ewm").attr("src"));
  });
  /*移动到ios下载二维码*/
  $(".iphone").mouseenter(function(){
	//$("#ewm").attr("src",base_contextPath+"/client_view/images/index_07.jpg");
	  $("#ewm").attr("src",$("#ewm").attr("src"));
  });
  $(".iphone").mouseleave(function(){
	//$("#ewm").attr("src",base_contextPath+"/client_view/images/index_09.jpg");
	  $("#ewm").attr("src",$("#ewm").attr("src"));
  });
});

/*点击导航*/


   $(document).ready(function(){
		$(".dyfy").mouseenter(function(){
			$('.ejewm').show();
		});
		$(".dyfy").mouseleave(function(){
			$('.ejewm').hide();
		});
   });
   
   /*注册登录弹出框*/
   function clearTips(){
    $('.login .so.err-tip.st3').css('visibility','hidden');
    $('.login .so.err-tip.st4').css('visibility','hidden');
    $('.login #tel').css('border','1px solid #dfdfdf');
    $('.login #txt_yzm').css('border','1px solid #dfdfdf');
}

function removePop(id){
	$('#'+id).unwrap();
	$('#'+id).hide();
	$('.fake-layer').remove();
}

function popover(id,blurClose,autoClose,closeBtn){
	if($('.layer').height()!=null){

	}else{
		$('#'+id).wrap("<div class='layer'></div>");
		$('.layer').prepend("<div class='fake-layer'></div>");
		$('.layer').show();
		$('.layer :hidden').show();

		if(closeBtn=='on'){
			$('#login .btn-close').hide();
		}else{
			$('.fake-layer').click(function(){
				clearTips();
				if(blurClose == 'off'){
					//do nothing
				}
				else{
					removePop(id);
				}
				
			})
		}
		if(autoClose=='autoClose'){
			setTimeout(function(){
				if($('.layer').height()!=null){
					if(blurClose == 'off'){
					}
					else{
						removePop(id);
					}
				}
			},1500);
		}
	}

}

$(function(){
    $('.qrcode').click(function(){
        popover('login');
    });
    $('.btn-close').click(function(){
        removePop('qrcode');
    });
    $('.tologin').click(function(){
        popover('login-wrapper');
    });
    
    
    $('#tel').blur(function(){
    	var tel = $(this).val();
    	if(tel){
    		$(".st3").css("visibility","hidden");
    	}
    });
    $('#captcha').blur(function(){
    	var captcha = $(this).val();
    	if(captcha){
    		$(".st5").css("visibility","hidden");
    	}
    });
    $('#txt_yzm').blur(function(){
    	var txt_yzm = $(this).val();
    	if(txt_yzm){
    		$(".st4").css("visibility","hidden");
    	}
    });
    
    
    
    $("#captcha_img").attr('src' , base_contextPath+'/randomcode.jhtml?'+Math.random()+'');
	$(".serche").click(function(){
		var inputval = $(".srk").val();
		var url = "http://pc.huoju365.com/index.php/housing/search/%20.html";
		if(inputval){
			url = "http://pc.huoju365.com/index.php/housing/search/"+inputval+".html";
		}
		$(".seracheform").attr('action',url);
		$(".seracheform").attr('method',"post");
		$(".seracheform").submit();  
	});
	
	$("#btn_submit").click(function(){
		var phone = $("input[name='tel']").val();
		if(!phone){
			$(".st3").css("visibility","visible");
			$(".st3").text("请输入手机号");
			return false;
		}
		var smscode = $("input[name='yzm']").val();
		if(!smscode){
			$(".st4").css("visibility","visible");
			$(".st4").text("请输入短信验证码");
			return false;
		}
		$.ajax({
		    type: 'POST',
		    url: base_contextPath+'/login.jhtml' ,
		    data: {mobile:phone,mailcode:smscode} ,
		    dataType:"json",
		    success:function(data){
		    	var data = data.data;
		    	var state = data.state;
		    	var msg = data.msg;
		    	if("1"==state){
		    		$(".st3").css("visibility","visible");
					$(".st3").text(msg);
					return false;
		    	}
		    	if("2"==state){
		    		$(".st4").css("visibility","visible");
					$(".st4").text(msg);
					return false;
		    	}
		    	location.reload();
		    	
		    },
			error:function(data){
				alert("系统繁忙");
			}
		});
	});
	
	$("#getYzm").click(function(){
		
		var captcha = $("#captcha").val();
		var phone = $("input[name='tel']").val();
		if(!phone){
			$(".st3").css("visibility","visible");
			$(".st3").text("请输入手机号");
			$("input[name='tel']").focus();
			return false;
		}
		if(!captcha){
			$(".st5").css("visibility","visible");
			$(".st5").text("请输入验证码");
			$("#captcha").focus();
			return false;
		}
		
		
		var i = 200;
		var timer = null;
		
		timer = setInterval(function() {
			i--;
			$("#getYzm").css({
				'background': '#F7F7F7',
				'color': '#A9A9A9',
				'border-color':'#F7F7F7'
			}).html(i + '秒后重新获取');
			$("#getYzm").attr("disabled",true);
			if (i == 0) {
				clearInterval(timer);
				$("#getYzm").css({
				'background': '#EC971F',
				'color': 'white',
				'border-color':'#EC971F'
			}).html('重新获取');
			$("#getYzm").attr("disabled",false)}},1000);
		
		
		
		
		$.ajax({
		    type: 'POST',
		    url: base_contextPath+'/sendcode.jhtml' ,
		    data: {imgcode:captcha,mobile:phone} ,
		    dataType:"json",
		    success:function(data){
		    	var data = data.data;
		    	var state = data.state;
		    	var msg = data.msg;
		    	if("1"==state){
		    		clearInterval(timer);
					$("#getYzm").css({
					'background': '#ff7822',
					'color': 'white',
					'border-color':'#ff7822'
				}).html('获取验证码');
		    		$(".st5").css("visibility","visible");
					$(".st5").text(msg);
					$("#captcha").focus();
		    	}
		    },
			error:function(data){
				alert("系统繁忙");
			}
		});
	});
	
	$("#dq li").each(function(index){
		$(this).click(function(){
			var atext = $(this).find("a").text();
			if(atext!="北京"){
				$("#tipMessage").html('<span>北京以外的地区，正在玩命开通中，敬请期待！</span>');
				fnTip();
			} 
		});
	});
	
});

function pagego(type){
	$.ajax({
	    type: 'POST',
	    url: base_contextPath+'/page.jhtml' ,
	    data: {type:type} ,
	    dataType:"json",
	    success:function(data){
	    	var data = data.data;
	    	var state = data.state;
	    	if("0"==state){
	    		 popover('login-wrapper');
	    	}else{
	    		var url = data.url;
	    		location.href=url;
	    	}
	    },
		error:function(data){
			alert("系统繁忙");
		}
	});
}


var tipHeight = $('#tipMessage').height();
$('#tipMessage').css('top', -(tipHeight + 24) + 'px')
function fnTip() {
	//show
	$('#tipMessage').css({
			'top': 12,
			'opacity': 0.8
		})
		//hide
	setTimeout(function() {
		$('#tipMessage').css({
			'top': -(tipHeight + 24) + 'px',
			'opacity': 0
		})
	}, 3000)
}
