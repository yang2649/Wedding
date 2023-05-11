<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/common.css" />

<style>
   input                       { height: 32px;  }

   #table  td:nth-of-type(1)   { width : 150px;  text-align:center;  }  
   #table  td:nth-of-type(2)   { width : 400px;  text-align:center;  }  
   #table  td:nth-of-type(3)   { width : 150px;  text-align:center;  }  
   #table  td:nth-of-type(4)   { width : 400px;  text-align:center;  }  
   
   #table  td[colspan]         { text-align: left;  }  
   
   input[type=text]  { width : 100%; }
   textarea          { width : 100%; height : 400px; padding:10px;} 
      
</style>
</head>
<body>
  <form action="/Community03Update " method="POST" 
        enctype="multipart/form-data"   >   
     <input type="hidden"  name="idx"     value="${ vo.idx     }" />
 
 
  <table id="table">   
   <caption><h2> 자료실 정보 수정</h2></caption>
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

</body>
</html>