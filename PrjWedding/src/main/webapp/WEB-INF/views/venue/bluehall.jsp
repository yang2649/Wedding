<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>bluehall</title>

<jsp:include page="/WEB-INF/views/part_menu/head_resources.jsp" />

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

</style>

</head>
<body>

<!-- 헤더 부분 분리 --> <!-- 문제없음 -->
<jsp:include page="/WEB-INF/views/part_menu/header.jsp" />



<!--유정 로그인 분리--> <!-- 문제있음 (여기만 안뜸) -->
<jsp:include page="/WEB-INF/views/part_menu/login.jsp" />


<!-- 슬라이드 메뉴 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/slidemenu.jsp" />


		<!-- 메인 메뉴 -->
		
<img src="./img/side_main.jpg" width="100%" height="100%" >
<nav class="nav nav-pills nav-justified" >
  <a class="nav-item nav-link" href="/Venue01"  style="color: rgb(0, 0, 0)" >greenhall</a>
  <a class="nav-item nav-link" href="/Venue02" style="color: rgb(0, 0, 0)">redhall</a>
  <a class="nav-item nav-link active" href="/Venue03" style="background-color: rgb(200, 200, 200)" >bluehall</a>
  <a class="nav-item nav-link" href="/Venue04" style="color: rgb(0, 0, 0)">blackhall</a>
  <a class="nav-item nav-link" href="/Venue05" style="color: rgb(0, 0, 0)">VIPhall</a>
  <a class="nav-item nav-link" href="/Venue06" style="color: rgb(0, 0, 0)">pyeback</a>
</nav>	

<br><br><br><br>
	<div id="text-table">
		<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">BLUE Hall</span></h1>
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
	
	<!-- 슬라이드 -->
	 <div class="slideshow-container">

      <!-- Full-width images with number and caption text -->
      <div class="mySlides">
        <div class="numbertext">1 / 3</div>
        <img src="./img/hall/chall01.jpg" style="width:100%">
        <div class="text">GREEM WEDDING</div>
      </div>

      <div class="mySlides">
        <div class="numbertext">2 / 3</div>
        <img src="./img/hall/chall02.jpg" style="width:100%">
        <div class="text">GREEM WEDDING</div>
      </div>

      <div class="mySlides">
        <div class="numbertext">3 / 3</div>
        <img src="./img/hall/chall03.jpg" style="width:100%">
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

    <!-- 브리드룸 -->
    <div id="text-table">
		<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">BRIDE ROOM</span></h1>
	</div>
	<div id="root">
    <div style="display: flex; flex-wrap: wrap; justify-content: center; padding: 1vw;">

      <img
           src="./img/bride/cbride01.jpg"
           alt="swamp"
           />
      <img
           src="./img/bride/cbride02.jpg"
           alt="swamp"
           />
      <img
           src="./img/bride/cbride03.jpg"
           alt="swamp"
           />
    </div>
  </div>
  <br><br><br><br>
  <!-- 포토존 -->
  <!-- 포토존 -->
    <div id="text-table">
		<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">PHOTO ZONE</span></h1>
		<p><br></p>
		<p style="font-family: 'Times New Roman'; font : bolder ; color: rgb(191, 131, 101);">최고의 순간을 담아내기에 가장 이상적인 공간</p>
	</div>
	<div id="root2">
    <div style="display: flex; flex-wrap: wrap; justify-content: center; padding: 1vw;">

      <img
           src="./img/bride/aphoto01.jpg"
           alt="swamp"
           />
      <img
           src="./img/bride/aphoto02.jpg"
           alt="swamp"
           />
      <img
           src="./img/bride/aphoto03.jpg"
           alt="swamp"
           />
    </div>
  </div>
  
  <!-- 푸터 분리 --> <!-- 문제없음 -->
<jsp:include page="/WEB-INF/views/part_menu/footer.jsp" />

    
<script>
// 문제가 있다면 슬라이딩 부분을 지워주세요 - 이승현 작성 부분만

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
    document.querySelectorAll('#root2 img').forEach(el => {
      wrap(el);
    });

    
refreshFsLightbox();
    
</script>
</body>
</html> 