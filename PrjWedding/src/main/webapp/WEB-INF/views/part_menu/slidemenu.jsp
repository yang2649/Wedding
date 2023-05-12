<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- JSTL 라이브러리 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<meta charset="UTF-8">


	<!-- 햄버거 모양 토글 -->
	<div class="menu-toggle">
		<span class="bar"></span> 
		<span class="bar"></span> 
		<span class="bar"></span>
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
					<li><a href="#">Information(내 정보창)</a></li>
					<!-- 내 정보 창입니다 -->
					<br>
					<li><a href="#">Estimate (견적서)</a></li>
					<!-- 견적서라는 뜻입니다 -->
					<br>
					<li><a href="#">Inquiry Details (문의내역)</a></li>
					<!-- 문의 내역이라는 뜻입니다 -->
					<br>
					<li><a href="#">Steamed List(찜 목록)</a></li>
					<!-- 찜 목록 이라는뜻 입니다 -->
				</ul>
			</li>
		</ul>
	</div>

	<div class="sliding-menu-overlay"></div>

	<!-- 수정 -->
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

		
	</script>
