<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>buffet</title>

<!-- 헤드 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/head_resources.jsp" />
<!-- css 부분 사용 -->
<link rel="shortcut icon" href="./img/favicon.ico">
<link rel="stylesheet" href="./css/slide.css">


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
  <a class="nav-item nav-link active" href="/Caterring01" style="background-color: rgb(200, 200, 200)"  >Buffet</a>
  <a class="nav-item nav-link" style="color: rgb(0, 0, 0)" href="/Caterring02">Premium</a>
</nav>	<br><br>

	<div id="buffet-text">
		<h2>POINT ONE</h2>
		<p>오랜 노하우를 갖춘 전문 쉐프가 조리한 스페셜한 음식 을 선사합니다. 뜻 깊은 날,</p>
		<p>찾아주신 분들을 위해서 정성 가득한 요리 를 대접하겠습니다. 최고의 맛과 서비스를 CA에서 만나보세요!</p><br>
	</div><br><br>
	<div id="buffet-text">
		<h2>POINT TWO</h2><br>
		<h2>
		<img src="./img/buffet/buffet01.jpg" >
		<img src="./img/buffet/buffet02.jpg" >
		</h2>
		<p style="font-size: 25px;">동시 좌석 1600석의 대형 연회장</p><br>
		<p>예식 팀별 단독룸 사용으로 인하여 더욱 편안하고 여유 있는 식사가 가능합니다.</p>
		<p>최신 음향·영상시설을 갖춰 식사와 연회, 세미나가 가능한 공간을 준비하였습니다.</p><br>
	</div><br><br>
	<div id="buffet-text">
		<h2>POINT THREE</h2><br>
		<h2>
		<img src="./img/buffet/buffet03.jpg" >
		<img src="./img/buffet/buffet04.jpg" >
		</h2>
		<h2>
		<img src="./img/buffet/buffet05.jpg" >
		<img src="./img/buffet/buffet06.jpg" >
		</h2><br><br>
		<p style="font-size: 25px;">200여 종의 산해진미 & 쉐프의 스페셜메뉴</p><br>
		<p>특급호텔 출신의 쉐프가 이끄는 조리팀이 정성껏 조리한 요리를 합리적인 가격으로 호텔급 서 비스와 함께 즐기실 수 있습니다.</p>
		<p>엄선되고 신선한 식재료로 정성껏 준비한 음식을 아늑하고 품격 있는 공간에서 즐기실 수 있습니다.</p>
		<p>즉석요리 코너를 포함해 200여 가지의 다양한 메뉴를 준비하였습니다.</p>
		<p>어머니의 손맛으로 직접 담근 김치를 제공하여 맛과 멋을 한층 돋우었습니다.</p><br>
	</div><br><br>
	<div id="buffet-text">
		<h2>POINT FOUR</h2><br>
		<h2>
		<img src="./img/buffet/buffet07.jpg" style="width: 30%;">
		<img src="./img/buffet/buffet08.jpg" style="width: 30%;">
		<img src="./img/buffet/buffet09.jpg" style="width: 30%;">
		</h2><br><br>
		<p style="font-size: 25px;">단독 행사를 위한 별도룸 제공, 단독룸 최대 700석</p><br>
		<p>인원 규모에 맞춰 품격 있는 행사를 진행할 수 있는 단독룸 사용이 가능합니다.</p>
		<p>결혼, 장수연, 돌, 각종 세미나, 송년회 外 다양한 행사 진행이 가능합니다.</p><br>
	</div><br><br>

<br><br><br><br>

<!-- 푸터 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/footer.jsp" />
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