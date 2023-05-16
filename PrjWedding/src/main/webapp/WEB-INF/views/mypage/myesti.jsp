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
  flex-wrap: wrap;
  justify-content: space-between;
  gap: 20px;
  width: 1200px;
  height: 2000px;
  margin-left: 20px;
}

.esticard {
  padding: 20px;
  border-radius: 10px;
  background-color: #FFFFFF;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}

.infotitle {
  font-size: 18px;
  font-weight: bold;
  margin-bottom: 10px;
}

.esticontent {
  flex-grow: 1; /* 내용 영역이 남은 공간을 모두 차지하도록 설정 */
}

.table-container {
  width: 100%;
  margin-bottom: 10px;
}

.table-container table {
  width: 100%;
}

.table-container td {
  padding: 5px 0;
}

.button-container {
  text-align: right;
}

.button-container a {
  margin-left: 10px;
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


<!-- 내 견적서 -->

<div class="myesticontainer">
  <c:forEach var="mypage" items="${estiList}">
    <div class="col-4"> 
     <div class="esticard">
       <h2 class=estititle>${ mypage.estiname }</h2>
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
        	 <td>본식 드레스 이름 : </td> 
             <td>${ mypage.dressname }</td> 
             </tr>
             <tr>
        	 <td>총 가격 : </td> 
             <td>${ mypage.totalcost }</td> 
             </tr>
             <tr>
             <td>
             <a class="btn btn-primary btn-sm" href="#">확인</a>&nbsp;&nbsp;
             <a class="btn btn-primary btn-sm" href="#">삭제</a>&nbsp;&nbsp;
             </td>
             </tr>
          </table>
          </div>
        </div>
       </c:forEach>
      </div>

</body>
</html>



