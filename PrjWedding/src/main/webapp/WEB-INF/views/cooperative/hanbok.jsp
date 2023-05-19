<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<!-- 잡다한 헤드 부분 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/head_resources.jsp" />
<!-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script> -->
	
<script src="https://cdnjs.cloudflare.com/ajax/libs/fslightbox/3.4.1/index.min.js"></script>


<!-- 글 폰트 -->


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
  width: 350px;
  height: 500px;
}
 
#root2 img {
  display: block;
  margin: 5px;
  width: 500px;
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
		
<img src="./img/side_main.jpg" width="100%" height="100%" >
<nav class="nav nav-pills nav-justified" >
  <a class="nav-item nav-link" href="/Cooperative01" style="color: rgb(0, 0, 0)">Studio</a>
  <a class="nav-item nav-link" href="/Cooperative02" style="color: rgb(0, 0, 0)">Dress</a>
  <a class="nav-item nav-link" href="/Cooperative03" style="color: rgb(0, 0, 0)">Hair & Make Up</a>
  <a class="nav-item nav-link active" href="/Cooperative04" style="background-color: rgb(200, 200, 200)">Hanbok</a>
  <a class="nav-item nav-link" href="/Cooperative05" style="color: rgb(0, 0, 0)">Invitation</a>
</nav>	

<br><br><br><br>
	<div id="text-table">
		<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">신씨비단</span></h1>
		<p><br></p>
		<p>한복은 한국의 전통 의상으로 아름다운 디자인과 우아한 느낌으로 유명합니다. </p>
		<p>고품질의 한복을 저렴한 가격으로 대여해주며, 고객님을 만족시켜 드리겠습니다.</p>
		<p>아름다운 신부님께는 신비스러운 느낌을</p>
		<p>어머님에게는 곱고 차분한 스타일을</p>
		<p>웨딩에 어울리는 다양한 종류의 한복을</p>
		<p>신씨비단과 함께 하세요.</p>
		<p><br></p>
		<p>- 신씨비단 -</p>
	</div><br><br><br><br><br><br><br><br><br><br><br><br><br>
	
	<!-- 슬라이드 -->
    <div id="index_03">
        <div id="header3"></div>
        <div id="slide3">
            <ul>
                <li><img src="./img/hanbok/s01.jpg" alt="슬라이드1" style="width: 600px; height: 800px;"></li>
                <li><img src="./img/hanbok/s02.jpg" alt="슬라이드2" style="width: 600px; height: 800px;"></li>
                <li><img src="./img/hanbok/s03.jpg" alt="슬라이드3" style="width: 600px; height: 800px;"></li>
                <li><img src="./img/hanbok/s04.jpg" alt="슬라이드4" style="width: 600px; height: 800px;"></li>
                <li><img src="./img/hanbok/s05.jpg" alt="슬라이드5" style="width: 600px; height: 800px;"></li>
                <li><img src="./img/hanbok/s06.jpg" alt="슬라이드6" style="width: 600px; height: 800px;"></li>
            </ul>
        </div>
    </div>
    <br>
	<div id="text-table">
		<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">Illustration</span></h1>
	</div>
	<div id="root">
    <div style="display: flex; flex-wrap: wrap; justify-content: center; padding: 1vw;">

      <img
           src="./img/hanbok/a01.jpg"
           alt="swamp"
           />
      <img
           src="./img/hanbok/a02.jpg"
           alt="swamp"
           />
      <img
           src="./img/hanbok/a03.jpg"
           alt="swamp"
           />
            <img
           src="./img/hanbok/a12.jpg"
           alt="swamp"
           />
    </div>
    <div style="display: flex; flex-wrap: wrap; justify-content: center; padding: 1vw;">

      <img
           src="./img/hanbok/a04.jpg"
           alt="swamp"
           />
      <img
           src="./img/hanbok/a05.jpg"
           alt="swamp"
           />
      <img
           src="./img/hanbok/a06.jpg"
           alt="swamp"
           />
           <img
           src="./img/hanbok/a11.jpg"
           alt="swamp"
           />
    </div>
    <div style="display: flex; flex-wrap: wrap; justify-content: center; padding: 1vw;">

      <img
           src="./img/hanbok/a07.jpg"
           alt="swamp"
           />
      <img
           src="./img/hanbok/a08.jpg"
           alt="swamp"
           />
      <img
           src="./img/hanbok/a09.jpg"
           alt="swamp"
           />
           <img
           src="./img/hanbok/a10.jpg"
           alt="swamp"
           />
    </div>
    
    
    <div id="text-table"><br><br>
		<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">Internal</span></h1>
	</div><br>
	<div id="root2">
    <div style="display: flex; flex-wrap: wrap; justify-content: center; padding: 1vw;">

      <img
           src="./img/hanbok/b01.jpg"
           alt="swamp"
           />
      <img
           src="./img/hanbok/b02.jpg"
           alt="swamp"
           />
      <img
           src="./img/hanbok/b03.jpg"
           alt="swamp"
           />
    </div>
	<div id="root2">
    <div style="display: flex; flex-wrap: wrap; justify-content: center; padding: 1vw;">

      <img
           src="./img/hanbok/b04.jpg"
           alt="swamp"
           />
      <img
           src="./img/hanbok/b05.jpg"
           alt="swamp"
           />
      <img
           src="./img/hanbok/b06.jpg"
           alt="swamp"
           />
    </div><br><br><br>
  
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
    document.querySelectorAll('#root2 img').forEach(el => {
      wrap(el);
    });

    
refreshFsLightbox();


//페이드인 페이드아웃

$('#slide3>ul>li').hide();
$('#slide3>ul>li:first-child').show();

setInterval(function(){
  $('#slide3>ul>li:first-child').fadeOut()
  .next().fadeIn().end(1000)
  .appendTo('#slide3>ul');
},3000);
    
</script>
</body>
</html> 

