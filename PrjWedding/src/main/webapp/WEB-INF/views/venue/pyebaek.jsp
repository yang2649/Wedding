<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>pyebaek</title>
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
  margin: 20px;
  width: 600px;
  height: 300px;
} 

#text-table h1 {
  font-family: 'Noto Sans KR', sans-serif;
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
	
	
<img src="./img/side_main.jpg" width="100%" height="100%">
<nav class="nav nav-pills nav-justified">
  <a class="nav-item nav-link " href="/Venue01" style="color: rgb(0, 0, 0)">greenhall</a>
  <a class="nav-item nav-link"  href="/Venue02" style="color: rgb(0, 0, 0)">redhall</a>
  <a class="nav-item nav-link" style="color: rgb(0, 0, 0)" href="/Venue03">bluehall</a>
  <a class="nav-item nav-link" href="/Venue04" style="color: rgb(0, 0, 0)">blackhall</a>
  <a class="nav-item nav-link" href="/Venue05" style="color: rgb(0, 0, 0)" >VIPhall</a>
  <a class="nav-item nav-link active" href="/Venue06" style="background-color: rgb(200, 200, 200)" >pyeback</a>
</nav>	

<br><br><br><br>
	<div id="text-table">
		<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">PYEBACK ROOM</span></h1>
		<p><br></p>
		<p>아름다운 웨딩이 끝난 뒤</p>
		<p>듬직한 신랑님과 아름다운 신부님의</p>
		<p>부모님에게 인사하는 자리</p>
		<p>전통적인 한옥디자인의</p>
		<p>폐백실에서 함께 하세요</p>
 	</div>
	
	<!-- 슬라이드 -->
	 <div class="slideshow-container">

      <!-- Full-width images with number and caption text -->
      <div class="mySlides">
        <div class="numbertext">1 / 2</div>
        <img src="./img/pyeback/s1.PNG" style="width:100%">
        <div class="text">GREEM WEDDING</div>
      </div>

      <div class="mySlides">
        <div class="numbertext">2 / 2</div>
        <img src="./img/pyeback/s2.PNG" style="width:100%">
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
    
	<div id="root">
    <div style="display: flex; flex-wrap: wrap; justify-content: center; padding: 1vw;">

      <img
           src="./img/pyeback/p1.PNG"
           alt="swamp"
           />
      <img
           src="./img/pyeback/p2.PNG"
           alt="swamp"
           />
      <img
           src="./img/pyeback/p3.PNG"
           alt="swamp"
           /><br>
      <img
           src="./img/pyeback/p4.PNG"
           alt="swamp"
           />
    </div>
  </div>
	
  
 <!-- 푸터 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/footer.jsp" />

    
<script>

//이승현 작성 js 코드를 지우시면 해결됩니다

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
    
</script>
</body>
</html> 