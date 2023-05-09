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
<title>myesti</title>

<!-- jquery 사용 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>


<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">


<!-- css 부분 사용 -->
<link rel="shortcut icon" href="./img/favicon.ico">
<link rel="stylesheet" href="./css/styles.css">
<link rel="stylesheet" href="./css/loginstyle.css">
<link rel="stylesheet" href="./css/mypage.css">

<!-- 구글 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=EB+Garamond:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@700&family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Lora:wght@500&display=swap" rel="stylesheet">


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

<!--유정 로그인-->
<div class="container">
  <div id="modal-open">LOGIN</div>  
        <div class="popup-wrap" id="popup" style="display: none;">
        <div class="popup">
        <div class="popup-body">
        <div class="body-content">
          <div class="body-titlebox">
            <h1>로그인</h1>
          </div>
          <div class="body-contentbox">
           <form action="/loginprocess" method="POST">
          <div>아이디<input type="text"  placeholder="ID" name="userid" /></div>
          <div>암호<input type="password"  placeholder="PASSWORD" name="passwd"  /></div>
      <div>
      <input type="submit"   value="로그인" />
     </div>
     </form>
          </div>
        </div>
      </div>
      <div class="popup-foot">
        <a class="pop-btn join"   id="join"  onclick="showJoin();">회원가입</a>
        <span class="pop-btn close"  id="close">창 닫기</span>
   </div>
   </div>
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

<!-- 내 견적서 시작 -->
		
<img src="./img/side_main.jpg" width="100%" height="100%" >
<nav class="nav nav-pills nav-justified" >
  <a class="nav-item nav-link" href="/Mypage01" style="color: rgb(0, 0, 0)">내 정보 보기</a>
  <a class="nav-item nav-link" href="/Mypage02" style="color: rgb(0, 0, 0)">찜리스트</a>
  <a class="nav-item nav-link active" href="/Mypage03" style="background-color: rgb(200, 200, 200)">내 견적서</a>
</nav>		

<br><br><br><br><br><br><br><br>
<script>
  const menuButton = card.querySelector('.menu-toggle');
  const slidingMenu = card.querySelector('.sliding-menu');
  const slidingMenuOverlay = card.querySelector('.sliding-menu-overlay');

  menuButton.addEventListener('click', function () {
    slidingMenu.classList.toggle('open');
    slidingMenuOverlay.classList.toggle('open');
  });

  slidingMenuOverlay.addEventListener('click', function () {
    slidingMenu.classList.remove('open');
    slidingMenuOverlay.classList.remove('open');
  });

  $(card).ready(function () {
    $('#main-slider').bxSlider({
      auto: true,
      autoControls: true,
      stopAutoOnClick: true,
      pager: true,
      speed: 500,
      pause: 4000,
      slideMargin: 0
    });

    let lastScrollTop = 0;

    $(window).scroll(function () {
        const currentScrollTop = $(this).scrollTop();
        const header = $('.header');

        if (currentScrollTop > lastScrollTop) {
          header.addClass('hide-header');
        } else {
          header.removeClass('hide-header');
        }

        if (currentScrollTop > 0) {
          header.addClass('sticky');
          menuButton.classList.add('gold'); // 메뉴 버튼 색상 변경 코드 추가
        } else {
          header.removeClass('sticky');
          menuButton.classList.remove('gold'); // 메뉴 버튼 색상 변경 코드 추가
        }
        lastScrollTop = currentScrollTop;
      });
    });
</script>
    
<!-- 내 견적서 --> 
<div class="container" style="margin: auto; padding:15px 15px 15px 120px;">
  <div class="row">
    <div class="col">
      <div class="card">
        <div class="cardBody">
          <p>견적서 이름  : ${ vo.estiname }</p>
          <p>아이디       : <a href="/Mypage03?memid=1111">1111</a></p>
          <img class="card-img" src="./img/mypage/esti.jpg" alt="esti image">
        </div>
      </div>
    </div>
    <div class="col">
      <div class="card">
        <div class="cardBody">
          <p>견적서 이름  : 견적서1</p>
          <p>저장일자      : 2023.05.05</p>
          <img class="card-img" src="./img/mypage/esti.jpg" alt="esti image">
        </div>
      </div>
    </div>
    <div class="col">
      <div class="card">
        <div class="cardBody">
          <p>견적서 이름  : 견적서1</p>
          <p>저장일자      : 2023.05.05</p>
          <img class="card-img" src="./img/mypage/esti.jpg" alt="esti image">
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col">
      <div class="card">
        <div class="cardBody">
          <p>견적서 이름  : 견적서1</p>
          <p>저장일자      : 2023.05.05</p>
          <img class="card-img" src="./img/mypage/esti.jpg" alt="esti image">
        </div>
      </div>
    </div>
    <div class="col">
      <div class="card">
        <div class="cardBody">
          <p>견적서 이름  : 견적서1</p>
          <p>저장일자      : 2023.05.05</p>
          <img class="card-img" src="./img/mypage/esti.jpg" alt="esti image">
        </div>
      </div>
    </div>
    <div class="col">
      <div class="card">
        <div class="cardBody">
          <p>견적서 이름  : 견적서1</p>
          <p>저장일자      : 2023.05.05</p>
          <img class="card-img" src="./img/mypage/esti.jpg" alt="esti image">
        </div>
      </div>
    </div>
  </div>
</div>

<script>
// 새로운 견적서 생성
//var $card = $('<div>').addClass('card').appendTo('.container');
//var $cardBody = $('<p>').addClass('card-text').text('견적서 이름  : 견적서1').appendTo($cardBody);
//var $cardBody = $('<p>').addClass('card-text').text('저장일자      : 2023.05.05').appendTo($cardBody);
//var $cardBody = $('<img>').addClass('card-img').attr('src', './img/mypage/esti.jpg').appendTo($cardBody);
//$card.attr('memid', ${ vo.memid });

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
  
 
  // 유정 로그인  
  $(function(){
	  $("#confirm").click(function(){
         modalClose(); //모달 닫기 함수 호출	      
	      
	  });
	  $("#modal-open").click(function(){        
	      $("#popup").css('display','flex').hide().fadeIn();
	      //팝업을 flex속성으로 바꿔준 후 hide()로 숨기고 다시 fadeIn()으로 효과
	  });
	  $("#close").click(function(){
	      modalClose(); //모달 닫기 함수 호출
	  });
	  $("#join").click(function(){
	      modalClose(); //회원가입 눌렀을 때도 모달 닫기 함수 호출
	  });
	  function modalClose(){
	      $("#popup").fadeOut(); //페이드아웃 효과
	  }
	});

  
   //유정 회원가입
    function showJoin(){
        window.open("User/WriteForm","팝업 테스트","width=450, height=400, top=350, left=650");
      }     
   
   

</script>

</body>
</html>



