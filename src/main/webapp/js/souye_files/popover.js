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
						//do nothing
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
        popover('qrcode');
    })
    $('.btn-close').click(function(){
        removePop('qrcode');
    })
})

