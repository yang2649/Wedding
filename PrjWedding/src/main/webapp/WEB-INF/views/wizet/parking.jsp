<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>parking</title>
<jsp:include page="/WEB-INF/views/part_menu/head_resources.jsp" />
<style>


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
#parking{
color: rgb(232, 153, 110);

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
<div class="parking" style="font-size: 25px;">
<span id="parking">헤도주차장</span>
<p>부산광역시 부산진구 부전동 266-2</p>
<span id="parking">유진주차장</span>
<p>부산광역시 부산진구 부전동 266-22</p>
<span id="parking">대림주차장</span>
<p>부산광역시 부산진구 부전동 97-1</p>
<span id="parking">트루엘어반스테이 주차장</span>
<p>부산광역시 부산진구 부전동 129-1</p>
<br>
<br>
<br>



</div>
</div></div>











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