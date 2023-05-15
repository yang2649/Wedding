<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>dress</title>

<!-- jquery 사용 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fslightbox/3.4.1/index.min.js"></script>

<!-- 헤드 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/head_resources.jsp" />
<!-- css 부분 사용 -->
<link rel="shortcut icon" href="/img/favicon.ico">
<link rel="stylesheet" href="/css/slide.css">
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

#root2 img {
  display: block;
  margin: 5px;
  width: 350px;
  height: 414px;
}  

#text-table h1 {
  font-family: 'Noto Sans KR', sans-serif;
}

#dress-text {
  margin: auto;
  width: 70%;
  border: 10px solid #CEF6F5;
}

</style>

</head>
<body>


<!-- 헤더 부분 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/header.jsp" />

  
<!--유정 로그인 분리--> <!-- 이 부분만 안뜸  -->
<jsp:include page="/WEB-INF/views/part_menu/login.jsp" />

<!--카카오문의-->
<jsp:include page="/WEB-INF/views/part_menu/kakao.jsp" />


<!-- 슬라이드 메뉴 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/slidemenu.jsp" />

<div class="sliding-menu-overlay"></div>

<!-- 메인 메뉴 -->



<img src="/img/side_main.jpg" width="100%" height="100%" >
<nav class="nav nav-pills nav-justified" >
  <a class="nav-item nav-link" href="/Cooperative01" style="color: rgb(0, 0, 0)">Studio</a>
  <a class="nav-item nav-link active" href="/Cooperative02" style="background-color: rgb(200, 200, 200)">Dress</a>
  <a class="nav-item nav-link" href="/Cooperative03" style="color: rgb(0, 0, 0)">Hair & Make Up</a>
  <a class="nav-item nav-link" href="/Cooperative04" style="color: rgb(0, 0, 0)">Hanbok</a>
  <a class="nav-item nav-link" href="/Cooperative05" style="color: rgb(0, 0, 0)">Invitation</a>
</nav>	



<a class="dribbble" href="https://dribbble.com/shots/7441241-Button-Hover-Effects" target="_blank"><img src="https://cdn.dribbble.com/assets/dribbble-ball-mark-2bd45f09c2fb58dbbfb44766d5d1d07c5a12972d602ef8b32204d28fa3dda554.svg" alt=""></a>
<br><br><br><br>
<div id="text-table"><br>
		<h1 style="text-align: center; font-size: 15px;">
	<a href="/Cooperative02"><button type="button" class="button">WEDDING</button></a>
	<a href="/Cooperative09"><button type="button" class="button" >STUDIO</button></a><br><br>
	<a href="/Cooperative09"><button type="button" class="button" >STUDIO</button></a><br><br>
	<div id="text-table">
		<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">Wedding Dress</span></h1>
	</div> <br><br>
	
	<!-- 일반 드레스 -->
	<div id="dress-text">
	<div id="text-table"><br><br>
		<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">Dress</span></h1>
		<p><br></p>
		<p style="font-family: 'Times New Roman'; font : bolder ; color: #6E6E6E;">아름다운 그대에게 어울리는 드레스</p>
	</div>
  </div><br><br>
	
		

<!-- 푸터 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/footer.jsp" />
    
<script>

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

