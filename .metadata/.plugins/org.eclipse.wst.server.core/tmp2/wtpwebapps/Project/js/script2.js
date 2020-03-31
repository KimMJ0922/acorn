$(function(){
	$(".menu_li").click(function(){
		var href = $(this).children(".menu_a").attr("href");
		$(location).attr("href",href);
	});
});