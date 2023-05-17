<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>cooperative</title>
<!-- 헤드 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/head_resources.jsp" />
<!-- css 부분 사용 -->
<link rel="shortcut icon" href="/img/favicon.ico">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/slide.css">
<link rel="stylesheet" href="/css/btn.css">


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
  width: 500px;
  height: 500px;
} 
#text-table h1 {
  font-family: 'Noto Sans KR', sans-serif;
}
.ddd h2{
text-align: center;
}

#text-table h1 {
  font-family: 'Noto Sans KR', sans-serif;
}
#buffet-text h2{
  font-family: 'Noto Sans KR', sans-serif;
  font-size  :  50px;
  font-weight : bold;
  text-align: center; 
  line-height: 2;
}
#buffet-text p{
  font-family: 'Noto Sans KR', sans-serif;
  font-size  :  15px;
  font-weight : bold;
  text-align: center; 
  line-height: 1;
}
#buffet-text {
  margin: auto;
  width: 70%;
  border: 10px solid #DCDCDC; 
}
#buffet-text img{
  width:45%;
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
  <a class="nav-item nav-link" href="/Cooperative01" style="color: rgb(0, 0, 0)">Studio</a>
  <a class="nav-item nav-link" href="/Cooperative02" style="color: rgb(0, 0, 0)">Dress</a>
  <a class="nav-item nav-link" href="/Cooperative03" style="color: rgb(0, 0, 0)">Hair & Make Up</a>
  <a class="nav-item nav-link" href="/Cooperative04" style="color: rgb(0, 0, 0)">Hanbok</a>
  <a class="nav-item nav-link active" href="/Cooperative05" style="background-color: rgb(200, 200, 200)" >Invitation</a>
</nav>	


<!-- dribbble -->
<a class="dribbble" href="https://dribbble.com/shots/7441241-Button-Hover-Effects" target="_blank"><img src="https://cdn.dribbble.com/assets/dribbble-ball-mark-2bd45f09c2fb58dbbfb44766d5d1d07c5a12972d602ef8b32204d28fa3dda554.svg" alt=""></a>
<br><br><br><br>
	<div id="text-table"><br>
		<h1 style="text-align: center; font-size: 15px;">
	<a href="/466"><button type="button" class="button">BNIEL466</button></a>
	<a href="/355"><button type="button" class="button" >BNIEL355</button></a>
	<a href="/497"><button type="button" class="button" >BNIEL497</button></a>
	<a href="/594"><button type="button" class="button" >BNIEL594</button></a>
	<a href="/634"><button type="button" class="button">GRENDY634</button></a>
	<a href="/533"><button type="button" class="button" >GRENDY533</button></a>
	<a href="/512"><button type="button" class="button" >GRENDY512</button></a>
	<a href="/546"><button type="button" class="button" >GRENDY546</button></a>
	<br><br><br><br><br>
	<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">BNIEL594</span></h1>
	</div> <br><br>
	<div style="text-align: center;"">
	<img src="./img/invitation/b594.jpg" />
	</div><br><br>
	<div id="buffet-text"><br><br>
		<div id="ddd">
		<h2>
	  	<video muted autoplay loop style="width: 80%; text-align: center;">
	      <source src="./img/invitation/b594.mp4" type="video/mp4">
	    </video>
	    </h2>
	    </div>

		<p>최고의 가공기술로 만든 아름다운 웨딩카드, 브니엘</p>
		<br><br>
	</div><br><br>

    <!-- 포토 -->
    <div id="text-table">
		<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">image</span></h1>
	</div><br><br>
	<div id="root">
    <div style="display: flex; flex-wrap: wrap; justify-content: center;">

      <img
           src="./img/invitation/b594_01.jpg"
           alt="swamp"
           />
      <img
           src="./img/invitation/b594_02.jpg"
           alt="swamp"
           />
      
    </div>
	<div id="root">
    <div style="display: flex; flex-wrap: wrap; justify-content: center; ">

      <img
           src="./img/invitation/b594_03.jpg"
           alt="swamp"
           />
      <img
           src="./img/invitation/b594_04.jpg"
           alt="swamp"
           />
      
    </div>
  </div><br><br>
  
  
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

  