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
			<span style="color: rgb(191, 131, 101);" ">Invitation</span></h1>
	</div> <br><br>
	<div style="text-align: center;">
	</div><br><br>
	<div id="buffet-text"><br><br>
		<div id="ddd">
		<h2>"여기서 결혼식 저기서 청접장"</h1>
		<p>여러가지 사항이 불편하신가요</p>
		<p>그런 당신에게</p>
		<p>Green Invitation을 추천합니다</p><br>
		<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">구성품</span></h1>
		<h2>
		<img src="./img/invitation/a01.jpg" style="width: 1000px; height: 650px;" />
	    </h2>
		<h2>
		<img src="./img/invitation/a02.jpg" style="width: 1000px; height: 650px;" />
	    </h2>
	    </div>

		<br><br>
	</div><br><br>
<br><br>
  
  
<!-- 푸터 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/footer.jsp" />

    

</body>
</html> 

