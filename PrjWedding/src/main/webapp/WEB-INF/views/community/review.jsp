<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>review</title>
<!-- 헤드 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/head_resources.jsp" />

<style>

button{
 color: black;
    text-decoration: none;
     font-family: 'Cinzel', serif;
 }  

/* li {
  display: flex;
  justify-content: center;
  font-family: 'Cinzel', serif;
  font-size: 20px;
} */

.card{ font-family: 'Cinzel', serif;}

/* body {
	padding-top: 80px;
}
 
/* li {
  display: flex;
  justify-content: center;
} */
/* 
.gold {
  color: #FFD700;
} */

/* body 메뉴 폰트 및 사이즈 */
nav  {
  font-family: 'Times New Roman';
  font-size: 20px;
}
 .community-container {
  max-width: 1200px;
  position: relative;
  margin: auto; 
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
   <a class="nav-item nav-link active" href="/Community05" style="background-color: rgb(200, 200, 200)">후기글</a>
</nav>			

<br><br><br><br><br><br><br><br>

<!-- ===================================================== -->
    	<div id="text-table" style="  max-width: 1200px;
  position: relative;
  margin: auto; ">
	  	<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">고객 후기</span></h1>
			<br><br>
     <button id="reviewWrite"> 후기카드 쓰기 </button>
			<hr>
	  	</div>
	  	
	  	
 <div class="community-container">
  <div class="row">
<c:forEach var="vo" items="${vo}">
<div class="card" style="width: 18rem; margin:20px 40px 20px 72px; ">
  <img class="card-img-top" src="/Pds/download/external/${ vo.sfilename }" alt="Card image cap" >
  <div class="card-body">
    <p class="card-text">${vo.cont}</p><br>
     <p class="event-atag" style="text-align: right;">
         <c:if test="${not empty sessionScope.login.memid }">
        <c:if test="${sessionScope.login.memid eq vo.memid or sessionScope.login.memid eq 'admin'}">    
        <a href="/Community05Delete?idx=${vo.idx}">내 카드 삭제하기</a>    
        </c:if>
    </c:if>
   </p>
  </div>
</div>
</c:forEach>
  </div>
  <div class="container-footer" style="margin:300px;" ></div>
</div>



 <!-- 푸터 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/footer.jsp" />  
	  
<script>
const reviewWriteEl = document.getElementById("reviewWrite")

 reviewWriteEl.onclick = function(e) {
  var memId = "${user.memid}";
  if (memId == null || memId == "") {
    e.preventDefault(); // 기본 동작 막기
    alert("로그인 후 이용해주세요.");
  } else {
    // memId가 존재하는 경우, 페이지 이동
    window.location.href = "/Community05WriteForm?memid=" + memId;
  }
};
</script>



</body>
</html>