<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>faq</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<!-- 헤드 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/head_resources.jsp" />

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<style>

/* li {
  display: flex;
  justify-content: center;
  font-family: 'Cinzel', serif;
  font-size: 20px;
} */


/* body {
	padding-top: 80px; 
}

\

.gold {
  color: #FFD700;
} */

/* body 메뉴 폰트 및 사이즈 */
/* nav  {
  font-family: 'Times New Roman';
  font-size: 20px;
}
 */
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
	height: 130px;
}
 .community-container {
  max-width: 1200px;
  position: relative;
  margin: auto; 
}
/* 
body {
	padding-top: 80px;  
}

li {
  display: flex;
  justify-content: center;
}

.gold {
  color: #FFD700;
}
 */
/* body 메뉴 폰트 및 사이즈 */
nav div {
  font-family: 'Times New Roman'; 
  font-size: 20px;
}

h1{ text-align: center;}

/*  a{
 color: black;
    text-decoration: none;
     font-family: 'Cinzel', serif;
 }   */


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
   <a class="nav-item nav-link active" href="/Community04" style="background-color: rgb(200, 200, 200)">FAQ</a>
  <a class="nav-item nav-link" href="/Community05" style="color: rgb(0, 0, 0)">후기글</a>
</nav>		
<br><br><br><br><br><br><br><br>
     <!-- =============================여기서부터 내용==================================== -->

  	<div id="text-table">
	  	<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">FAQ</span></h1>
	 <br><br>
	  	</div>
	  	<div style="text-align:right; margin:0px 250px 0px 0px;" >
	  	</div>
	   <div class="community-container">
	       <c:if test="${not empty sessionScope.login.memid }">
        <c:if test="${sessionScope.login.memid eq 'admin' }">
     	<a href="/Community04WriteForm">새 글쓰기</a>
        </c:if>
    </c:if>
	  
	   <hr>
	 <div class="faq_group">
    <div class="table">
      <div class="block">
         <li style="margin:auto; font-weight: bold;">자주하는 질문들</li>
      </div>
    </div>
      <hr>
      <div class="customer-notice" >
            <c:forEach var="vo" items="${faqList}">
               <div class="faqTitle" id="show-${vo.idx}" >
                  <ul class="show">
                     <li >${vo.title}</li>
                     <li><span class="material-symbols-outlined">expand_more</span></li>
                  </ul>
               </div>
               <div class="faqContent">
                  <p id="hide-${vo.idx}"><span>${vo.cont}</span>
                 <br><br> 
			<span style=" position: absolute;
    left: 87%;
    transform: translateX(-13%);">
    	       <c:if test="${not empty sessionScope.login.memid }">
        <c:if test="${sessionScope.login.memid eq 'admin' }">
	    <a href="Community04UpdateForm?idx=${vo.idx}">수정하기</a><a href="/Community04Delete?idx=${vo.idx} ">삭제하기</a>    
        </c:if>
    </c:if>
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














