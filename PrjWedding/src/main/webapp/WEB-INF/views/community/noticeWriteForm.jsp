<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 헤드 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/head_resources.jsp" />
<style>

   #table  td:nth-of-type(1)   { width : 150px;  text-align:center; height:50px;  }  
   #table  td:nth-of-type(2)   { width : 400px;  text-align:center; height:50px; }  
   #table  td:nth-of-type(3)   { width : 150px;  text-align:center; height:50px; }  
   #table  td:nth-of-type(4)   { width : 400px;  text-align:center; height:50px; }  
   th { width: 50px;  text-align: center;}
   
   #table  td[colspan]         { text-align: left;  }  
   
   input[type=text]  { width : 100%; margin:auto; }
   textarea          { width : 100%; height : 700px; padding:10px;} 
   

     table {
     width:900px;
   border : 1px solid black;
   border-collapse : collapse;
   margin:auto;
   }  
   tr,td{
   border : 1px solid black;
   border-collapse : collapse;
  
   }
   
   h2{ text-align: center; margin:30px;}  


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
 <div class="container-top" style="margin: 200px;"></div>
		<!-- 메인 메뉴 -->
  <form action="/Community01Write" method="POST" >
  <h2>공지사항 글쓰기</h2>
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
<div class="container-bottom" style=" margin:300px;" ></div>
 <!-- 푸터 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/footer.jsp" />  
	  
</body>
</html>