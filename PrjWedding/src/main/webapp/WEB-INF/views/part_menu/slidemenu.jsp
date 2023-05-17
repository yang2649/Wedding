<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- JSTL 라이브러리 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<meta charset="UTF-8">


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
				<li><a href="/Mypage01">Information</a></li>
				<!-- 내 정보 창입니다 -->
				<br>
				<li><a href="/Mypage03">Estimate</a></li>
				<!-- 견적서라는 뜻입니다 -->
				<br>
				<li><a href="/Mypage02">Steamed List</a></li>
				<!-- 찜 목록 이라는뜻 입니다 -->
			</ul>
		</li>
	</ul>
</div>
<!-- test -->
<div class="sliding-menu-overlay"></div>

<script>
	const menuButton = document.querySelector('.menu-toggle');
	const slidingMenu = document.querySelector('.sliding-menu');
	const slidingMenuOverlay = document.querySelector('.sliding-menu-overlay');

	menuButton.addEventListener('click', function() {
		slidingMenu.classList.toggle('open');
		slidingMenuOverlay.classList.toggle('open');
	});

	slidingMenuOverlay.addEventListener('click', function() {
		slidingMenu.classList.remove('open');
		slidingMenuOverlay.classList.remove('open');
	});

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
	
	$(document).ready(function() {
	    $('a').on('click', function(event) {
	        var loginStatus = "${sessionScope.login}";
	        if (loginStatus === null || loginStatus === "") {
	            event.preventDefault(); // 링크 클릭 이벤트의 기본 동작 중지
	            alert("로그인이 필요합니다."); // 로그인이 필요한 경우 알림 메시지 출력
	        }
	    });
	});
</script>
