$(function(){
	//헤더 고정
	var stickyToggle = function (sticky, stickyWrapper, scrollElement) {
		var stickyHeight = sticky.outerHeight();
		var stickyTop = stickyWrapper.offset().top;
		if (scrollElement.scrollTop() >= stickyTop) {
			stickyWrapper.height(stickyHeight);
			sticky.addClass("is-sticky");
		}
		else {
			sticky.removeClass("is-sticky");
			stickyWrapper.height('auto');
		}
	};
	$('[data-toggle="sticky-onscroll"]').each(function () {
		var sticky = $(this);
		var stickyWrapper = $('<div>').addClass('sticky-wrapper');
		sticky.before(stickyWrapper);
		sticky.addClass('sticky');
		$(window).on('scroll.sticky-onscroll resize.sticky-onscroll', function () {
			stickyToggle(sticky, stickyWrapper, $(this));
		});
		stickyToggle(sticky, stickyWrapper, $(window));
	});
	var swiper = new Swiper('.swiper-container', {
		slidesPerView: 'auto',
		initialSlide: 2,
		speed: 1000,
		spaceBetween: 32,
		loop: true,
		centeredSlides: true,
		roundLengths: true,
		mousewheel: true,
		grabCursor: true,
		pagination: {
			el: '.swiper-pagination',
			clickable: true,
		}
	});

	//메인 캐러셀
	$('#mainSlide').owlCarousel({
		items:1,
		autoplay:true,
		autoplayHoverPause:true,
		loop:true,
		dots:false,
		center:true,
		navText: ['<span class="fas fa-chevron-left fa-2x"></span>','<span class="fas fa-chevron-right fa-2x"></span>'],
		responsiveClass:true,
		responsive:{
			0:{
				nav:false
			},
			768:{
				nav:true
			}
		}
	});
	
	//프로젝트 신청 페이지 조건 캐러셀
	$('#visual').owlCarousel({
	    items:1,
	    loop:true,
	    center:true,
	    dots:false,
	    margin:10,
	    responsive:{
	    	600: {
	    		items:2,
	    	},
	        800:{
	        	items:3,
	        	center:false,
	            loop:false
	        }
	    }
	});
	
	//프로젝트 신청 팀 캐러셀
	$('#team').owlCarousel({
	    items:1,
	    loop:true,
	    center:false,
	    dots:false,
	    margin:10,
	    responsive:{
	    	400:{
	        	items:2,
	        },
	        700:{
	        	items:3,
	        },
	        1000:{
	        	items:4,
	        }
	    }
	});
	
	//팝 오버
	$(document).ready(function(){
		$('[data-toggle="popover"]').popover();   
	});

	//투자자 차트
	var colors = ['red','skyblue','yellowgreen','#c3e6cb','#dc3545','#6c757d'];//차트 색상
	var donutOptions = {
			cutoutPercentage: 60, //도넛두께 : 값이 클수록 얇아짐
			legend: {position:'bottom', padding:5, labels: {pointStyle:'circle', usePointStyle:true}}
	};
	//chart 데이터 선언
	var chartData = {
		labels: ['개인 일반', '개인 적격', '개인 전문', '법인·투자조합'],
		datasets: [ //데이터 object 배열
			{
				data: [127, 39, 10, 24],
				backgroundColor: [
					'rgba(253, 193, 197, 0.8)',
					'rgba(255, 218, 3, 0.8)',
					'rgba(133, 163, 178, 0.8)',
					'rgba(212, 106, 126, 0.8)'
				],
				borderWidth: 0,
				option: {
					responsive: false,
					maintainAspectRatio: false
				}
			}
		]
	}
	var chart = document.getElementById("chart");
	if (chart) {
		new Chart(chart, { //차트 선언
			type: 'pie', //차트 타입
			data: chartData, //차트 데이터 object 배열
			options: donutOptions
		});
	}
});