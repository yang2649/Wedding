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
<link rel="stylesheet" href="/css/btn.css">
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
  width: 394px;
  height: 250px;
} 
#root2 img {
  display: block;
  margin: 5px;
  width: 350px;
  height: 414px;
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
  <a class="nav-item nav-link active" href="/Cooperative01"  style="background-color: rgb(200, 200, 200)" >Studio</a>
  <a class="nav-item nav-link" href="/Cooperative02" style="color: rgb(0, 0, 0)">Dress</a>
  <a class="nav-item nav-link" href="/Cooperative03" style="color: rgb(0, 0, 0)">Makeup</a>
  <a class="nav-item nav-link" href="/Cooperative04" style="color: rgb(0, 0, 0)">Hanbok</a>
  <a class="nav-item nav-link" href="/Cooperative05" style="color: rgb(0, 0, 0)">Invitation</a>
</nav>	


<!-- dribbble -->
<a class="dribbble" href="https://dribbble.com/shots/7441241-Button-Hover-Effects" target="_blank"><img src="https://cdn.dribbble.com/assets/dribbble-ball-mark-2bd45f09c2fb58dbbfb44766d5d1d07c5a12972d602ef8b32204d28fa3dda554.svg" alt=""></a>
<br><br><br><br>
	<div id="text-table"><br>
		<h1 style="text-align: center; font-size: 15px;">
	<a href="/Cooperative01"><button type="button" class="button">Fillmoment</button></a>
	<a href="/Ateso"><button type="button" class="button">Ateso</button></a>
	<a href="/Spring"><button type="button" class="button" >너를 봄</button></a>
	<br><br><br><br><br>
	<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">너를 봄</span></h1>
		<p>평생 한번이라는 이유로, 비싸게 할 필요가 있나요?</p>
		<p><br></p>
		<p>결혼준비를 비싸게 할 필요가 있을까요?</p>
		<p>평생 한 번이라는 이유로 잠깐 동안 너무 많은 비용을 쓰고 있습니다.</p>
		<p>우리는 필요한 서비스를 직접 만들고 운영,관리하여 비용은 낮추고</p>
		<p>서비스 품질을 높여 더 많은 사람들에게 널리 알려지기를 바랍니다.</p>
		<p><br></p>
	</div>
	
	<!-- 슬라이드 -->
	 <div class="slideshow-container">
<div class="ddd">
<h2>
      <!-- Full-width images with number and caption text -->
      <div class="mySlides">
        <div class="numbertext">1 / 7</div>
        <img src="./img/studio/b01.jpg" style="width:500px;" >
        <div class="text">GREEM WEDDING</div>
      </div>

      <div class="mySlides">
        <div class="numbertext">2 / 7</div>
        <img src="./img/studio/b02.jpg" style="width:500px">
        <div class="text">GREEM WEDDING</div>
      </div>

      <div class="mySlides">
        <div class="numbertext">3 / 7</div>
        <img src=./img/studio/b05.jpg style="width:500px">
        <div class="text">GREEM WEDDING</div>
      </div>

      <div class="mySlides">
        <div class="numbertext">4 / 7</div>
        <img src="./img/studio/b11.jpg" style="width:500px">
        <div class="text">GREEM WEDDING</div>
      </div>

      <div class="mySlides">
        <div class="numbertext">5 / 7</div>
        <img src="./img/studio/b13.jpg" style="width:500px">
        <div class="text">GREEM WEDDING</div>
      </div>

      <div class="mySlides">
        <div class="numbertext">6 / 7</div>
        <img src="./img/studio/b14.jpg" style="width:500px">
        <div class="text">GREEM WEDDING</div>
      </div>
      
      <div class="mySlides">
        <div class="numbertext">7 / 7</div>
        <img src="./img/studio/b15.jpg" style="width:500px">
        <div class="text">GREEM WEDDING</div>
      </div>
</h2>
</div>


      <!-- Next and previous buttons -->
      <a class="prev" onclick="moveSlides(-1)">&#10094;</a>
      <a class="next" onclick="moveSlides(1)">&#10095;</a>
    </div>
    <br/>

    <!-- The dots/circles -->
    <div style="text-align:center">
      <span class="dot" onclick="currentSlide(0)"></span>
      <span class="dot" onclick="currentSlide(1)"></span>
      <span class="dot" onclick="currentSlide(2)"></span>
      <span class="dot" onclick="currentSlide(3)"></span>
      <span class="dot" onclick="currentSlide(4)"></span>
      <span class="dot" onclick="currentSlide(5)"></span>
    </div>

    <!-- 브리드룸 -->
    <div id="text-table">
		<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">Another</span></h1>
	</div>
	<div id="root">
    <div style="display: flex; flex-wrap: wrap; justify-content: center; padding: 1vw;">

      <img
           src="./img/studio/b04.jpg"
           alt="swamp"
           />
      <img
           src="./img/studio/b10.jpg"
           alt="swamp"
           />
      <img
           src="./img/studio/b16.jpg""
           alt="swamp"
           />
    </div>
  </div>
  
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

    
refreshFsLightbox();
    
document.querySelectorAll('.button').forEach(button => button.innerHTML = '<div><span>' + button.textContent.trim().split('').join('</span><span>') + '</span></div>');
</script>
</body>
</html> 

