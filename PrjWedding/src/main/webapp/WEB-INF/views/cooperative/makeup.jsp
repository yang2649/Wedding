<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>makeup</title>

<!-- jquery 사용 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	
<!-- ajax 스타일 시트 -->	
<script src="https://cdnjs.cloudflare.com/ajax/libs/fslightbox/3.4.1/index.min.js"></script>

<!-- css 부분 사용 -->
<link rel="shortcut icon" href="/img/favicon.ico">
<link rel="stylesheet" href="./css/loginstyle.css">
<link rel="stylesheet" href="/css/styles.css">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/slide.css">

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<link rel="shortcut icon" href="/img/favicon.ico">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">


<!-- 글 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!-- 구글 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=EB+Garamond:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@700&family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Lora:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Castoro+Titling&display=swap" rel="stylesheet">

<style>
/* body 메뉴 폰트 및 사이즈 */
nav  {
  font-family: 'Times New Roman';
  font-size: 20px;
}

p {
  text-align: center;
  margin: 10px;
  font-family: 'Noto Sans KR', sans-serif;
  font-size: 18px;
}

#root img {
  display: block;
  margin: 5px;
  width: 250px;
  height: 350px;
} 

#text-table h1 {
  font-family: 'Noto Sans KR', sans-serif;
}

.ddd h2{
  text-align: center;
}
</style>

</head>
<body>
<div class="container">
    <div class="header">
   <a href="/" class="logo">
      <div style="margin: 0; padding: 15px; text-align: center;">
                <div style="margin: 0;">Green</div>
                <div style="margin: 0;">Wedding</div>
    </div>
    </a>
      <nav class="navbar navbar-expand-lg navbar-light bg-light" style="margin-right: 90px; background-color: white !important;">
        
        <div class="container-fluid">
        <!-- 화면 축소시 햄버거 버튼 (현재는 삭제) -->
   		<!-- <button class="navbar-toggler navbar-toggler-icon" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation"></button> -->
   		<div class="collapse navbar-collapse" id="navbarNav">
         <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
          

          		<!-- VENUE -->
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                VENUE
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a class="dropdown-item" href="#">venue</a></li>
                  <li><a class="dropdown-item" href="#">예시1</a></li>
                  <li><a class="dropdown-item" href="#">예시2</a></li>
                </ul>
              </li>
            
              <!-- CATERRING -->
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                CATERRING
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a class="dropdown-item" href="#">뷔페</a></li>
                  <li><a class="dropdown-item" href="#">예시1</a></li>
                  <li><a class="dropdown-item" href="#">예시2</a></li>
                </ul>
              </li>
              
              <!-- COOPERATIVE -->
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                COOPERATIVE
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a class="dropdown-item" href="#">cooperative</a></li>
                  <li><a class="dropdown-item" href="#">예시1</a></li>
                  <li><a class="dropdown-item" href="#">예시2</a></li>
                </ul>
              </li>
              
              
              <!-- RESERVATION -->
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                RESERVATION
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a class="dropdown-item" href="#">예약하기</a></li>
                  <li><a class="dropdown-item" href="#">예약절차</a></li>
                  <li><a class="dropdown-item" href="#">비용안내</a></li>
                </ul>
              </li>
              
              
             <!-- COMMUNITY -->
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                COMMUNITY
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a class="dropdown-item" href="#">고객 후기</a></li>
                  <li><a class="dropdown-item" href="#">공지 사항</a></li>
                  <li><a class="dropdown-item" href="#">자료실</a></li>
                </ul>
              </li>
              
              
              <!-- Location -->
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  LOCATION
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a class="dropdown-item" href="#">Directions</a></li>
                  <li><a class="dropdown-item" href="#">Studio location</a></li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </div>
  </div>

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
      	<li> ${ sessionScope.login.memname } 님 환영합니다<br></li>
        <li><a href="/logout">로그아웃</a></li>
        <li><hr></li>
        <li><a href="#">Information</a></li>
         <br>
        <li><a href="#">Estimate</a></li> <!-- 견적서라는 뜻입니다 -->
        <br>
        <li><a href="#">Inquiry Details</a></li> <!-- 문의 내역이라는 뜻입니다 -->
        <br>
        <li><a href="#">Steamed List</a></li> <!-- 찜 목록 이라는뜻 입니다 -->
      </ul>
    </li>
  </ul>
</div>

<div class="sliding-menu-overlay"></div>

		<!-- 메인 메뉴 -->
		
