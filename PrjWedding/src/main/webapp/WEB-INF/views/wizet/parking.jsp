<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>parking</title>

<!-- jquery 사용 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<link rel="stylesheet"	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">

<!-- ajax 스타일 시트 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/fslightbox/3.4.1/index.min.js"></script>

<!-- css 부분 사용 -->
<link rel="shortcut icon" href="./img/favicon.ico">
<link rel="stylesheet" href="./css/styles.css">
<link rel="stylesheet" href="./css/loginstyle.css">
<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/slide.css">


<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<link rel="shortcut icon" href="/img/favicon.ico">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


<!-- 글 폰트 -->
<!-- 구글 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=EB+Garamond:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@700&family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Lora:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Castoro+Titling&display=swap" rel="stylesheet">

<style>

body {
   padding-top: 80px; /* 헤더 높이만큼 패딩 추가 */
}

li {
  display: flex;
  justify-content: center;
}

.gold {
  color: #FFD700;
}

/* body 메뉴 폰트 및 사이즈 */


   .text-table {
   padding-top:300px;
   text-align:center;
   margin:auto;
width: 1000px;}
   .text-table h2{
   text-align:left;

}

div.widget_text_wrap {
    background-size: cover;
    background-position:  center;
   
    width: 100%;
    word-wrap: break-word;
}
.widget {
    position: relative;
    display: block;
    box-sizing: border-box;
}

</style>

</head>
<body>
   
<!-- 헤더 부분 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/header.jsp" />

  
<!--유정 로그인 분리--> <!-- 이 부분만 안뜸  -->
<jsp:include page="/WEB-INF/views/part_menu/login.jsp" />


<!-- 슬라이드 메뉴 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/slidemenu.jsp" />
<img src="./img/side_main.jpg" width="100%" height="100%">
	
<nav class="nav nav-pills nav-justified">
  <a class="nav-item nav-link " href="/Location01" style="color: rgb(0, 0, 0)">찾아 오는 길</a>
  <a class="nav-item nav-link active"  href="/Location02"  style="background-color: rgb(200, 200, 200)" >주차안내</a>
</nav>   
<div class="text-table "><div><h2>
<span id = "location" style="letter-spacing: -1px; ">Parking</span>
</h2>
	<hr>
<h2>
<img style="text-align: center;  width:1000px;" src="img/parking.jpg" >
</h2>
<p style="line-height: 2;">
<span style="font-size: 18px;">
<strong>도로명 주소</strong>
 : 부산 부산진구 중앙대로 749</span>
 </p>
<p style="line-height: 2;">
<strong>
<span style="font-size: 18px;">
지번 주소
</span>
</strong>
<span style="font-size: 18px;">
&nbsp;: &nbsp;부산 부산진구 부전동 266-2
</span>
</p>
<p style="line-height: 2;">
<span style="font-size: 18px;">
<strong>
상담전화
</strong>
 :</span>
<strong>
<span style="color: rgb(232, 153, 110); font-size: 18px;">
&nbsp;052-912-1000
</span>
</strong>
</p>
<p>
<br>
</p>
</div>
</div>













<jsp:include page="/WEB-INF/views/part_menu/footer.jsp" />




<script>
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