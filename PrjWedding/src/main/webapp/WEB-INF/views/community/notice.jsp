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

 .community-container {
  max-width: 1200px;
  position: relative;
  margin: auto; 
}
ul{
display:flex;
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
	   <hr>
      
     <div id="not">
       <hr>
       <div id="not-pan">
      <a href="Community01WriteForm" ><div style="text-align:right;">공지사항 글쓰기</div></a>
         <ul>
            <li class="notice-date" style="display: ">날짜</li>
            <li class="notice-tit">제목</li>
            <li class="notice-name" style="display:none">글쓴이</li>
            <li class="notice-cont" style="display:">조회수</li>
         </ul>
         <hr>

      <c:forEach var="CommunityVo" items="${notList}">
       <ul>             
            <li class="notice-date" style="display: ">${fn:substring( CommunityVo.regdate, 0, 10) }</li>
            <li class="notice-tit"><a href="Community01View?idx=${CommunityVo.idx}">${ CommunityVo.title }</a></li>
            <li class="notice-name" style="display:none">${ CommunityVo.writer }</li>
            <li class="notice-cont" style="display:">${ CommunityVo.readcount }</li>         
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