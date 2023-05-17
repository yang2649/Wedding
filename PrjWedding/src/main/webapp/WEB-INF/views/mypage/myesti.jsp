<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/views/part_menu/head_resources.jsp" />

<style>
 .myesticontainer {
      display: flex;
      justify-content: center;
      background-color: #FFFFFF;
      flex-wrap: wrap;
      gap: 20px;
    }

    .esticard {
      border: 1px solid #ccc;
      padding: 20px;
      border-radius: 25px;
      width: 30rem;
      height: 400px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      margin: auto;
    }

    .estititle h2 {
      font-family: 'Castoro Titling', cursive;
      font-size: 80px;
      color: #2c3e50;
      text-align: center;
      margin-bottom: 30px;
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
      background-color: #ff8080;
      transition: 0.7s;
    }

    .button:focus {
      outline-color: transparent;
      outline-style: solid;
      box-shadow: 0 0 0 4px #c0c0c0;
    }

    tr {
      margin-bottom: 120px;
      margin-top: 120px;
    }
    
   p {
  text-align: center;
  margin: 10px;
  font-family: 'Noto Sans KR', sans-serif;
  font-size: 18px;
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
  <a class="nav-item nav-link" href="/Mypage01"  style="color: rgb(0, 0, 0)">내 정보 보기</a>
  <a class="nav-item nav-link" href="/Mypage02" style="color: rgb(0, 0, 0)">찜 목록</a>
  <a class="nav-item nav-link active" href="/Mypage03" style="background-color: rgb(200, 200, 200)">내 견적서</a>
</nav>		


<p style ="font-size:40px; color:orange; margin-top:250px;"> 내 견적서 </p>


<!-- 내 견적서 -->

<div class="myesticontainer">
  <c:forEach var="mypage" items="${estiList}">
    <div class="col-4">
      <div class="row">
        <div class="col-sm-12">
         <div class="esticard">
          <h2 class=estititle>${ mypage.estiname }</h2>
           <form action="/Myesti/Delete" method="POST">
           <input type="hidden" name="estiid" value="${mypage.estiid}" />
           <table>
      		 <tr>
      		 <td>예약일 : </td> 
      		 <td>${ mypage.resdate }</td> 
      		 </tr>
      		 <tr>
      		 <td>예약시간 : </td> 
      		 <td>${ mypage.restime }</td> 
     		 </tr>
     		 <tr>
       		 <td>예상 인원수 : </td> 
        	 <td>${ mypage.guestnum }</td> 
      		 </tr>
       		 <tr>
        	 <td>홀 이름 : </td> 
             <td>${ mypage.hallname }</td>
             </tr>
             <tr>
        	 <td>뷔페 타입 : </td> 
             <td>${ mypage.cateringtype }</td>
             </tr>
             <tr>
        	 <td>스튜디오 이름 : </td> 
             <td>${ mypage.studioname }</td> 
             </tr>
             <tr>
        	 <td>본식 드레스 이름 :   </td> 
             <td>${ mypage.dressname }</td> 
             </tr>
             <tr>
        	 <td>총 가격 : </td> 
             <td>${ mypage.totalcost }</td> 
             </tr>
             <tr>
             <td>
             <a class="btn btn-primary btn-sm button" href="/Myesti/Delete?estiid=${ mypage.estiid }">삭제</a>&nbsp;&nbsp;
             </td>
             </tr>
            </table>
           </form>
          </div>
        </div>
        </div>
        </div>
       </c:forEach>
      </div>
 <br><br><br><br><br><br>
  
  
  
    <!-- 푸터 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/footer.jsp" />
</body>
</html>






