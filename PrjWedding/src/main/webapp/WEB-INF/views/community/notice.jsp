<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>

<!-- jquery 사용 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<link rel="stylesheet"	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">


<!-- ajax 스타일 시트 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/fslightbox/3.4.1/index.min.js"></script>


<!-- css 부분 사용 -->
<link rel="shortcut icon" href="./img/favicon.ico">
<link rel="stylesheet" href="./css/styles.css">
<link rel="stylesheet" href="./css/loginstyle.css">
<link rel="stylesheet" href="./css/common.css">


<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<link rel="shortcut icon" href="/img/favicon.ico">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


<!-- 글 폰트 -->
<!-- 구글 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=EB+Garamond:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@700&family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Lora:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Castoro+Titling&display=swap" rel="stylesheet">

<style>

 .community-container {
  max-width: 1200px;
  position: relative;
  margin: auto; 
}
</style>
</head>
<body>

   <div class="header">
<h2 style="margin: 0; padding: 15px; text-align: center;" class="logo">Green<br>Wedding</h2>
	
  <span style="margin-right: auto;">
    <a href="#" style="margin: 0 5px;">VENUE</a>
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
		
<img src="./img/side_main.jpg" width="100%" height="100%" >
<nav class="nav nav-pills nav-justified" >
  <a class="nav-item nav-link" href="/Community01" style="color: rgb(0, 0, 0)">공지사항</a>
  <a class="nav-item nav-link" href="/Community02" style="color: rgb(0, 0, 0)">이벤트</a>
  <a class="nav-item nav-link" href="/Community03" style="color: rgb(0, 0, 0)">자료실</a>
  <a class="nav-item nav-link" href="/Community04" style="color: rgb(0, 0, 0)">FAQ</a>
  <a class="nav-item nav-link" href="/Community05" style="color: rgb(0, 0, 0)">후기글</a>
</nav>		

<br><br><br><br><br><br><br><br>
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
     <!-- =============================여기서부터 내용==================================== -->
      	<div id="text-table">
	  	<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">공지사항</span></h1>
	  	</div>
	  	<br><br>
	   <div class="community-container">
	   <hr>
      
     <div id="not">
       <hr>
       <div id="not-pan">
      <a href="Community01WriteForm" ><div style="text-align:right;">공지사항 글쓰기</div></a>
         <ul>
            <li class="notice-date" style="display: ">날짜</li>
            <li class="notice-tit">제목</li>
            <li class="notice-name" style="display:none">글쓴이</li>
            <li class="notice-cont" style="display:">조회수</li>
         </ul>
         <hr>

      <c:forEach var="CommunityVo" items="${notList}">
       <ul>             
            <li class="notice-date" style="display: ">${fn:substring( CommunityVo.regdate, 0, 10) }</li>
            <li class="notice-tit"><a href="Community01View?idx=${CommunityVo.idx}">${ CommunityVo.title }</a></li>
            <li class="notice-name" style="display:none">${ CommunityVo.writer }</li>
            <li class="notice-cont" style="display:">${ CommunityVo.readcount }</li>         
     </ul>
         <hr>
       </c:forEach>  
       </div>
     </div>
     </div>
	   </div>
     <div class="foot-container"  style="margin: 300px;">
   

     
</body>
</html>