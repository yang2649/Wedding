<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- 헤드 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/head_resources.jsp" />


<style>
/* 건드리지 말고*/
.community-container {
  max-width: 1200px;
  position: relative;
  margin: auto; 
   /*  font-family: 'Cinzel', serif; */
}


h1{ text-align: center;}


/* body {
	padding-top: 80px; 
}


.gold {
  color: #FFD700;
}
 */
 
 
/* body 메뉴 폰트 및 사이즈 */
/* nav  {
  font-family: 'Times New Roman';
  font-size: 20px;
} */

.event-parent {
    display: flex;
}
.event-image {
    flex: 1;
}
.event-text {
    flex: 2;
}

 a{
 color: black;
    text-decoration: none;
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
		
<img src="./img/side_main.jpg" width="100%" height="100%" >
<nav class="nav nav-pills nav-justified" >
  <a class="nav-item nav-link" href="/Community01" style="color: rgb(0, 0, 0)">공지사항</a>
  <a class="nav-item nav-link active" href="/Community02" style="background-color: rgb(200, 200, 200)">이벤트</a>
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
  <!-- =====================이벤트 내용 시작 ============================ -->
	  	<div id="text-table">
	  	<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">Event</span></h1>
	  	</div>
	  	<br><br>
 <div class="community-container">
    <c:if test="${not empty sessionScope.login.memid }">
        <c:if test="${sessionScope.login.memid eq 'admin' }">
      <a href="Community02WriteForm">새글쓰기</a>
        </c:if>
    </c:if>
	   <hr>
	 <c:forEach var="vo" items="${vo}">
   <div class="event-parent">
	   <div class="event-image"><img src="Pds/download/external/${ vo.sfilename }" width="300px" high="300px"></div>
	   <div class="event-text">
	   <hr>
	   <h1>${vo.title}</h1>
	   <hr>
	   <p>${vo.cont}</p>
       <br>
       <p>reservation</p>
       <p>자세한 문의는 예약실로 상담예약 부탁드립니다. Tel. 041-520-9999</p>  
	   </div>	   
   </div>
      <c:if test="${not empty sessionScope.login.memid }">
        <c:if test="${sessionScope.login.memid eq 'admin' }">
   <p class="event-atag" style="text-align: right;">
   <a href="/Community02UpdateForm?idx=${vo.idx}">수정하기</a>  <a href="/Community02Delete?idx=${vo.idx}">삭제하기</a>    
   </p>
    
        </c:if>
    </c:if>
   
   <hr>
	 </c:forEach>
 </div>
	  
	  <div class="container" style="margin:300px;" ></div>
	  
	  
	  
	 <!-- 푸터 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/footer.jsp" />  
	  
	  
</body>
</html>