<img src="./img/side_main.jpg" width="100%" height="100%" >
<nav class="nav nav-pills nav-justified" >
  <a class="nav-item nav-link" href="/Cooperative01" style="color: rgb(0, 0, 0)">Studio</a>
  <a class="nav-item nav-link" href="/Cooperative02" style="color: rgb(0, 0, 0)">Dress</a>
  <a class="nav-item nav-link active" href="/Cooperative03" style="background-color: rgb(200, 200, 200)">Hair & Make Up</a>
  <a class="nav-item nav-link" href="/Cooperative04" style="color: rgb(0, 0, 0)">Hanbok</a>
  <a class="nav-item nav-link" href="/Cooperative05" style="color: rgb(0, 0, 0)">Invitation</a>
</nav>	<br><br><br><br>
	<div id="text-table">
		<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">Hair & Make Up</span></h1>
		<p><br></p>
		<p>"단 하루뿐인 결혼식"</p>
		<p>아름다운 신부님 듬직한 신랑님을 위한</p>
		<p><br></p>
		<p>그 날의 주인공으로 만들어주는</p>
		<p><br></p>
		<p>Green Make Up</p>
		<p><br></p>
		<p>고객들 만족하는 하루로 만들어 드립니다.</p>
		<p><br></p>
	</div><br><br><br><br>
	<div id="ddd">
	<h2>
  	<video muted autoplay loop style="width: 80%; text-align: center;">
      <source src="./img/makeup/vd.mp4" type="video/mp4">
      <source src="./img/makeup/vd.ogg" type="video/ogg">
      <strong>Your browser does not support the video tag.</strong>
    </video>
    </h2>
    </div>
    <br><br>
    <div id="text-table">
		<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">Illustration</span></h1>
	</div>
	<div id="root">
    <div style="display: flex; flex-wrap: wrap; justify-content: center; padding: 1vw;">

      <img
           src="./img/makeup/1.JPG"
           alt="swamp"
           />
      <img
           src="./img/makeup/2.JPG"
           alt="swamp"
           />
      <img
           src="./img/makeup/3.JPG"
           alt="swamp"
           />
    </div>
	<div id="root">
    <div style="display: flex; flex-wrap: wrap; justify-content: center; padding: 1vw;">

      <img
           src="./img/makeup/4.JPG"
           alt="swamp"
           />
      <img
           src="./img/makeup/5.JPG"
           alt="swamp"
           />
      <img
           src="./img/makeup/6.JPG"
           alt="swamp"
           />
    </div>
	<div id="root">
    <div style="display: flex; flex-wrap: wrap; justify-content: center; padding: 1vw;">

      <img
           src="./img/makeup/7.JPG"
           alt="swamp"
           />
      <img
           src="./img/makeup/8.JPG"
           alt="swamp"
           />
      <img
           src="./img/makeup/9.JPG"
           alt="swamp"
           />
    </div>
  </div>


  	

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
    if ($('.sliding-menu').hasClass('open')) {
      $('.sliding-menu').removeClass('open'); // 슬라이딩 메뉴 숨기기
    }
    if ($('.sliding-menu-overlay').hasClass('open')) {
      $('.sliding-menu-overlay').removeClass('open'); // 슬라이딩 메뉴 오버레이 숨기기
    }
  }
});

 //슬라이드
 var slideIndex = 0; //slide index

// HTML 로드가 끝난 후 동작
window.onload=function(){
  showSlides(slideIndex);

  // Auto Move Slide
  var sec = 3000;
  setInterval(function(){
    slideIndex++;
    showSlides(slideIndex);

  }, sec);
}


// Next/previous controls
function moveSlides(n) {
  slideIndex = slideIndex + n
  showSlides(slideIndex);
}

// Thumbnail image controls
function currentSlide(n) {
  slideIndex = n;
  showSlides(slideIndex);
}

function showSlides(n) {

  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  var size = slides.length;

  if ((n+1) > size) {
    slideIndex = 0; n = 0;
  }else if (n < 0) {
    slideIndex = (size-1);
    n = (size-1);
  }

  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }

  slides[n].style.display = "block";
  dots[n].className += " active";
}

// 사진 클릭시 모달창
 function wrap(el) {
      const wrappingElement = document.createElement('a');
      wrappingElement.href = el.src;
      wrappingElement.setAttribute('data-fslightbox', 'gallery');
      el.parentElement.insertBefore(wrappingElement, el);
      wrappingElement.appendChild(el);
    }

    document.querySelectorAll('#root img').forEach(el => {
      wrap(el);
    });
    document.querySelectorAll('#root2 img').forEach(el => {
      wrap(el);
    });

    
refreshFsLightbox();
    
</script>
</body>
</html> 

