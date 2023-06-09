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
<link rel="stylesheet" href="/css/btn.css">


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
  <a class="nav-item nav-link" href="/Cooperative03" style="color: rgb(0, 0, 0)">Hair & Make Up</a>
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
			<span style="color: rgb(191, 131, 101);" ">Fill + MOMENT (순간을 채우다)</span></h1>
		<p><br></p>
		<p>"당신을 위해 자리한 모두가 즐거울 수 있도록, 모든 순간을 채워드립니다."</p>
		<p>- 필모먼트 (순.간.을 채.우.다) -</p>
		<p><br></p>
		<p>그 날의 주인공이 행복하기 위해서는 모두가 행복한 분위기로 만드는 것이 중요하다 생각하여</p>
		<p>기술적인 상담을 포함하여,</p>
		<p>고객들이 만들고 싶어하는 그 날의 분위기를 함께 고민하겠습니다.</p>
		<p><br></p>
	</div>
	
	<!-- 슬라이드 -->
	 <div class="slideshow-container">
<div class="ddd">
<h2>
      <!-- Full-width images with number and caption text -->
      <div class="mySlides">
        <div class="numbertext">1 / 6</div>
        <img src="./img/studio/c04.jpg" style="width:500px;" >
        <div class="text">GREEM WEDDING</div>
      </div>

      <div class="mySlides">
        <div class="numbertext">2 / 6</div>
        <img src="./img/studio/c05.jpg" style="width:500px">
        <div class="text">GREEM WEDDING</div>
      </div>

      <div class="mySlides">
        <div class="numbertext">3 / 6</div>
        <img src=./img/studio/c07.jpg style="width:500px">
        <div class="text">GREEM WEDDING</div>
      </div>

      <div class="mySlides">
        <div class="numbertext">4 / 6</div>
        <img src="./img/studio/c03.jpg" style="width:500px">
        <div class="text">GREEM WEDDING</div>
      </div>

      <div class="mySlides">
        <div class="numbertext">5 / 6</div>
        <img src="./img/studio/c02.jpg" style="width:500px">
        <div class="text">GREEM WEDDING</div>
      </div>

      <div class="mySlides">
        <div class="numbertext">6 / 6</div>
        <img src="./img/studio/c08.jpg" style="width:500px">
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
           src="./img/studio/c01.jpg"
           alt="swamp"
           />
      <img
           src="./img/studio/c06.jpg"
           alt="swamp"
           />
      <img
           src="./img/studio/c10.jpg"
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

