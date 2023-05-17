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
   #table  td:nth-of-type(4)   { width : 400px;  text-align: left;  height:50px;  }  
   th { width: 50px;  text-align: center;}
    #table  th:nth-of-type(4) { text-align: left;   } 
   #table  td[colspan]         { text-align: left;  }  
   
   input[type=text]  { width : 100%; margin:auto; }
   textarea          { width : 100%; height : 600px; padding:10px;} 
   tdfile {text-align: left;}

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
		<!-- 메인 메뉴 -->
<div class="container-top" style=" margin:170px;" ></div>
<form action="/Community05Write" method="POST" 
        enctype="multipart/form-data"   >    
        <h2>후기 카드 쓰기</h2>
   <input type="hidden"  name="memid" value="${ map.memid }" />
 <table id="table">   
    <tr>
     <th>글쓴이</th>
     <td><input type="text" name="writer" value="${ vo.writer }" /></td>
   </tr> 
   <tr>
     <th>내용</th>
     <td><textarea name="cont" maxlength="1000">${ vo.cont }</textarea></td>
   </tr> 
   <tr>
     <th>파일</th>
     <td id="tdfile">
       
        <input type="file"  name="upfile"  class="upfile"/><br>
     </td>
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