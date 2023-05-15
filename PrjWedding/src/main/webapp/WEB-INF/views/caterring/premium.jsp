<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>premium</title>
<!-- css 부분 사용 -->
<link rel="shortcut icon" href="./img/favicon.ico">
<link rel="stylesheet" href="./css/slide.css">
<!-- 헤드 분리 -->
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
	
	
<img src="./img/side_main.jpg" width="100%" height="100%">
<nav class="nav nav-pills nav-justified">
  <a class="nav-item nav-link" href="/Caterring01" style="color: rgb(0, 0, 0)" >Buffet</a>
  <a class="nav-item nav-link active" href="/Caterring02"  style="background-color: rgb(200, 200, 200)" >Premium</a>
</nav>	<br><br>

	<div id="buffet-text">
		<h2>POINT ONE</h2>
		<h2>
		<img src="./img/buffet/buffet31.jpg" style="width: 950px; height: 350px;" >
		</h2>
		<p style="font-size: 25px;">"수많은 셰프들의 정성으로 만든 요리"</p><br>
		<p>숙련된 기술을 갖춘 특급호텔 출신 셰프가 엘타워 뷔페 디오디아의 </p>
		<p>노하우가 담긴 누벨퀴진 메뉴를 그린웨딩 뷔페에 제공해 드립니다.</p><br>
	</div><br><br>
	<div id="buffet-text">
		<h2>POINT TWO</h2><br>
		<h2>
		<img src="./img/buffet/buffet32.jpg" >
		<img src="./img/buffet/buffet33.jpg" >
		</h2>
		<p style="font-size: 25px;">두개의 홀로 운영되고 있는 편안한 연회장</p><br>
		<p>홀의 위치가 반대로 되어 있어 더욱 편안하고 여유 있는 식사가 가능합니다.</p>
		<p>최신 음향·영상시설을 갖춰 식사와 연회, 세미나가 가능한 공간을 준비하였습니다.</p><br>
	</div><br><br>
	<div id="buffet-text">
		<h2>POINT THREE</h2><br>
		<h2>
		<img src="./img/buffet/buffet15.jpg" >
		<img src="./img/buffet/buffet17.jpg" >
		</h2>
		<h2>
		<img src="./img/buffet/buffet19.jpg" >
		<img src="./img/buffet/buffet22.jpg" >
		</h2>
		<h2>
		<img src="./img/buffet/buffet25.jpg" >
		<img src="./img/buffet/buffet27.jpg" >
		</h2><br><br>
		<p style="font-size: 25px;">한·중·일 및 다양한 음식이 특별한 셰프들로 인해 준비</p><br>
		<p>특급호텔 출신의 쉐프가 이끄는 조리팀이 정성껏 조리한 요리를 합리적인 가격으로 호텔급 서비스와 함께 즐기실 수 있습니다.</p>
		<p>엄선되고 신선한 식재료로 정성껏 준비한 음식을 아늑하고 품격 있는 공간에서 즐기실 수 있습니다.</p>
		<p>호텔 뷔폐에서 단련된 셰프들의 특선요리까지 다양한 요리를 맛보시길 바랍니다.</p>
		<br>
	</div><br><br>
	<div id="buffet-text">
		<h2>POINT FOUR</h2><br>
		<h2>
		<img src="./img/buffet/buffet10.jpg" style="width: 30%;">
		<img src="./img/buffet/buffet18.jpg" style="width: 30%;">
		<img src="./img/buffet/buffet22.jpg" style="width: 30%;">
		</h2><br><br>
		<p style="font-size: 25px;">단독 행사를 위한 별도룸 제공, 단독룸 최대 700석</p><br>
		<p>인원 규모에 맞춰 품격 있는 행사를 진행할 수 있는 단독룸 사용이 가능합니다.</p>
		<p>결혼, 장수연, 돌, 각종 세미나, 송년회 外 다양한 행사 진행이 가능합니다.</p><br>
	</div><br><br>

<br><br><br><br>
<!-- 푸터 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/footer.jsp" />
<script>
</footer>
	
<script>


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

    
</script>
</body>
</html> 