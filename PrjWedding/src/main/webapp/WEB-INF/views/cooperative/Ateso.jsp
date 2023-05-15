<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>cooperative</title>
<!-- 잡다한 헤드 부분 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/head_resources.jsp" />
<!-- css 부분 사용 -->
<link rel="shortcut icon" href="/img/favicon.ico">
<link rel="stylesheet" href="/css/slide.css">
<link rel="stylesheet" href="/css/btn.css">
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">


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
<!-- 헤더 부분 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/header.jsp" />

<!--유정 로그인 분리-->
<jsp:include page="/WEB-INF/views/part_menu/login.jsp" />


<!-- 슬라이드 메뉴 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/slidemenu.jsp" />
<!--카카오문의-->
<jsp:include page="/WEB-INF/views/part_menu/kakao.jsp" />
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
			<span style="color: rgb(191, 131, 101);" ">Atelier + Sole</span></h1>
		<p>합성어로 "Ateso"</p>
		<p><br></p>
		<p>단 하나뿐인 사진을 위한 사진작가의 작업실</p>
		<p>"그녀가 사랑하는 순간"</p>
		<p><br></p>
	</div>
	
	<!-- 슬라이드 -->
	 <div class="slideshow-container">
<div class="ddd">
<h2>
      <!-- Full-width images with number and caption text -->
      <div class="mySlides">
        <div class="numbertext">1 / 6</div>
        <img src="./img/studio/a01.jpg" style="width:600px;" >
        <div class="text">GREEM WEDDING</div>
      </div>

      <div class="mySlides">
        <div class="numbertext">2 / 6</div>
        <img src="./img/studio/a04.jpg" style="width:600px">
        <div class="text">GREEM WEDDING</div>
      </div>

      <div class="mySlides">
        <div class="numbertext">3 / 6</div>
        <img src=./img/studio/a08.jpg style="width:600px">
        <div class="text">GREEM WEDDING</div>
      </div>

      <div class="mySlides">
        <div class="numbertext">4 / 6</div>
        <img src="./img/studio/a06.jpg" style="width:600px">
        <div class="text">GREEM WEDDING</div>
      </div>

      <div class="mySlides">
        <div class="numbertext">5 / 6</div>
        <img src="./img/studio/a07.jpg" style="width:600px">
        <div class="text">GREEM WEDDING</div>
      </div>

      <div class="mySlides">
        <div class="numbertext">6 / 6</div>
        <img src="./img/studio/a11.jpg" style="width:600px">
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
           src="./img/studio/a03.jpg"
           alt="swamp"
           />
      <img
           src="./img/studio/a12.jpg"
           alt="swamp"
           />
      <img
           src="./img/studio/a15.jpg""
           alt="swamp"
           />
    </div>
  </div>
  
 <!-- 푸터 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/footer.jsp" />
 

    
<script>

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

