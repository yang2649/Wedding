<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>   

<!DOCTYPE html>
<html>
<head>
<!-- 헤드 부분 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/head_resources.jsp" />

<style>
/* CSS 스타일 코드 */

.myinfocontainer {
  display: flex;
  justify-content: center;
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
  justify-content: center;
  align-items: center;
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

<!-- 헤더 부분 분리 --> <!-- 깨짐  -->
<jsp:include page="/WEB-INF/views/part_menu/header.jsp" />

<!--유정 로그인 분리--> <!-- 깨짐 --> 
<jsp:include page="/WEB-INF/views/part_menu/login.jsp" />

<!-- 슬라이드 메뉴 분리 --> <!-- 깨짐 -->
<jsp:include page="/WEB-INF/views/part_menu/slidemenu.jsp" />


<!--카카오문의--> <!-- 문제없음 -->
<jsp:include page="/WEB-INF/views/part_menu/kakao.jsp" />


<br><br><br><br><br><br><br><br><br> <!-- 안하면 헤더 부분에 가려저서 썻습니다 -->
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
  <h2 class=infotitle>정보 수정</h2>
  <form action="/User/Update" method="POST" >

  <table>
   <tr>
     <th>아이디</th>
     <td><input type="text" name="memid" value="${ user.memid }" readonly /></td>
   </tr>
   <tr>
     <th>비밀번호</th>
     <td><input type="password" name="mempw" id="pwd1"  /></td>
   </tr>
   <tr>
     <th>비밀번호 확인</th>
     <td><input type="password" id="pwd2" /></td>
   </tr>
   <tr>
     <th>이름</th>
     <td><input type="text" name="memname" value="${ user.memname }" /></td>
   </tr>
   <tr>
     <th>전화번호</th>
     <td><input type="text" name="memph"  value="${ user.memph }" /></td>
   </tr>
   <tr>
     <th>이메일</th>
     <td><input type="text" name="email"  value="${ user.email }" /></td>
   </tr>
   <tr>
     <th>가입일</th>
     <td><input type="indate"  name="joindate" value="${ sessionScope.login.joindate }" readonly /></td>
   </tr>
   <tr>
     <td colspan="2">
     <input class="btn btn-primary btn-sm button" type="submit" value="수정" />
     </td>
   </tr>
  </table>
  </form>
  </div>
  </div>
  </div>
<br><br><br><br><br><br>

<!-- 푸터 분리 --> <!-- 인스타 아이콘이 깨짐 -->
<jsp:include page="/WEB-INF/views/part_menu/footer.jsp" />

<script>
let form = document.querySelector('form');

let abtnEl = document.getElementById('abtn');
abtnEl.addEventListener('click', function(e) {
  e.preventDefault();
  e.stopPropagation();
  alert('a click');
  let passwd1El = document.getElementById('pwd1');
  let passwd2El = document.getElementById('pwd2');

  if (passwd1El.value != passwd2El.value) {
    e.preventDefault();
    e.stopPropagation();
    alert('비밀번호가 일치하지 않습니다');
  }
  // sform.action = '';
  form.submit(); // js 이 함수는 onsubmit 이벤트를 발생시키지 않는다
});

form.onsubmit = function(e) {
  let passwd1El = document.getElementById('pwd1');
  let passwd2El = document.getElementById('pwd2');

  if (passwd1El.value != passwd2El.value) {
    e.preventDefault();
    e.stopPropagation();
    alert('비밀번호가 일치하지 않습니다');
  }
};
</script>
</body>
</html>