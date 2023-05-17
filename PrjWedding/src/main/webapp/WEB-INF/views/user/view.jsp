<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/views/part_menu/head_resources.jsp" />

<style> 
.myinfocontainer {
  display: flex;
  justify-content: center; /* Horizontally center align */
  background-color: #FFFFFF;
}

.infocard {
  border: 1px solid #ccc;
  padding: 20px;
  border-radius: 25px;
  margin: 10px;
  width: 50rem;
  height: auto;
  display: flex;
  justify-content: center; /* Horizontally center align */
  align-items: center; /* Vertically center align */
}

.infotitle h2 {
  font-family: 'Castoro Titling', cursive;
  font-size: 80px;
  color: #2c3e50;
  text-align: center;
  margin-bottom: 20px;
}

.button {
   background-color: #FA8072;
    color: white;
    border: none;
    margin-top: 5%;
    padding: 12px 30px;
    border-radius: 20px;
    
  }
  
  .button:hover {
      background-color:#ff8080;
      transition: 0.7s;
  }
   .button:focus {
    outline-color: transparent;
    outline-style:solid;
    box-shadow: 0 0 0 4px #c0c0c0;
}

tr {
    margin-bottom: 120px;
    margin-top: 120px;
  }


</style>
</head>

<body>

<!-- 헤더 부분 분리 --> <!-- 문제없음 -->
<jsp:include page="/WEB-INF/views/part_menu/header.jsp" />


<!--유정 로그인 분리--> <!-- 문제있음 (여기만 안뜸) -->
<jsp:include page="/WEB-INF/views/part_menu/login.jsp" />


<!-- 슬라이드 메뉴 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/slidemenu.jsp" />

<!--카카오문의-->
<jsp:include page="/WEB-INF/views/part_menu/kakao.jsp" />



<!-- 내 정보 보기 -->	
<img src="./img/side_main.jpg" width="100%" height="100%" >
<nav class="nav nav-pills nav-justified" >
  <a class="nav-item nav-link active" href="/Mypage01" style="background-color: rgb(200, 200, 200)">내 정보 보기</a>
  <a class="nav-item nav-link" href="/Mypage02" style="color: rgb(0, 0, 0)">찜리스트</a>
  <a class="nav-item nav-link " href="/Mypage03" style="color: rgb(0, 0, 0)">내 견적서</a>
</nav>		

<br><br><br><br><br><br><br><br><br>

<div class="myinfocontainer" >
 <div class="infocard">
  <div id="main">
     <h2 class=infotitle>내 정보보기</h2>
     <table>
       <tr>
        <td>아이디</td> 
        <td>${ user.memid }</td> 
       </tr>
       <br>
       <tr>
        <td>암호</td> 
        <td>${ user.mempw }</td> 
       </tr>
       <tr>
        <td>이름</td> 
        <td>${ user.memname }</td> 
       </tr>
       <tr>
        <td>전화번호</td> 
        <td>${ user.memph }</td> 
       </tr>
       <tr>
        <td>이메일</td> 
        <td>${ user.email }</td> 
       </tr>
       <tr>
        <td>가입일</td> 
        <td>${ user.joindate }</td> 
       </tr>
       <tr>
        <td  colspan="2">
          <a class="btn btn-primary btn-sm button" href="/User/UpdateForm?memid=${ user.memid }">회원수정</a>&nbsp;&nbsp;
          <a class="btn btn-primary btn-sm button" href="/User/Delete?memid=${ user.memid }">회원삭제</a>&nbsp;&nbsp;
        </td>
       </tr>
     
     </table>
     </div>
     </div>
  </div>
 <br><br><br><br><br><br>
 
    <!-- 푸터 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/footer.jsp" />
  
</body>
</html>







