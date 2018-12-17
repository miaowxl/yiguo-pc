// JavaScript Document

$(function () {
	
	//我的易果
	$('.myyiguo').hover(function(){
		$(this).addClass('current');
	},function(){
		$(this).removeClass('current');
	});
	
	//手机易果
	$('.mobile').hover(function(){
		$(this).addClass('current');
	},function(){
		$(this).removeClass('current');
	});
	
	//购物车
	$('.shopping-cart').hover(function(){
	    $('.shopping-list').fadeIn("0");
	},function(){
	    $('.shopping-list').delay(1000).fadeOut("1000");
	});
	$('.shopping-list ul li').hover(function(){
		$(this).find('.del').css('visibility','visible');
	},function(){
		$(this).find('.del').css('visibility','hidden');
	});
	
	//商品分类
	$('.catalogs').hover(function(){
		$('.catalogs .catalogs-list ').show();
	},function(){
		$('.catalogs .catalogs-list ').hide();
	});

	$('.catalogs-list .item').hover(function(){
		$(this).addClass('current');
		$(this).find('.sub-item').show();
	},function(){
		$(this).removeClass('current');
		$(this).find('.sub-item').hide();
	});
	


	


	
});