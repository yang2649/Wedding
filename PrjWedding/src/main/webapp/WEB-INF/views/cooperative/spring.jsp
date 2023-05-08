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
/* 슬라이딩 메뉴 스타일 */


footer{
   text-align: center;
   margin:auto;

   background-color : #383838;
      background       : rgba(56,56,56,1);
      color    :rgba(255,255,255,1);
   color : #ffffff;
}
   .footer-section {
   background-color : #383838;
      background       : rgba(56,56,56,1);
   color : #ffffff;
      color    :rgba(255,255,255,1);
      font-size  :16px;
background-size : cover;
 background-repeat: no-repeat;   

  padding-top : 30px;
      padding-bottom    : 30px;
   }

#text-table{
width: 1200px;
margin: auto;
}
#text-table h1{
margin-top: 200px;
}
#text-table p{
text-align: center;

}

#studioconceptList{
padding-top:125px;
margin : auto;
width: 1200px;

}

</style>

</head>
<body>
   <div class="header">
<h2 style="margin: 0; padding: 15px; text-align: center;" class="logo">
Green<br>Wedding</h2>
   
  <span style="margin-right: auto;">
    <a href="#" style="margin: 0 5px;">VENUE</a>
    <a href="#" style="margin: 0 5px;">CATERRING</a>
    <a href="/Studio" style="margin: 0 5px;">COOPERATIVE</a>
    <a href="#" style="margin: 0 5px;">RESERVATION</a>
    <a href="#" style="margin: 0 5px;">COMMUNITY</a>
<a href="/Location" style="margin: 0 5px;">LOCATION</a>
  </span>
</div>
   <div class="menu-toggle">MENU</div>
<div class="sliding-menu">
  <ul>
    <li>
      <ul>
         <br>
         <br>
         <br>
         <br>
         <br>
         <li><a href="/User/Login">로그인</a><li><br><br></li>
      </ul>
    </li>
  </ul>
</div>
<div class="sliding-menu-overlay"></div>
      <!-- 메인 메뉴 -->
   
 <img src="./img/side_main.jpg" width="100%" height="100%" >

 
<nav class="nav nav-pills nav-justified">
  <a class="nav-item nav-link active"  href="/Studio"  style="background-color: rgb(200, 200, 200)" >스튜디오</a>
  <a class="nav-item nav-link " href="/Dress" style="color: rgb(0, 0, 0)">드레스</a>
  <a class="nav-item nav-link " href="/Makeup" style="color: rgb(0, 0, 0)">메이크업</a>
  <a class="nav-item nav-link" href="/Hanbog" style="color: rgb(0, 0, 0)" >한복</a>
  <a class="nav-item nav-link " href="/Invitation" style="color: rgb(0, 0, 0)">청첩장</a>
</nav>	



<div id="studioconceptList" >
<nav class="nav nav-pills nav-justified">
  <a class="nav-item nav-link " href="/Studio" style="color: rgb(0, 0, 0)">Feelmoment</a>
  <a class="nav-item nav-link " href="/Ateso" style="color: rgb(0, 0, 0)">Ateso</a>
  <a class="nav-item nav-link active"  href="/Spring"  style="background-color: rgb(200, 200, 200)" >Spring</a>
</nav>	
<hr>
</div>



 <div id="text-table"	>
      <h1 style="text-align: center;">
         <span style="color: rgb(191, 131, 101);" >너를 ...봄
         </span></h1>
      <p><br></p>
      <p>Atelier+Sole</p>
      <p>합성어로 "아테소" </p>
      <p>  단,하나뿐인 사진을 위한 </p>
      <p>"그녀가 사랑하는 순간"</p>
      
      <p><br></p>
   </div>
   
   <!-- 슬라이드 -->
    <div class="slideshow-container">

      <!-- Full-width images with number and caption text -->
      <div class="mySlides">
        <div class="numbertext">1 / 12</div>
        <img src="./img/너를 봄/1.JPG" style="width:100%">
        <div class="text">GREEM WEDDING</div>
      </div>
      <div class="mySlides">
        <div class="numbertext">2 / 12</div>
        <img src="./img/너를 봄/2.JPG" style="width:100%">
        <div class="text">GREEM WEDDING</div>
      </div>

      <div class="mySlides">
        <div class="numbertext">3 / 12</div>
        <img src="./img/너를 봄/3.JPG" style="width:100%">
        <div class="text">GREEM WEDDING</div>
      </div>

      <div class="mySlides">
        <div class="numbertext">4 / 12</div>
        <img src="./img/너를 봄/4.JPG" style="width:100%">
        <div class="text">GREEM WEDDING</div>
      </div>
      <div class="mySlides">
        <div class="numbertext">5 / 12</div>
        <img src="./img/너를 봄/5.JPG" style="width:100%">
        <div class="text">GREEM WEDDING</div>
      </div>
      <div class="mySlides">
        <div class="numbertext">6 / 12</div>
        <img src="./img/너를 봄/6.JPG" style="width:100%">
        <div class="text">GREEM WEDDING</div>
      </div>

      <div class="mySlides">
        <div class="numbertext">7 / 12</div>
        <img src="./img/너를 봄/7.JPG" style="width:100%">
        <div class="text">GREEM WEDDING</div>
      </div>

      <div class="mySlides">
        <div class="numbertext">8 / 12</div>
        <img src="./img/너를 봄/8.JPG" style="width:100%">
        <div class="text">GREEM WEDDING</div>
      </div>
      <div class="mySlides">
        <div class="numbertext">9 / 12</div>
        <img src="./img/너를 봄/9.JPG" style="width:100%">
        <div class="text">GREEM WEDDING</div>
      </div>
      <div class="mySlides">
        <div class="numbertext">10 / 12</div>
        <img src="./img/너를 봄/10.JPG" style="width:100%">
        <div class="text">GREEM WEDDING</div>
      </div>

      <div class="mySlides">
        <div class="numbertext">11 / 12</div>
        <img src="./img/너를 봄/11.JPG" style="width:100%">
        <div class="text">GREEM WEDDING</div>
      </div>

      <div class="mySlides">
        <div class="numbertext">12 / 12</div>
        <img src="./img/너를 봄/12.JPG" style="width:100%">
        <div class="text">GREEM WEDDING</div>
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

</script>
</body>
</html> 