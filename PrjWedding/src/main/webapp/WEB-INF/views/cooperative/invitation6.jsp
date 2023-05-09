<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>cooperative</title>
<!-- jquery 사용 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fslightbox/3.4.1/index.min.js"></script>

<!-- css 부분 사용 -->
<link rel="shortcut icon" href="/img/favicon.ico">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/styles.css">
<link rel="stylesheet" href="/css/slide.css">
<link rel="stylesheet" href="/css/btn.css">

<!-- 글 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<link rel="shortcut icon" href="/img/favicon.ico">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">


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
  width: 500px;
  height: 500px;
} 
#text-table h1 {
  font-family: 'Noto Sans KR', sans-serif;
}
.ddd h2{
text-align: center;
}

#text-table h1 {
  font-family: 'Noto Sans KR', sans-serif;
}
#buffet-text h2{
  font-family: 'Noto Sans KR', sans-serif;
  font-size  :  50px;
  font-weight : bold;
  text-align: center; 
  line-height: 2;
}
#buffet-text p{
  font-family: 'Noto Sans KR', sans-serif;
  font-size  :  15px;
  font-weight : bold;
  text-align: center; 
  line-height: 1;
}
#buffet-text {
  margin: auto;
  width: 70%;
  border: 10px solid #DCDCDC; 
}
#buffet-text img{
  width:45%;
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
      	<li> ${ sessionScope.login.username } 님 환영합니다<br></li>
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
  <a class="nav-item nav-link" href="/Cooperative03" style="color: rgb(0, 0, 0)">Hair & Make Up</a>
  <a class="nav-item nav-link" href="/Cooperative04" style="color: rgb(0, 0, 0)">Hanbok</a>
  <a class="nav-item nav-link active" href="/Cooperative05" style="background-color: rgb(200, 200, 200)" >Invitation</a>
</nav>	


<!-- dribbble -->
<a class="dribbble" href="https://dribbble.com/shots/7441241-Button-Hover-Effects" target="_blank"><img src="https://cdn.dribbble.com/assets/dribbble-ball-mark-2bd45f09c2fb58dbbfb44766d5d1d07c5a12972d602ef8b32204d28fa3dda554.svg" alt=""></a>
<br><br><br><br>
	<div id="text-table"><br>
		<h1 style="text-align: center; font-size: 15px;">
	<a href="/466"><button type="button" class="button">BNIEL466</button></a>
	<a href="/355"><button type="button" class="button" >BNIEL355</button></a>
	<a href="/497"><button type="button" class="button" >BNIEL497</button></a>
	<a href="/594"><button type="button" class="button" >BNIEL594</button></a>
	<a href="/634"><button type="button" class="button">GRENDY634</button></a>
	<a href="/533"><button type="button" class="button" >GRENDY533</button></a>
	<a href="/512"><button type="button" class="button" >GRENDY512</button></a>
	<a href="/546"><button type="button" class="button" >GRENDY546</button></a>
	<br><br><br><br><br>
	<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">GRENDY533</span></h1>
	</div> <br><br>
	<div style="text-align: center;"">
	<img src="./img/invitation/g533.jpg" />
	</div><br><br>
	<div id="buffet-text"><br><br>
		<div id="ddd">
		<h2>
	  	<video muted autoplay loop style="width: 80%; text-align: center;">
	      <source src="./img/invitation/g533.mp4" type="video/mp4">
	    </video>
	    </h2>
	    </div>

		<p>그랜디는 일러스트와 타이포그래피가 돋보이는 유니크한 청첩장입니다</p>
		<br><br>
	</div><br><br>

    <!-- 포토 -->
    <div id="text-table">
		<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">Imege</span></h1>
	</div><br><br>
	<div id="root">
    <div style="display: flex; flex-wrap: wrap; justify-content: center;">

      <img
           src="./img/invitation/g533_01.jpg"
           alt="swamp"
           />
      <img
           src="./img/invitation/g533_02.jpg"
           alt="swamp"
           />
      
    </div>
	<div id="root">
    <div style="display: flex; flex-wrap: wrap; justify-content: center; ">

      <img
           src="./img/invitation/g533_03.jpg"
           alt="swamp"
           />
      <img
           src="./img/invitation/g533_04.jpg"
           alt="swamp"
           />
      
    </div>
  </div><br><br>
  
  
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

