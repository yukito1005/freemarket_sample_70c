 
$(function(){
 
	//音を鳴らす
	$('.left').mouseover(function(){
 
		document.getElementById("overSound").currentTime = 0;
		document.getElementById("overSound").play();
 
	});
 
 
});
 
 