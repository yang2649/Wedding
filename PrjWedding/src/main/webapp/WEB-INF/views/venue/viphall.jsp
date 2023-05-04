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
<link rel="stylesheet" href="/css/header.css">
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

</style>

</head>
<body>
	<div class="header">
<h2 style="margin: 0; padding: 15px; text-align: center;" class="logo">Green<br>Wedding</h2>
	
  <span style="margin-right: auto;">
    <a href="/Venue01" style="margin: 0 5px;">VENUE</a>
    <a href="#" style="margin: 0 5px;">CATERRING</a>
    <a href="#" style="margin: 0 5px;">COOPERATIVE</a>
    <a href="#" style="margin: 0 5px;">RESERVATION</a>
    <a href="#" style="margin: 0 5px;">COMMUNITY</a>
    <a href="#" style="margin: 0 5px;">LOCATION</a>
  </span>
</div>
	<div class="menu-toggle">MENU</div>
<div class="sliding-menu">
  <ul>
    <li>
      <ul>
      	</br>
      	</br>
      	</br>
      	</br>
      	</br>
      	<li><a href="/User/Login">로그인</a><li></br></br>
      </ul>
    </li>
  </ul>
</div>
<div class="sliding-menu-overlay"></div>
		<!-- 메인 메뉴 -->
	
	
<img src="./img/side_main.jpg" width="100%" height="100%">
<nav class="nav nav-pills nav-justified">
  <a class="nav-item nav-link " href="/Venue01" style="color: rgb(0, 0, 0)">greenhall</a>
  <a class="nav-item nav-link"  href="/Venue02" style="color: rgb(0, 0, 0)">redhall</a>
  <a class="nav-item nav-link" style="color: rgb(0, 0, 0)" href="/Venue03">bluehall</a>
  <a class="nav-item nav-link" href="/Venue04" style="color: rgb(0, 0, 0)">blackhall</a>
  <a class="nav-item nav-link active" href="/Venue05" style="background-color: rgb(200, 200, 200)" >VIPhall</a>
  <a class="nav-item nav-link" href="/Venue06" style="color: rgb(0, 0, 0)">pyeback</a>
</nav>	

<br><br><br><br>
	<div id="text-table">
		<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">VIP Hall</span></h1>
		<p><br></p>
		<p>싱그러운 자연 속, 눈부신 햇살 보다 빛나는</p>
		<p> 단 하나뿐인 나만의 웨딩!</p>
		<p> 나무처럼 듬직한 신랑님과 꽃보다 더 화사한 신부님을</p>
		<p>새롭게 리뉴얼 한 루체홀에서 찾아 뵙도록 하겠습니다.</p>
		<p> 영화 속, 숲 속 야외 웨딩에 대한 로망을</p>
		<p>이제 CA웨딩컨벤션 루체홀과 함께 하세요.</p>
		<p><br></p>
		<p>“꽃보다 아름다운 당신”</p>
	</div>
<script>
  const menuButton = document.querySelector('.menu-toggle');
  const slidingMenu = document.querySelector('.sliding-menu');
  const slidingMenuOverlay = document.querySelector('.sliding-menu-overlay');

  menuButton.addEventListener('click', function () {
    slidingMenu.classList.toggle('open');
    slidingMenuOverlay.classList.toggle('open');
  });

  slidingMenuOverlay.addEventListener('click', function () {
    slidingMenu.classList.remove('open');
    slidingMenuOverlay.classList.remove('open');
  });

  $(document).ready(function () {
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
</body>
</html> 