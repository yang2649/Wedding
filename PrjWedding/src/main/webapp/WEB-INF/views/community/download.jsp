<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>download</title>
<!-- 헤드 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/head_resources.jsp" />

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


<style>

/* li {
  display: flex;
  justify-content: center;
  font-family: 'Cinzel', serif;
  font-size: 20px;
} */



h1{ text-align: center;}




/* body {
	padding-top: 80px; 
}

li {
  display: flex;
  justify-content: center;
}

.gold {
  color: #FFD700;
} */

/* body 메뉴 폰트 및 사이즈 */
/* nav  {
  font-family: 'Times New Roman';
  font-size: 20px;
} */

 .community-container {
  max-width: 1200px;
  position: relative;
  margin: auto; 
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
  <a class="nav-item nav-link" href="/Community02" style="color: rgb(0, 0, 0)">이벤트</a>
  <a class="nav-item nav-link active" href="/Community03" style="background-color: rgb(200, 200, 200)">자료실</a>
  <a class="nav-item nav-link" href="/Community04" style="color: rgb(0, 0, 0)">FAQ</a>
  <a class="nav-item nav-link" href="/Community05" style="color: rgb(0, 0, 0)">후기글</a>
</nav>		
<br><br><br><br><br><br><br><br>
<!-- =============================여기서부터 내용==================================== -->
 	<div id="text-table">
	  	<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">Download</span></h1>
	  	</div>
	 <br><br>
	   <div class="community-container">
	       <c:if test="${not empty sessionScope.login.memid }">
        <c:if test="${sessionScope.login.memid eq 'admin' }">
        <a href="Community03WriteForm">새 글쓰기</a>     
        </c:if>
    </c:if>
        <hr>
<div class="faq_group">
    <div class="table">
      <div class="block">
        <li style="margin:auto; font-weight: bold; " >자료실 다운로드 목록</li>
      
      </div>
    </div>
      <hr>
    <c:forEach var="vo" items="${downList}" >
    <div class="table">
      <div class="block">
        <a href="Community03View?idx=${vo.idx}"style="color: black">
        
        <span style=" margin: 10px auto;">
        ${vo.title }
        </span>
     
        </a>  
      </div>
    </div>
      <hr>
    </c:forEach>
</div>
</div>
   <div class="container-footer" style="margin: 300px;"></div>

 <!-- 푸터 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/footer.jsp" />


</body>
</html>