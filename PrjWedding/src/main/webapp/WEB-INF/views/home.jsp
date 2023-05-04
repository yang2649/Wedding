<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="theme-color" content="#363636">
<meta name="msapplication-navbutton-color" content="#363636">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<title>Home</title>
<script	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<link rel="shortcut icon" href="/img/favicon.ico">

<!-- css 부분 사용 -->
<link rel="stylesheet" href="/css/styles.css">
<!-- jquery 사용 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- 구글 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=EB+Garamond:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@700&family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">

<!-- ajax 스타일 시트 -->
<!-- owl css 사용 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>

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
<!-- 안씀 -->
<!-- <div id="vertical-slider">
	<div>
		<img src="./img/part1.jpg" alt="Image 1">
	</div>
	<div>
	  	<img src="./img/part2.jpg" alt="Image 2">
	</div>
	<div>
		<img src="./img/part3.jpg" alt="Image 3">
	</div>
</div> -->


<!-- 이미지 사이즈 -->
<!-- 이미지 전부 사이즈 조정해야함 (안그러면 화면이 달라짐) -->
<!-- https://express.adobe.com/ko-KR/tools/image-resize# -->
<!-- 표준 - 프레젠테이션 슬라이드 4:3 이미지 3개 고정 -->
<div class="owl-carousel owl-theme">

  <div class="item"><img src="./img/part_ex.jpg"  alt="Image 1">
  <div class="caption">부산 웨딩의 대표 공간</div>
  <div class="subcaption">최고가 아니면 명품 웨딩홀을 볼 수 없습니다. 사랑한다면, 신부의 품격을 높여주세요</div>
  </div>
  
  <div class="item"><img src="./img/part_ex2.jpg" alt="Image 2">
  <div class="caption">차별화된 웨딩스타일</div>
  <div class="subcaption">테스트 서브캡션1</div>
  </div>
  
  <div class="item"><img src="./img/part_ex3.jpg" alt="Image 3">
  <div class="caption">BRILLRANT WEDDING</div>
  <div class="subcaption">테스트 서브캡션2</div>
  </div>
  
</div>


<!-- 웨딩홀 -->
<div class="wedding-hole">
	<h3>WEDDING HALL</h3>
	 <div style="height: 50px; background-color: #f7f5ef; margin-bottom: 100px;"></div>
</div>

<!-- 갤러리  -->
<div class="gallery">
  <div class="_item item_gallary" style="position: relative; padding: 2.5px;">
    <div id="caption_1" style="display:none">
      <h4></h4>
      <p></p>
    </div>
 
    
    
    <div class="item_container _item_container">
      <div class="img_wrap _img_wrap no_content" id="gal_item_" style="background-image: url('./img/hole/hole1.jpg'); min-height: 172px;" data-bg="url('./img/hole/hole1.jpg')" data-src="./img/hole/hole1.jpg" data-sub-html="#caption_1" data-no="0"></div>
      <div class="text_wrap _text_wrap cursor_pointer" id="gal_item_1" data-src="./img/hole/hole1.jpg" data-sub-html="#caption_1" style="display: none; height: 172px;">
        <p class="title"></p>
      </div>
      <div class="slide_overlay"></div>
    </div>
  </div>


  <div class="_item item_gallary" style="position: relative; padding: 2.5px;">
    <div id="caption_2" style="display:none">
      <h4></h4>
      <p></p>
    </div>
    <div class="item_container _item_container">
      <div class="img_wrap _img_wrap no_content" id="gal_item_" style="background-image: url('./img/hole/hole2.jpg'); min-height: 172px;" data-bg="url('./img/hole/hole2.jpg')" data-src="./img/hole/hole2.jpg" data-sub-html="#caption_2" data-no="1"></div>
      <div class="text_wrap _text_wrap cursor_pointer" id="gal_item_2" data-src="./img/hole/hole2.jpg" data-sub-html="#caption_2" style="display: none; height: 172px;">
        <p class="title"></p>
      </div>
      <div class="slide_overlay"></div>
    </div>
  </div>



  <div class="_item item_gallary" style="position: relative; padding: 2.5px;">
    <div id="caption_3" style="display:none">
      <h4></h4>
      <p></p>
    </div>
    <div class="item_container _item_container">
      <div class="img_wrap _img_wrap no_content" id="gal_item_" style="background-image: url('./img/hole/hole3.jpg'); min-height: 172px;" data-bg="url('./img/hole/hole3.jpg')" data-src="./img/hole/hole3.jpg" data-sub-html="#caption_3" data-no="2"></div>
      <div class="text_wrap _text_wrap cursor_pointer" id="gal_item_3" data-src="./img/hole/hole3.jpg" data-sub-html="#caption_3" style="display: none; height: 172px;">
        <p class="title"></p>
      </div>
      <div class="slide_overlay"></div>
    </div>
  </div>


<div class="_item item_gallary" style="position: relative; padding: 2.5px;">
  <div id="caption_4" style="display:none">
    <h4></h4>
    <p></p>
  </div>
  <div class="item_container _item_container">
    <div class="img_wrap _img_wrap no_content" id="gal_item_" style="background-image: url('./img/hole/hole4.jpg'); min-height: 172px;" data-bg="url('./img/hole/hole4.jpg')" data-src="./img/hole/hole4.jpg" data-sub-html="#caption_4" data-no="3"></div>
    <div class="text_wrap _text_wrap cursor_pointer" id="gal_item_4" data-src="./img/hole/hole4.jpg" data-sub-html="#caption_4" style="display: none; height: 172px;">
      <p class="title"></p>
    </div>
    <div class="slide_overlay"></div>
  	</div>
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
  
  // 첫 화면 이미지 밑 점 3개
  $(document).ready(function(){
	  $('.owl-carousel').owlCarousel({
	    loop: true,
	    margin: 10,
	    nav: false,
	    dots: true,
	    items: 1,
	    responsive: {
	      0: {
	        items: 1
	      },
	      600: {
	        items: 1
	      },
	      1000: {
	        items: 1
	      }
	    }
	  });
	});
</script>
</body>
</html> 