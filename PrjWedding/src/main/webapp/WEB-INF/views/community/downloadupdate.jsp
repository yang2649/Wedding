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

<style>
   input                       { height: 32px;  }

   #table  td:nth-of-type(1)   { width : 150px;  text-align:center; height:50px;  }  
   #table  td:nth-of-type(2)   { width : 400px;  text-align:center; height:50px; }  
   #table  td:nth-of-type(3)   { width : 150px;  text-align:center; height:50px; }  
   #table  td:nth-of-type(4)   { width : 400px;  text-align:center; height:50px; }  
   
   
   #table  td[colspan]         { text-align: left;  }  
   
   input[type=text]  { width : 100%; }
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

<img src="./img/side_main.jpg" width="100%" height="100%" >
<nav class="nav nav-pills nav-justified" >
  <a class="nav-item nav-link" href="/Community01" style="color: rgb(0, 0, 0)">공지사항</a>
  <a class="nav-item nav-link" href="/Community02" style="color: rgb(0, 0, 0)">이벤트</a>
  <a class="nav-item nav-link active" href="/Community03" style="background-color: rgb(200, 200, 200)">자료실</a>
  <a class="nav-item nav-link" href="/Community04" style="color: rgb(0, 0, 0)">FAQ</a>
  <a class="nav-item nav-link" href="/Community05" style="color: rgb(0, 0, 0)">후기글</a>
</nav>		
<br><br><br><br><br><br><br><br>
<!-- 본문내용 -->

  <form action="/Community03Update " method="POST" 
        enctype="multipart/form-data"   >   
     <input type="hidden"  name="idx"     value="${ vo.idx     }" />
 
 
   <caption><h2> 자료실 정보 수정</h2></caption>
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
     <input type="text" name="title" class="name-txt" value="${ vo.title }"/>
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
  <div class="container-bottom" style="margin:300px;"></div>
 <!-- 푸터 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/footer.jsp" />

</body>
</html>