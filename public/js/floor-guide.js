
$(document).ready(function(){
	$(".floor-guide a").anchorGoWhere({target:1});	
});
$(function () {
	var gao=($(window).height()/2);
	
		$(window).scroll(function () {
		    var totop = $(this).scrollTop();
			if (totop >= 700) {
				$('.floor-guide').show();
			}
			else{
				$('.floor-guide').hide();
			};
		})
		
});