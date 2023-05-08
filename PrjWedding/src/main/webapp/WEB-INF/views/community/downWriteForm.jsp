<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery.min.js"></script>

<script>
  $( function() {
	  let num = 1;
	  $('#btnAddFile').on('click', function(e) {
		  let tag = '<input type="file"  name="upfile' + num + '" class="upfile"/><br>';
		  $('#tdfile').append( tag );		  
		  num++;
	  })
  });
</script>
</head>
<body>
  <form action="/Community03Write" method="POST" 
        enctype="multipart/form-data"   >    
 <table id="table">   
   <tr>
     <th>제목</th>
     <td><input type="text" name="title" value="${vo.title }"/></td>
   </tr> 
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
        <input type="button"  id="btnAddFile" value="파일 추가(최대 100M byte)" /><br>
        <input type="file"  name="upfile"  class="upfile"/><br>
     </td>
   </tr> 
 <tr>     
     <td colspan="2">
     <input type="submit" value="작성" />
     </td>
   </tr> 
   </table>

</body>
</html>