$(function(){
	$('.menu-item').click(function(){
		if($(this).attr('id')){
			var showIndex = this.id.split('-')[1];
			$('.menu-item').removeClass('actived');
			$(this).addClass('actived');
			$('.cont-item').removeClass('actived');
			$('.cont-'+showIndex).addClass('actived');
		}
	})
})