<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>

<style>
#table td: not([colspan]) {text-align:center;}
  #table th:nth-of-type(1) { width:100px; }
  #table th:nth-of-type(2) { width:500px; }
  #table th:nth-of-type(3) { width:100px; }
  #table th:nth-of-type(4) { width:120px; }

</style>
</head>
<body>
      <h2 style= "text-align: center;">공지사항</h2>
    
      <div id="table">
      <table>
         <tr>
           <th>No</th>
           <th>제목</th>
           <th>작성시간</th>
           <th>조회수</th>
         </tr>
         <c:forEach>
         <tr>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
         </tr>
         </c:forEach>      
      </table>
      
      </div>
</body>
</html>