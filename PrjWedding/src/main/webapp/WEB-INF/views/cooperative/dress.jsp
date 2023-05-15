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
<link rel="stylesheet" href="/css/img.css">

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

 .collapsible {
            background-color: #777;
            color: white;
            cursor: pointer;
            padding: 18px;
            width: 90%;
            border: none;
            text-align: center;
            outline: none;
            font-size: 15px;
        }
        .active,
        .collapsible:hover {
            background-color: #555;
        }
        .content {
            padding: 0 321px;
            max-height: 0;
            overflow: hidden;
            transition: max-height 0.2s ease-out;
            background-color: #f1f1f1;
        }
        .collapsible:after {
            content: '\002B';
            color: white;
            font-weight: bold;
            float: right;
            margin-left: 5px;
        }
        .active:after {
            content: "\2212";
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
	<div id="text-table">
		<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">Wedding Dress</span></h1>
	</div> <br><br>
	<div>
<button type="button" class="collapsible" onclick="collapse(this);">BE ABSOLUTELY</button>
<div class="content">
  <% 
  String[] descriptions = {
		  "Description 1", "Description 2", "Description 3", "Description 4", "Description 5", "Description 6", 
		  "Description 7", "Description 8", "Description 9", "Description 10", "Description 11", "Description12", 
		  "Description 13", "Description 14", "Description 15", "Description 16", "Description 17", "Description 18",
		  "Description 91", "Description 20"
		  }; // 설명 배열
  
  for (int i = 1; i <= 20; i++) {
    String imageFileName = "./img/드레스/a" + String.format("%02d", i) + ".jpg";
    String description = descriptions[i-1]; // 해당 인덱스에 맞는 설명 할당
  %>
    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front">
          <img src="<%= imageFileName %>" alt="Avatar">
        </div>
        <div class="flip-card-back">
          <h1>BE ABSOLUTELY</h1>
          <p><%= description %></p>
        </div>
      </div>
    </div>
  <% } %>
</div>
<button type="button" class="collapsible" onclick="collapse(this);">LE MEILLEUR CHEF</button>
<div class="content">
  <% 
  String[] descriptions02 = {
		  "Description 1", "Description 2", "Description 3", "Description 4", "Description 5", "Description 6", 
		  "Description 7", "Description 8", "Description 9", "Description 10"
		  }; // 설명 배열
  
  for (int i = 1; i <= 10; i++) {
    String imageFileName = "./img/드레스/b" + String.format("%02d", i) + ".jpg";
    String description02 = descriptions02[i-1]; // 해당 인덱스에 맞는 설명 할당
  %>
    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front">
          <img src="<%= imageFileName %>" alt="Avatar">
        </div>
        <div class="flip-card-back">
          <h1>LE MEILLEUR CHEF</h1>
          <p><%= description02 %></p>
        </div>
      </div>
    </div>
  <% } %>
</div>
<button type="button" class="collapsible" onclick="collapse(this);">ROBE DE RÊVE</button>
<div class="content">
  <% 
  String[] descriptions03 = {
		  "Description 1", "Description 2", "Description 3", "Description 4", "Description 5", "Description 6", 
		  "Description 7", "Description 8", "Description 9", "Description 10", "Description 11"
		  }; // 설명 배열
  
  for (int i = 1; i <= 11; i++) {
    String imageFileName = "./img/드레스/c" + String.format("%02d", i) + ".jpg";
    String description03 = descriptions03[i-1]; // 해당 인덱스에 맞는 설명 할당
  %>
    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front">
          <img src="<%= imageFileName %>" alt="Avatar">
        </div>
        <div class="flip-card-back">
          <h1>ROBE DE RÊVE</h1>
          <p><%= description03 %></p>
        </div>
      </div>
    </div>
  <% } %>
</div>
<button type="button" class="collapsible" onclick="collapse(this);">LA PERFECTION</button>
<div class="content">
  <% 
  String[] descriptions04 = {
		  "Description 1", "Description 2", "Description 3", "Description 4", "Description 5", "Description 6", 
		  "Description 7", "Description 8", "Description 9", "Description 10", "Description 11"
		  }; // 설명 배열
  
  for (int i = 1; i <= 11; i++) {
    String imageFileName = "./img/드레스/d" + String.format("%02d", i) + ".jpg";
    String description04 = descriptions04[i-1]; // 해당 인덱스에 맞는 설명 할당
  %>
    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front">
          <img src="<%= imageFileName %>" alt="Avatar">
        </div>
        <div class="flip-card-back">
          <h1>LA PERFECTION</h1>
          <p><%= description04 %></p>
        </div>
      </div>
    </div>
  <% } %>
</div>
<button type="button" class="collapsible" onclick="collapse(this);">JOUR DE MEMORABLE</button>
<div class="content">
  <% 
  String[] descriptions05 = {
		  "Description 1", "Description 2", "Description 3", "Description 4", "Description 5", "Description 6", 
		  "Description 7", "Description 8", "Description 9"
		  }; // 설명 배열
  
  for (int i = 1; i <= 9; i++) {
    String imageFileName = "./img/드레스/f" + String.format("%02d", i) + ".jpg";
    String description05 = descriptions05[i-1]; // 해당 인덱스에 맞는 설명 할당
  %>
    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front">
          <img src="<%= imageFileName %>" alt="Avatar">
        </div>
        <div class="flip-card-back">
          <h1>JOUR DE MEMORABLE</h1>
          <p><%= description05 %></p>
        </div>
      </div>
    </div>
  <% } %>
</div>
<button type="button" class="collapsible" onclick="collapse(this);">BE MY MUSE</button>
<div class="content">
  <% 
  String[] descriptions06 = {
		  "Description 1", "Description 2", "Description 3", "Description 4", "Description 5", "Description 6", 
		  "Description 7", "Description 8"
		  }; // 설명 배열
  
  for (int i = 1; i <= 8; i++) {
    String imageFileName = "./img/드레스/g" + String.format("%02d", i) + ".jpg";
    String description06 = descriptions06[i-1]; // 해당 인덱스에 맞는 설명 할당
  %>
    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front">
          <img src="<%= imageFileName %>" alt="Avatar">
        </div>
        <div class="flip-card-back">
          <h1>BE MY MUSE</h1>
          <p><%= description06 %></p>
        </div>
      </div>
    </div>
  <% } %>
</div>
<button type="button" class="collapsible" onclick="collapse(this);">LOVE IN BLANC</button>
<div class="content">
  <% 
  String[] descriptions07 = {
		  "Description 1", "Description 2", "Description 3", "Description 4", "Description 5", "Description 6", 
		  "Description 7", "Description 8", "Description 9"
		  }; // 설명 배열
  
  for (int i = 1; i <= 9; i++) {
    String imageFileName = "./img/드레스/h" + String.format("%02d", i) + ".jpg";
    String description07 = descriptions07[i-1]; // 해당 인덱스에 맞는 설명 할당
  %>
    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front">
          <img src="<%= imageFileName %>" alt="Avatar">
        </div>
        <div class="flip-card-back">
          <h1>LOVE IN BLANC</h1>
          <p><%= description07 %></p>
        </div>
      </div>
    </div>
  <% } %>
</div>
<button type="button" class="collapsible" onclick="collapse(this);">POUVOIR DE</button>
<div class="content">
  <% 
  String[] descriptions08 = {
		  "Description 1", "Description 2", "Description 3", "Description 4", "Description 5", "Description 6", 
		  "Description 7"
		  }; // 설명 배열
  
  for (int i = 1; i <= 7; i++) {
    String imageFileName = "./img/드레스/i" + String.format("%02d", i) + ".jpg";
    String description08 = descriptions08[i-1]; // 해당 인덱스에 맞는 설명 할당
  %>
    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front">
          <img src="<%= imageFileName %>" alt="Avatar">
        </div>
        <div class="flip-card-back">
          <h1>POUVOIR DE</h1>
          <p><%= description08 %></p>
        </div>
      </div>
    </div>
  <% } %>
</div>
  <!-- 추가된 사진 끝 -->
</div>

<!-- 푸터 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/footer.jsp" />

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
   
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex > slides.length) {
        slideIndex = 1
    }
    slides[slideIndex - 1].style.display = "block";

    setTimeout(showSlides, 2000); // 2초마다 이미지가 체인지됩니다
}


function collapse(element) {
    var before = document.getElementsByClassName("active")[0]               // 기존에 활성화된 버튼
    if (before && document.getElementsByClassName("active")[0] != element) {  // 자신 이외에 이미 활성화된 버튼이 있으면
        before.nextElementSibling.style.maxHeight = null;   // 기존에 펼쳐진 내용 접고
        before.classList.remove("active");                  // 버튼 비활성화
    }
    element.classList.toggle("active");         // 활성화 여부 toggle

    var content = element.nextElementSibling;
    if (content.style.maxHeight != 0) {         // 버튼 다음 요소가 펼쳐져 있으면
        content.style.maxHeight = null;         // 접기
    } else {
        content.style.maxHeight = content.scrollHeight + "px";  // 접혀있는 경우 펼치기
    }
}
</script>
</body>
</html> 

