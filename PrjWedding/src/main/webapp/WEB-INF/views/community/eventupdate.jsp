<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 헤드 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/head_resources.jsp" />

<link rel="stylesheet" href="./css/common.css" />
<script src="https://code.jquery.com/jquery.min.js"></script>
<script>


</script>

<style>
   input                       { height: 30px;  }

   #table  td:nth-of-type(1)   { width : 150px;  text-align:center;  }  
   #table  td:nth-of-type(2)   { width : 400px;  text-align:center;  }  
   #table  td:nth-of-type(3)   { width : 150px;  text-align:center;  }  
   #table  td:nth-of-type(4)   { width : 400px;  text-align:center;  }  
   
   #table  td[colspan]         { text-align: left;  }  
   
   input[type=text]  { width : 100%; }
   textarea          { width : 100%; height : 400px; padding:10px;} 
      
   table {margin:auto;}   
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
  <form action="/Community02Update?idx=${vo.idx}" method="POST" 
        enctype="multipart/form-data"   >   
     <div class="container-top" style="margin: 170px;"></div>

 
   <caption><h2>${ menuname } 자료실 정보 수정</h2></caption>
  <table id="table">   
   <tr>
     <td>글번호</td>
     <td>${ vo.idx }</td>
     <td>작성일</td>
     <td>${ vo.regdate }</td>
   </tr>
   <tr>
     <td>작성자</td>
     <td>${ vo.writer }</td>
     <td>조회수</td>
     <td>${ vo.readcount }</td>
   </tr>
   <tr>
     <td>제목</td>
     <td colspan="3">
     <input type="text" name="title" value="${ vo.title }"/>
     </td>
   </tr> 
   <tr>
     <td>내용</td>
     <td colspan="3">
     <textarea name="cont" maxlength="1000">${ vo.cont }</textarea>
     </td>
   </tr> 
  
     
   <tr>     
     <td colspan="4">
     <input type="submit" value="작성" />
     </td>
   </tr> 
  </table>
   <div class="container-footer" style="margin: 300px;"></div>
<!-- 푸터 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/footer.jsp" />  
	  

</body>
</html>