$(function(){
	var fire = new Audio("../sound/fire.wav");
	var jang = new Audio("../sound/jang.wav");
	var remain=0;
	var arr = new Array();

	$(".gun").click(function(){
		//jang.play();
		fire.play();
		var ran = parseInt(Math.random()*12);
		var st = $(".sunban img").eq(ran).is(":hidden");
		if(st==true){
			$("#msg").text(ran+"번째 꽝.");
		}else{
			$(".sunban img").eq(ran).fadeOut('slow');
			$("#msg").text(ran+"번째 인형이 사라졌습니다.");
			remain+=1;
			console.log(remain);
		}
		if(remain==12){
			$("#msg").text("끝");
			
		}
	});
	
	$(".money li img").click(function(){
		$(this).hide();
		remain=0;
		$(".sunban li img").show();
		$("#msg").html("Reset!! Game Start!!!");
	});
});