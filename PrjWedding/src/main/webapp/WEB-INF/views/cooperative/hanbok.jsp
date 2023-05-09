<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fslightbox/3.4.1/index.min.js"></script>
<link rel="shortcut icon" href="/img/favicon.ico">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/styles.css">
<link rel="stylesheet" href="/css/slide.css">
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
  width: 350px;
  height: 500px;
}
 
#root2 img {
  display: block;
  margin: 5px;
  width: 500px;
  height: 300px;
} 


#text-table h1 {
  font-family: 'Noto Sans KR', sans-serif;
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
      	<li><a href="#">로그인</a></li>
        <li><hr></li>
        <li><a href="/User/List">사용자 목록</a></li>
        <li><a href="/User/WriteForm">사용자 등록</a></li>
        <li><hr></li>
        <li><a href="/Menus/List">메뉴 목록</a></li>
        <li><a href="/Menus/WriteForm2">메뉴 등록</a></li>
        <li><hr></li>
        <li><a href="/Board/List?menu_id=MENU01">게시물 목록</a></li>
        <li><a href="/Board/WriteForm?menu_id=MENU01&bnum=0&lvl=0&step=0&nref=0">게시물 등록</a></li>
        <li><hr></li>
        <li><a href="/Pds/List?menu_id=MENU01&nowpage=1">자료실 목록</a></li>
        <li><a href="/Pds/WriteForm?menu_id=MENU01&bnum=0&lvl=0&step=0&nref=0">자료실 등록</a></li>
        <li><hr></li>
        <li><a href="/Pds/List?menu_id=MENU01&nowpage=1">페이징 자료실 목록</a></li>
        <li><a href="/Pds/WriteForm?menu_id=MENU01&bnum=0&lvl=0&step=0&nref=0&nowpage=1">페이징 자료실 등록</a></li>
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
  <a class="nav-item nav-link" href="/Cooperative03" style="color: rgb(0, 0, 0)">Hair & Make Up</a>
  <a class="nav-item nav-link active" href="/Cooperative04" style="background-color: rgb(200, 200, 200)">Hanbok</a>
  <a class="nav-item nav-link" href="/Cooperative05" style="color: rgb(0, 0, 0)">Invitation</a>
</nav>	

<br><br><br><br>
	<div id="text-table">
		<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">신씨비단</span></h1>
		<p><br></p>
		<p>한복은 한국의 전통 의상으로 아름다운 디자인과 우아한 느낌으로 유명합니다. </p>
		<p>고품질의 한복을 저렴한 가격으로 대여해주며, 고객님을 만족시켜 드리겠습니다.</p>
		<p>아름다운 신부님께는 신비스러운 느낌을</p>
		<p>어머님에게는 곱고 차분한 스타일을</p>
		<p>웨딩에 어울리는 다양한 종류의 한복을</p>
		<p>신씨비단과 함께 하세요.</p>
		<p><br></p>
		<p>- 신씨비단 -</p>
	</div><br><br><br><br><br><br><br><br><br><br><br><br><br>
	
	<!-- 슬라이드 -->
    <div id="index_03">
        <div id="header3"></div>
        <div id="slide3">
            <ul>
                <li><img src="./img/hanbok/s01.jpg" alt="슬라이드1" style="width: 600px; height: 800px;"></li>
                <li><img src="./img/hanbok/s02.jpg" alt="슬라이드2" style="width: 600px; height: 800px;"></li>
                <li><img src="./img/hanbok/s03.jpg" alt="슬라이드3" style="width: 600px; height: 800px;"></li>
                <li><img src="./img/hanbok/s04.jpg" alt="슬라이드4" style="width: 600px; height: 800px;"></li>
                <li><img src="./img/hanbok/s05.jpg" alt="슬라이드5" style="width: 600px; height: 800px;"></li>
                <li><img src="./img/hanbok/s06.jpg" alt="슬라이드6" style="width: 600px; height: 800px;"></li>
            </ul>
        </div>
    </div>
    <br>
	<div id="text-table">
		<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">Illustration</span></h1>
	</div>
	<div id="root">
    <div style="display: flex; flex-wrap: wrap; justify-content: center; padding: 1vw;">

      <img
           src="./img/hanbok/a01.jpg"
           alt="swamp"
           />
      <img
           src="./img/hanbok/a02.jpg"
           alt="swamp"
           />
      <img
           src="./img/hanbok/a03.jpg"
           alt="swamp"
           />
            <img
           src="./img/hanbok/a12.jpg"
           alt="swamp"
           />
    </div>
    <div style="display: flex; flex-wrap: wrap; justify-content: center; padding: 1vw;">

      <img
           src="./img/hanbok/a04.jpg"
           alt="swamp"
           />
      <img
           src="./img/hanbok/a05.jpg"
           alt="swamp"
           />
      <img
           src="./img/hanbok/a06.jpg"
           alt="swamp"
           />
           <img
           src="./img/hanbok/a11.jpg"
           alt="swamp"
           />
    </div>
    <div style="display: flex; flex-wrap: wrap; justify-content: center; padding: 1vw;">

      <img
           src="./img/hanbok/a07.jpg"
           alt="swamp"
           />
      <img
           src="./img/hanbok/a08.jpg"
           alt="swamp"
           />
      <img
           src="./img/hanbok/a09.jpg"
           alt="swamp"
           />
           <img
           src="./img/hanbok/a10.jpg"
           alt="swamp"
           />
    </div>
    
    
    <div id="text-table"><br><br>
		<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">Internal</span></h1>
	</div><br>
	<div id="root2">
    <div style="display: flex; flex-wrap: wrap; justify-content: center; padding: 1vw;">

      <img
           src="./img/hanbok/b01.jpg"
           alt="swamp"
           />
      <img
           src="./img/hanbok/b02.jpg"
           alt="swamp"
           />
      <img
           src="./img/hanbok/b03.jpg"
           alt="swamp"
           />
    </div>
	<div id="root2">
    <div style="display: flex; flex-wrap: wrap; justify-content: center; padding: 1vw;">

      <img
           src="./img/hanbok/b04.jpg"
           alt="swamp"
           />
      <img
           src="./img/hanbok/b05.jpg"
           alt="swamp"
           />
      <img
           src="./img/hanbok/b06.jpg"
           alt="swamp"
           />
    </div><br><br><br>
  
  <!-- footer 마지막 부분 -->
<footer>
  <div class="container-fluid" style="background-color: black; color: white; text-align: center;">
    <div class="row">
      <div class="col-md-12">
        <div class="copytext text-center">
          <br>
          <p>주소 : 부산 부산진구 중앙대로 749 THE GREEN(주) GREEN WEDDING 사업자등록번호 : 1234-56-7890 | 대표차 : 김그린</p>
          <p>&copy; 2023 Your Company. All Rights Reserved.</p>
          <br>
        </div>
      </div>
    </div>
  </div>
</footer>

    
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


//페이드인 페이드아웃

$('#slide3>ul>li').hide();
$('#slide3>ul>li:first-child').show();

setInterval(function(){
  $('#slide3>ul>li:first-child').fadeOut()
  .next().fadeIn().end(1000)
  .appendTo('#slide3>ul');
},3000);
    
</script>
</body>
</html> 

