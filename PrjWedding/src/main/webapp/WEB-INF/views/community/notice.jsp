<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<!-- 헤드 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/head_resources.jsp" />


<!-- jquery 사용 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<link rel="stylesheet"	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">


<style>

/* 이쪽부분이 문제라 해당 슬라이딩 메뉴 부분에 문제가 생김 - */ 
/*  a{
 color: black;
    text-decoration: none;
     font-family: 'Cinzel', serif;
 }  
a{
    font-family: 'Cinzel', serif;
    font-size: 18px;
    
} */


.community-container {
  max-width: 1200px;
  position: relative;
  margin: auto; 
}
/* 수정불가 */
ul{
display:flex;
}

.notice-date{ width:100px; }
.notice-tit{ width:700px; }
.notice-cont{right: 50px;
    position: absolute; }
.notice-cont-i    {right: 65px;
    position: absolute; }
 a{
   color: black;
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
  <a class="nav-item nav-link active" href="/Community01" style="background-color: rgb(200, 200, 200)">공지사항</a>
  <a class="nav-item nav-link" href="/Community02" style="color: rgb(0, 0, 0)">이벤트</a>
  <a class="nav-item nav-link" href="/Community03" style="color: rgb(0, 0, 0)">자료실</a>
  <a class="nav-item nav-link" href="/Community04" style="color: rgb(0, 0, 0)">FAQ</a>
  <a class="nav-item nav-link" href="/Community05" style="color: rgb(0, 0, 0)">후기글</a>
</nav>		

<div class="container-top" style="margin: 200px;"></div>
     <!-- =============================여기서부터 내용==================================== -->
      	<div id="text-table">
	  	<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">공지사항</span></h1>
	  	</div>
	  	<br><br>
	   <div class="community-container">
	    <c:if test="${not empty sessionScope.login.memid }">
        <c:if test="${sessionScope.login.memid eq 'admin' }">
        <a href="Community01WriteForm" ><div style="text-align:right;">공지사항 글쓰기</div></a>
    
        </c:if>
    </c:if>
	   <hr>
      
     <div id="not">
       <hr>
       <div id="not-pan">
         <ul>
            <li class="notice-date" style=" width:100px; font-weight: bold;  font-size: 20px;">날짜</li>
            <li class="notice-tit" style=" width:150px; font-weight: bold;  font-size: 20px;">제목</li>
            <li class="notice-name" style="display:none; ">글쓴이</li>
            <li class="notice-cont" style="font-weight: bold;  font-size: 20px;" >조회수</li>
         </ul>
         <hr>

      <c:forEach var="CommunityVo" items="${notList}">
       <ul>             
            <li class="notice-date" style="display: ">${fn:substring( CommunityVo.regdate, 0, 10) }</li>
            <li class="notice-tit"><a href="Community01View?idx=${CommunityVo.idx}">${ CommunityVo.title }</a></li>
            <li class="notice-name" style="display:none">${ CommunityVo.writer }</li>
            <li class="notice-cont-i" style="display:">${ CommunityVo.readcount }</li>         
     </ul>
         <hr>
       </c:forEach>  
       </div>
     </div>
     </div>
	   </div>
     <div class="foot-container"  style="margin: 300px;">
   </div>
<!-- 푸터 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/footer.jsp" />  
     
</body>
</html>