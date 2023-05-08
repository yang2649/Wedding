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

ul.sliding-menu, ul.sliding-menu ul {
  list-style-type: none;
  padding: 0;
  margin: 0;
}

ul.sliding-menu li {
  position: relative;
}

ul.sliding-menu li > a {
  display: block;
}

ul.sliding-menu ul {
  display: none;
  position: absolute;
  top: 0;
  left: 100%;
  min-width: 200px;
  background-color: #fff;
  border: 1px solid #ccc;
}

ul.sliding-menu li:hover > ul {
  display: block;
}

/* 상단 헤더 추가 */
.header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 15px;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  background-color: #fff;
  z-index: 999;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.header h2 {
  margin: 0;
  padding: 0 15px;
  text-align: left;
  font-size: 30px;
  font-family: 'Times New Roman';
}
/* Slideshow container */
.slideshow-container {
  max-width: 1200px;
  max-height: 750px;
  position: relative;
  margin: auto;
}
.slideshow-container .mySlides img {
  height: 750px;
}
.header span {
  margin-left: auto;
}

.header a {
  text-decoration: none;
  color: #333;
  font-size: 16px;
  margin-left: auto; /* 이전에는 margin-right를 조절했는데 margin-left을 auto로 변경 */
  padding: 5px 3px;
  transition: background-color 0.3s ease;
}


.header .header-title {
  text-align: center;
}

.header a:last-child {
  margin-right: 15px; /* 5px에서 15px로 수정 */
}

.header a:hover {
  background-color: #333;
  color: #fff;
}

.menu-toggle {
  display: flex;
  padding: 15px;
  position: fixed;
  top: 35px;
  right: 65px;
  width: 35px;
  height: 35px;
  cursor: pointer;
  z-index: 1001;
  font-family: 'Cinzel', serif;
  font-size: 20px;
}

.menu-toggle a {
  text-decoration: none;
  color: #333;
  font-size: 16px;
  margin: 0 15px 0 0;
  transition: background-color 0.3s ease;
  padding: 10px 5px;
}

.menu-toggle.white {
  color: #fff;
}

@media screen and (max-width: 768px) {
  .menu-toggle a {
    display: block;
    margin: 5px 0;
  }
}

.sliding-menu {
  position: fixed;
  top: 50px;
  right: -400px;
  width: 350px;
  height: 100%;
  background-color: rgba(255, 255, 255, 0.5);
  transition: right 1.0s ease;
  z-index: 999;
  font-weight: bold;
  font-family: 'Cinzel', serif;
  overflow-y: auto;
  padding-bottom: 50px;
}

.sliding-menu.open {
  right: 0;
}

.sliding-menu-overlay {
  display: none;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.5);
  z-index: 998;
}

.sliding-menu.open + .sliding-menu-overlay {
  display: block;
}

.sliding-menu ul {
  margin: 0;
  padding: 0;
  display: flex;
  flex-direction: column;
  align-items: center;
  list-style-type: none;
}

.sliding-menu > ul > li {
  text-align: center; /* 가운데 정렬 추가 */
}

.sliding-menu li {
  text-align: center;
}
.sliding-menu  li hr {
  margin: 10px 0;
  border: none;
  font-weight: bold;
  border-bottom: 1px solid #ccc;
}


li {
  display: flex;
  justify-content: center;
  font-family: 'Cinzel', serif;
  font-size: 20px;
}

.header span {
  margin-right: auto;
}

.header a{
  float: left;
}

.header .header-links {
  display: flex;
  justify-content: center; /* 가운데 정렬 */
  align-items: center;
  margin-right: 40px;
}

.header .header-links a:last-child {
  margin-right: 0; /* 이전에 15px이었던 margin-right 값을 0으로 변경 */
}

.header .header-links a:not(:last-child) {
  margin-right: 15px;
}

/* 헤더가 사라졌다 나타나는 기능을 위한 추가 스타일 */
.hide-header {
  transform: translateY(-100%);
  transition: transform 0.3s ease-in-out;
}



.bx-wrapper {
   position: relative;
   margin: 0 auto;
   padding: 0;
   *zoom: 1;
}

.bx-wrapper img {
   max-width: 100%;
   display: block;
}

.bxslider {
   margin: 0;
   padding: 0;
}

.bx-viewport {
   position: relative;
   width: 100%;
   height: 400px;
   overflow: hidden;
   margin: 0;
   padding: 0;
}

.bxslider li {
   width: 100%;
   height: 400px;
   display: block;
}

body {
   padding-top: 80px; /* 헤더 높이만큼 패딩 추가 */
}

li {
  display: flex;
  justify-content: center;
}

.gold {
  color: #FFD700;
}

/* body 메뉴 폰트 및 사이즈 */
nav  {
  font-family: 'Times New Roman';
  font-size: 20px;
  padding-top:0px;
  margin-left:200px;
  margin-right:200px;
  margin:auto;
width: 673px;
}
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



	/* 슬라이드 */

.w3-btn-floating {
  position:absolute;
  top:50%;
  font-size: 50px;
}



	.studio1{
	width: 1194px;
	margin:auto;
	
	}

</style>

</head>
<body>
   <div class="header">
<h2 style="margin: 0; padding: 15px; text-align: center;" class="logo">Green<br>Wedding</h2>
   
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
   
   

