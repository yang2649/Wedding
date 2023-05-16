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
<title>login</title>
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

	<!--유정 로그인-->
	<div class="container">
			<div class="popup-box">
				<span class="popup-close" id="popup-close">&times;</span>
				<h2 class="green-wedding" style="font-size: 35px;">Green Wedding</h2>
				<form action="/loginprocess" method="POST">
					<label for="userid">ID</label> <input type="text" id="userid"
						name="memid" value=""> <label for="password">Password</label>
					<input type="password" id="password" name="mempw" value=""></br>
					<input type="submit" value="로그인" />
				</form>
				<br>
				<div class="links" >
					<a href="#">아이디 찾기</a><a href="#">비밀번호 찾기</a><a href="#"
						id="join" onclick="showJoin();">회원가입</a>
				</div>
			</div>
		</div>
	</div>

	<!-- js 코드  -->
	<script>
		//유정 - Login 부분 스크롤 내렸을때 흰색 변경
		window.addEventListener('scroll', function() {
			var modalOpen = document.querySelector('#modal-open');
			if (window.scrollY > modalOpen.offsetTop) {
				modalOpen.classList.add('white-text');
			} else {
				modalOpen.classList.remove('white-text');
			}
		});

		// 유정 로그인  
		$(function() {
		

			$("#join").click(function() {
				modalClose(); //회원가입 눌렀을 때도 모달 닫기 함수 호출
			});
		});

		//유정 회원가입
		function showJoin() {
			window.open("User/WriteForm", "팝업 테스트",
					"width=500, height=550, top=250, left=650");
		}
	</script>

</body>
</html>