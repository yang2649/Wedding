<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- JSTL 라이브러리 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="theme-color" content="#363636">
<meta name="msapplication-navbutton-color" content="#363636">
<meta name="apple-mobile-web-app-status-bar-style"
	content="black-translucent">
<title>Slide_menu_login</title>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<!-- Bootstrap JS -->
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<link rel="shortcut icon" href="/img/favicon.ico">

<!-- css 부분 사용 -->
<link rel="stylesheet" href="./css/styles.css">
<link rel="stylesheet" href="./css/loginstyle.css">

<!-- jquery 사용 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- 구글 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=EB+Garamond:wght@500&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@700&family=Nanum+Gothic:wght@700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Lora:wght@500&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Castoro+Titling&display=swap"
	rel="stylesheet">

<!-- ajax 스타일 시트 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.3/css/lightbox.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.3/js/lightbox.min.js"></script>

<!-- owl css 사용 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>


</head>

<body>


	<!-- 햄버거 모양 토글 -->
	<div class="menu-toggle">
		<span class="bar"></span> <span class="bar"></span> <span class="bar"></span>
	</div>

	<!-- 슬라이딩 메뉴 -->
	<div class="sliding-menu">
		<ul>
			<li>
				<ul>
					<br>
					<br>
					<br>
					<br>
					<br>
					<!--유정 로그인-->
					<li><hr></li>
					<c:if test="${sessionScope.login != null}">
						<li style="font-size: 1.1rem;">${ sessionScope.login.memname }
							님 환영합니다<br>
						</li>
						<br>
						<li style="font-size: 1.2rem;"><a href="/logout">로그아웃</a></li>
					</c:if>
					<li><hr></li>
					<li><a href="/Adminpage/Meminfomanager">Member Info Management</a></li>
					<!-- 회원 정보 창입니다 -->
					<br>
					<li><a href="/Adminpage/Estilistmanager">Estimate List Management</a></li>
					<!-- 견적서라는 뜻입니다 -->
					<br>
					<li><a href="/Adminpage/Favlistmanager">Favorite List Management</a></li>
					<!-- 찜 목록 이라는뜻 입니다 -->
				</ul>
			</li>
		</ul>
	</div>

	<div class="sliding-menu-overlay"></div>


	<!-- js 코드 작성 -->
	<script>
		const menuButton = document.querySelector('.menu-toggle');
		const slidingMenu = document.querySelector('.sliding-menu');
		const slidingMenuOverlay = document
				.querySelector('.sliding-menu-overlay');

		menuButton.addEventListener('click', function() {
			slidingMenu.classList.toggle('open');
			slidingMenuOverlay.classList.toggle('open');
		});

		slidingMenuOverlay.addEventListener('click', function() {
			slidingMenu.classList.remove('open');
			slidingMenuOverlay.classList.remove('open');
		});

		//팝업창 열기
		function popupOpen() {
			const popupContainer = document.querySelector('.popup-container');
			popupContainer.style.display = 'flex';
		}

		// 팝업창 닫기
		function popupClose() {
			const popupContainer = document.querySelector('.popup-container');
			popupContainer.style.display = 'none';
		}

		// 로그인 버튼 클릭 시 팝업창 열기
		const loginButton = document.querySelector('.sliding-menu li ul li a');
		loginButton.addEventListener('click', popupOpen);

		// 팝업창 닫기 버튼 클릭 시 팝업창 닫기
		const closeButton = document.querySelector('.popup-close');
		closeButton.addEventListener('click', popupClose);

		$(window).scroll(function() {
			// 스크롤 위치가 50px 이상인 경우
			if ($(this).scrollTop() > 50) {
				$('div.header').slideUp();
				$('.menu-toggle').addClass('scrolled');
				$('.bar').css('background-color', '#fff'); // 색깔 변경
				if ($('.sliding-menu').hasClass('open')) {
					$('.sliding-menu').removeClass('open'); // 슬라이딩 메뉴 숨기기
				}
				if ($('.sliding-menu-overlay').hasClass('open')) {
					$('.sliding-menu-overlay').removeClass('open'); // 슬라이딩 메뉴 오버레이 숨기기
				}
			}
			// 스크롤 위치가 50px 미만인 경우
			else {
				$('div.header').slideDown();
				$('.menu-toggle').removeClass('scrolled');
				$('.bar').css('background-color', '#000'); // 색깔 변경
				if ($('.sliding-menu').hasClass('open')) {
					$('.sliding-menu').removeClass('open'); // 슬라이딩 메뉴 숨기기
				}
				if ($('.sliding-menu-overlay').hasClass('open')) {
					$('.sliding-menu-overlay').removeClass('open'); // 슬라이딩 메뉴 오버레이 숨기기
				}
			}
		});

		// 스크롤 위치에 따른 메뉴 버튼 색상 변경
		window.addEventListener('scroll', function() {
			const menuToggle = document.querySelector('.menu-toggle');
			if (window.scrollY > 50) {
				menuToggle.classList.add('scrolled');
			} else {
				menuToggle.classList.remove('scrolled');
			}
		});

		//첫 화면 이미지 밑 점 3개
		// 화면이 4초마다 변경
		$(document).ready(function() {
			$('.owl-carousel').owlCarousel({
				loop : true,
				autoplay : true,
				autoplayTimeout : 4000,
				margin : 10,
				nav : false,
				dots : true,
				items : 1,
				responsive : {
					0 : {
						items : 1
					},
					600 : {
						items : 1
					},
					1000 : {
						items : 1
					}
				}
			});
		});

		/* dots: true, 설정을 해주어야 이미지 밑 점이 나타남 */
		$(document).ready(
				function() {
					$('.-my-owl-carousel').owlCarousel(
							{
								loop : true,
								margin : 10,
								nav : true,
								navText : [ '<i class="fa fa-angle-left"></i>',
										'<i class="fa fa-angle-right"></i>' ],
								dots : true,
								autoplay : true,
								autoplayTimeout : 5000,
								autoplayHoverPause : true,
								responsive : {
									0 : {
										items : 1
									},
									600 : {
										items : 2
									},
									1000 : {
										items : 3
									}
								}
							});
				});
	</script>

</body>
</html>