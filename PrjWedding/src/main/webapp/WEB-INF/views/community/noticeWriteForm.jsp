<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 헤드 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/head_resources.jsp" />

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
 <div class="container-top" style="margin: 200px;"></div>
		<!-- 메인 메뉴 -->
  <form action="/Community01Write" method="POST" >
 <table id="table">   
   <tr>
     <th>제목</th>
     <td><input type="text" name="title" value="${ writer }"/></td>
   </tr> 
   <tr>
     <th>글쓴이</th>
     <td><input type="text" name="writer" value="관리자" /></td>
   </tr> 
   <tr>
     <th>내용</th>
     <td><textarea name="cont" maxlength="1000">${ cont }</textarea></td>
   </tr> 
 <tr>     
     <td colspan="2">
     <input type="submit" value="작성" />
     </td>
   </tr> 
   </table>

 <!-- 푸터 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/footer.jsp" />  
	  
</body>
</html>