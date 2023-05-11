<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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

</body>
</html>