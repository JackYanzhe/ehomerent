$(function() {
	function makeFullHeight() {
		var viewportH = document.documentElement.clientHeight;
		var contH = $('.container').height();
		var marginH = '-' + (viewportH - contH) + 'px'
		if (contH < viewportH) {
			$('.footer').css({
				'position': 'relative',
				'bottom': marginH
			})
		}
	}

	makeFullHeight();

	$('.menu-item').click(function(){
		makeFullHeight();
	})

})