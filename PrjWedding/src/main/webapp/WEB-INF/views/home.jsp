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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
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

ul.sliding-menu li>a {
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

ul.sliding-menu li:hover>ul {
	display: block;
}

/* 상단 헤더 추가 */
.header {
  display: flex;
  justify-content: space-between; /* 첫번째 자식 엘리먼트 왼쪽, 두번째 자식 엘리먼트 오른쪽으로 정렬 */
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
  padding: 0 15px; /* 왼쪽 15px 패딩 추가 */
  text-align: left; /* 왼쪽 정렬 */
}

.header a {
  text-decoration: none;
  color: #333;
  font-size: 16px;
  margin: 0 3px; /* 여백 3px로 조절 */
  transition: background-color 0.3s ease;
  padding: 10px 5px;
}

.header a:hover {
	background-color: #333;
	color: #fff;
}

h2 {
	font-family: 'Great Vibes', cursive;
	font -size: 36px;
	color: #333;
	margin: 0;
	padding-left: 15px;
}

.menu-toggle {
	display: flex;
	padding: 15px;
	position: fixed;
	top: 15px; /* 헤더와 동일한 수직 위치로 변경 */
	right: 45px;
	width: 32px;
	height: 32px;
	cursor: pointer;
	z-index: 1001;
	font-family: 'Montserrat';
	font-size: 20px;
}

.menu-toggle a {
  text-decoration: none;
  color: #333;
  font-size: 16px;
  margin: 0 15px 0 0; /* 오른쪽에 여백 추가 */
  transition: background-color 0.3s ease;
  padding: 10px 5px;
}

@media screen and (max-width: 768px) {
  .menu-toggle a {
    display: block;
    margin: 5px 0;
  }
}

/* 추가된 스타일 */
#menu-icon span {
	font-weight: bold;
}
/* 추가된 스타일 */
#main {
	padding-top: 60px;
	position: relative;
}

/* 수정된 스타일 */
.sliding-menu {
	position: fixed;
	top: 50px;
	right: -400px;
	width: 350px;
	height: 100%;
	background-color: rgba(255, 255, 255, 0.5); /* 흰색에 alpha 값 0.5를 적용하여 반 투명하게 만듦 */
	transition: right 1.0s ease;
	z-index: 999;
	font-weight: bold;
	overflow-y: auto;
	padding-bottom: 50px;
}

/* 수정된 스타일 */
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

.sliding-menu.open+.sliding-menu-overlay {
	display: block;
}

.sliding-menu ul li hr {
  margin: 10px 0;
  border: none;
  font-weight: bold;
  border-bottom: 1px solid #ccc;
}

#main-slider {
  position: relative;
  overflow: hidden;
  width: 100%;
  height: auto;
  margin: 0; /* 변경된 부분 */
  padding: 0; /* 변경된 부분 */
}

#main-slider img {
  width: 100%;
  height: 100%;
  object-fit: cover;
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
</style>

</head>
<body>
	<div class="header">
		<h2 style="margin: 0; padding: 15px; text-align: left;">Green Wedding</h2>
		<a href="#" style="margin: 0 5px;">VENUE</a> 
		<a href="#" style="margin: 0 5px;">CATERRING</a> 
		<a href="#" style="margin: 0 5px;">COOPERATIVE</a>
		<a href="#" style="margin: 0 5px;">RESERVATION</a> 
		<a href="#" style="margin: 0 5px;">COMMUNITY</a> 
		<a href="#" style="margin: 0 5px;">LOCATION</a>
	</div>
	<div class="menu-toggle">
  <span>Menu</span>
</div>
  <div class="sliding-menu">
    <ul>
    <li><a href="#">메뉴</a>
        <ul>
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
 
		<!-- 메인 메뉴 -->
	
	<div id="main-slider">
		<div><img src="./img/part1.jpg" alt="Image 1"></div>
	</div>
	<div id="main-slider">
		<div><img src="./img/part2.jpg" alt="Image 2"></div>
	</div>
	<div id="main-slider">
		<div><img src="./img/part3.jpg" alt="Image 3"></div>
	</div>
	
	<script>
	const menuButton = document.querySelector('.menu-toggle');
	const slidingMenu = document.querySelector('.sliding-menu');
	const slidingMenuOverlay = document.querySelector('.sliding-menu-overlay');

  menuButton.addEventListener('click', function() {
    slidingMenu.classList.toggle('open');
    slidingMenuOverlay.classList.toggle('open');
  });

  $(window).scroll(function() {
    if ($(this).scrollTop() > 0) {
      $('header').addClass('sticky');
    } else {
      $('header').removeClass('sticky');
    }
  });
  $(document).ready(function(){
    $('#main-slider').bxSlider({
      auto: true,
      autoControls: true,
      stopAutoOnClick: true,
      pager: true,   
      speed: 500,
      pause: 4000,
      slideMargin: 0
    });
  });
</script>
</body>
</html> 