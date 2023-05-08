<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원 등록</title>
<link rel="shortcut icon" href="/img/favicon.ico">
<link rel="stylesheet" href="/css/loginstyle.css">
</head>
<style>

  th      { width : 20%; text-transform: uppercase;  margin-bottom: 5px; }  
  td      { display: block; width : 80%; font-family: 'Noto Sans KR', sans-serif;  }  
  input[type=text] ,  input[type=password], input[type=email]  { width:100%; }
   
</style>

<body>
 <div class="join-container"> 
  <div class="join" id="main">
  <h2 class="jointitle">Sign up</h2>
  <form action="/User/Write" method="POST" >
  <table>
   <tr>
     <th>아이디</th>
     <td><input type="text" name="userid" /></td>
   </tr> 
   <tr>
     <th>비밀번호</th>
     <td><input type="password" name="passwd" id="passwd" /></td>
   </tr> 
   <tr>
     <th>비밀번호 확인</th>
     <td><input type="password" id="pwd2" /></td>
   </tr> 
   <tr>
     <th>이름</th>
     <td><input type="text" name="username" /></td>
   </tr> 
   <tr>
     <th>이메일</th>
     <td><input type="text" name="email" /></td>
   </tr> 
   <tr>
     <th>전화번호</th>
     <td><input type="text" name="phone" /></td>
   </tr> 
   <tr>     
     <td colspan="2">
     <input type="submit" value="가입" />
     </td>
   </tr> 
  </table>
 </form>
 </div>
 </div>
</body>
</html>