<img src="./img/side_main.jpg" width="100%" >
<nav class="nav nav-pills nav-justified">
  <a class="nav-item nav-link " href="/Studio" style="color: rgb(0, 0, 0)">스튜디오</a>
  <a class="nav-item nav-link " href="/Dress" style="color: rgb(0, 0, 0)">드레스</a>
  <a class="nav-item nav-link active"  href="/Makeup"  style="background-color: rgb(200, 200, 200)" >메이크업</a>
  <a class="nav-item nav-link" href="/Hanbog" style="color: rgb(0, 0, 0)" >한복</a>
  <a class="nav-item nav-link " href="/Invitation" style="color: rgb(0, 0, 0)">청첩장</a>
</nav>	


 <div class= "studio1"><h2>
<span id = "studioconcept" style="letter-spacing: -1px; "> Make Up

</span>
 </h2>
<hr>
 </div>
 
 <div class="slideshow-container">

      <!-- Full-width images with number and caption text -->
      <div class="mySlides">
        <div class="numbertext">1 / 9</div>
        <img src="./img/메이크업A/1.JPG" style="width:500px;">
        <div class="text">GREEM WEDDING</div>
      </div>

      <div class="mySlides">
        <div class="numbertext">2 / 9</div>
        <img src="./img/메이크업A/2.JPG" style="width:500px;">
        <div class="text">GREEM WEDDING</div>
      </div>

      <div class="mySlides">
        <div class="numbertext">3 / 9 </div>
        <img src="./img/메이크업A/3.JPG" style="width:500px;">
        <div class="text">GREEM WEDDING</div>
      </div>
      <div class="mySlides">
        <div class="numbertext">4 / 9</div>
        <img src="./img/메이크업A/4.JPG" style="width:500px;">
        <div class="text">GREEM WEDDING</div>
      </div>
      <div class="mySlides">
        <div class="numbertext">5 / 9</div>
        <img src="./img/메이크업A/5.JPG" style="width:500px;">
        <div class="text">GREEM WEDDING</div>
      </div>
      <div class="mySlides">
        <div class="numbertext">6 / 9</div>
        <img src="./img/메이크업A/6.JPG" style="width:500px;">
        <div class="text">GREEM WEDDING</div>
      </div>
      <div class="mySlides">
        <div class="numbertext">7 / 9</div>
        <img src="./img/메이크업A/7.JPG" style="width:500px;">
        <div class="text">GREEM WEDDING</div>
      </div>
      <div class="mySlides">
        <div class="numbertext">8 / 9</div>
        <img src="./img/메이크업A/8.JPG" style="width:500px;">
        <div class="text">GREEM WEDDING</div>
      </div>
      <div class="mySlides">
        <div class="numbertext">9 /9 </div>
        <img src="./img/메이크업A/9.JPG	" style="width:500px;">
        <div class="text">GREEM WEDDING</div>
      </div>


    
      <!-- Next and previous buttons -->
     
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
    
    




<footer id="doz_footer_wrap"><div id="doz_footer">    
   <div class="footer-section ">   
      <div class="inside">
         
            <div class="col-dz-9 col-xdz-12 col-dz">
                                                                              <div class="foot-custom">
               <div class="custom-text _footer_text">
                  <div class="custom-text-info _text_editor fr-view">
                        <p>
                        <span style="font-size: 28px;">
                        GREEN WEDDING</span>
                        </p>                        
                        <p>
                        <span style="font-size: 16px;">
                        <br>
                        </span>
                        </p>
                        <p>
                        <span style="font-size: 16px;">
                        주소:부산그린컴터아카데미
                        <br>
                        T. 052-912-1000<br>E. 
                        <a href="mailto:gydnjs6203@naver.com">gydnjs6203@naver.com</a>
                        </span>
                        </p>
                        <p>
                        <br>
                        </p>
                        <p>
                        <span style="font-size: 16px;">
                        그린 웨딩홀</span>
                        </p>
                        <p>
                        <span style="font-size: 16px;">
                        2023 ⓒ Copyright GreenWEDDING. Design by GreenCREATIVE.&nbsp;</span>
                        </p><p><br></p>                     
                        </div>
                  </div>
                  <div class="copryright-area _copy_menu" style="display:none;">
                  
                     Copyright ⓒ 2023 CA웨딩컨벤션 천안웨딩홀 아산웨딩홀 All rights reserved.
                  </div>
               
            </div>
            <div class="col-dz-3 col-xdz-12 col-dz">
                                 <div class="foot-sociallink _sns_link">
                     <div class="btn-group _sns_link_list" role="group">
                        <a type="button" class="btn pull-right _x724PEePET " href="https://www.instagram.com/caweddingconvention/" style="" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i><span class="sr-only">SNS 바로가기</span></a><a type="button" class="btn pull-right _o506Lcn686 " href="https://blog.naver.com/hd200990" style="" target="_blank"><i class="ii ii-nblog" aria-hidden="true"></i><span class="sr-only">SNS 바로가기</span></a><a type="button" class="btn pull-right _B5Ccm5Fi58 " href="https://pf.kakao.com/_uTGPxb" style="" target="_blank"><i class="ii ii-kakaotalk" aria-hidden="true"></i><span class="sr-only">SNS 바로가기</span></a>                     </div>
                  </div>
                           </div>
            <div class="col-dz-9 col-xdz-12 col-dz">
               <div class="foot-app-menu _app_menu" style="display:none;">
                                                   </div>
            </div>
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
</script>
</body>
</html> 