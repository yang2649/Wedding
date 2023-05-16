<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>faq</title>
<!-- 헤드 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/head_resources.jsp" />

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<style>

li {
  display: flex;
  justify-content: center;
  font-family: 'Cinzel', serif;
  font-size: 20px;
}


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
nav  {
  font-family: 'Times New Roman';
  font-size: 20px;
}

h1{ text-align: center;}




/*=================================================*/

.customer-notice a {
	text-decoration: none;
	color: black;
}
.customer-notice li {
	padding: 10px;
}
.show {
	display: flex;
	flex-direction: row;
}
.faqTitle ul {
	margin: 0;
	padding: 0;
	justify-content: space-between;
	border-bottom: 1px solid #ccc;
	cursor: hand;
}
.faqTitle li {
	display: flex;
}
.faqContent {
	background-color: #eee;
}
.faqContent p {
	display: none;
	padding: 20px;
	height: 100px;
}
	   .community-container {
  max-width: 1200px;
  position: relative;
  margin: auto; 
}





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
nav  {
  font-family: 'Times New Roman';
  font-size: 20px;
}

h1{ text-align: center;}

.customer-notice a {
	text-decoration: none;
	color: black;
}
.customer-notice li {
	padding: 10px;
}
.show {
	display: flex;
	flex-direction: row;
}
.faqTitle ul {
	margin: 0;
	padding: 0;
	justify-content: space-between;
	border-bottom: 1px solid #ccc;
	cursor: hand;
}
.faqTitle li {
	display: flex;
}
.faqContent {
	background-color: #eee;
}
.faqContent p {
	display: none;
	padding: 20px;
	height: 100px;
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
<!--카카오문의-->
<jsp:include page="/WEB-INF/views/part_menu/kakao.jsp" />
		<!-- 메인 메뉴 -->
		<!-- 메인 메뉴 -->
		
<img src="./img/side_main.jpg" width="100%" height="100%" >
<nav class="nav nav-pills nav-justified" >
  <a class="nav-item nav-link" href="/Community01" style="color: rgb(0, 0, 0)">공지사항</a>
  <a class="nav-item nav-link" href="/Community02" style="color: rgb(0, 0, 0)">이벤트</a>
  <a class="nav-item nav-link" href="/Community03" style="color: rgb(0, 0, 0)">자료실</a>
  <a class="nav-item nav-link" href="/Community04" style="color: rgb(0, 0, 0)">FAQ</a>
  <a class="nav-item nav-link" href="/Community05" style="color: rgb(0, 0, 0)">후기글</a>
</nav>		

<br><br><br><br><br><br><br><br>
<script>
  const menuButton = document.querySelector('.menu-toggle');
  const slidingMenu = document.querySelector('.sliding-menu');
  const slidingMenuOverlay = document.querySelector('.sliding-menu-overlay');

  menuButton.addEventListener('click', function () {
    slidingMenu.classList.toggle('open');
    slidingMenuOverlay.classList.toggle('open');
  });

  slidingMenuOverlay.addEventListener('click', function () {
    slidingMenu.classList.remove('open');
    slidingMenuOverlay.classList.remove('open');
  });

  $(document).ready(function () {
    $('#main-slider').bxSlider({
      auto: true,
      autoControls: true,
      stopAutoOnClick: true,
      pager: true,
      speed: 500,
      pause: 4000,
      slideMargin: 0
    });

    let lastScrollTop = 0;

    $(window).scroll(function () {
        const currentScrollTop = $(this).scrollTop();
        const header = $('.header');

        if (currentScrollTop > lastScrollTop) {
          header.addClass('hide-header');
        } else {
          header.removeClass('hide-header');
        }

        if (currentScrollTop > 0) {
          header.addClass('sticky');
          menuButton.classList.add('gold'); // 메뉴 버튼 색상 변경 코드 추가
        } else {
          header.removeClass('sticky');
          menuButton.classList.remove('gold'); // 메뉴 버튼 색상 변경 코드 추가
        }
        lastScrollTop = currentScrollTop;
      });
    });
</script>
     <!-- =============================여기서부터 내용==================================== -->
  	<div id="text-table">
	  	<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">FAQ</span></h1>
	 <br><br>
	  	</div>
	  	<div style="text-align:right; margin:0px 250px 0px 0px;" >
	  	<a href="/Community04WriteForm">새 글쓰기</a>
	  	</div>
	   <div class="community-container">
	   <hr>
	 <div class="faq_group">
    <div class="table">
      <div class="block">
         <li style="margin:auto;">자주하는 질문들</li>
      </div>
    </div>
      <hr>
      <div class="customer-notice">
            <c:forEach var="vo" items="${faqList}">
               <div class="faqTitle" id="show-${vo.idx}">
                  <ul class="show">
                     <li >${vo.title}</li>
                     <li><span class="material-symbols-outlined">expand_more</span></li>
                  </ul>
               </div>
               <div class="faqContent">
                  <p id="hide-${vo.idx}"><span>${vo.cont}</span>
                 <br><br> 
			<span style=" position: absolute;
    left: 89%;
    transform: translateX(-11%);">
			    <a href="Community04UpdateForm?idx=${vo.idx}">수정하기</a><a href="/Community04Delete?idx=${vo.idx} ">삭제하기</a>    
			</span>
               
                  </p>
               
              <p class="event-atag" style="text-align: right;">
			  </p>
           
               </div>
            </c:forEach>
         </div>
	   </div>
      </div>
   </div>
</div>
   <div class="container-footer" style="margin: 300px;"></div>
   
   <script>
      $(document).ready(function() {
         $('[id^="show-"]').each(function() {
            let id = $(this).attr("id");
            let num = id.split("-")[1];	
            $(this).click(function() {
               $("#hide-" + num).toggle();
            });
         });
      });
  </script>
 <!-- 푸터 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/footer.jsp" />  
</body>
</html>














