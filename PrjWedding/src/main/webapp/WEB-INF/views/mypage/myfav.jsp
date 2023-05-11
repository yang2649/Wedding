<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>   

<!DOCTYPE html>
<html>
<style>
.card {
  border: 1px solid #ccc;
  padding: 20px;
  border-radius: 25px;
  margin:10px;
  width: 18rem;
}

.card-img {
  width: 250px;
  height: auto;
  border-radius: 25px;
} 

</style>
    
<!-- 찜목록 --> 
<h2>찜 목록</h2>
 <c:forEach var="mypage" items="${favList}">
  <div class="container" style="margin: auto; padding:15px 15px 15px 120px;">
   <div class="card">
    <div class="cardBody">
    <img class="card-img" src="${ mypage.dressimage }" alt="dress image error">
    </div>
    <div class="cardFotter">
    <p>드레스 이름  : ${ mypage.dressname }</p>
    <p>드레스 가격  : ${ mypage.dressprice }</p>
    </div>
   </div>
 </div>
  </c:forEach>
</body>
</html>



