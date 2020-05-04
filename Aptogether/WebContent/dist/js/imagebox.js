$(function(){
	var $container = $('.slideshow');//슬라이더쇼 전체컨테이너
	var $slideGroup = $('.slideshow-slides');//슬라이더 그룹
	var $slides = $container.find('.slide');//각각의 슬라이더
	
	var currentIndex = 0;
	var slideCount = $slides.length;
	var timer;
	
	$slides.each(function(i){
		$(this).css('left', 100 * i + '%');	
	});
	function goToSlide(index){
		$slideGroup.animate({
			left: -100 * index + '%'
		}, 500);	
		currentIndex = index;
			
	}
	function startTimer(){
		timer = setInterval(function(){
			var nextIndex = (currentIndex + 1) % slideCount;
			goToSlide(nextIndex);
		}, 4000);
	}
	function stopTimer(){
		clearTimeout(timer);
	}
	
	goToSlide(currentIndex);
	startTimer();
});