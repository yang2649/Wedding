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
  
    .button {
    display: block;
    background-color: #FA8072;
    color: white;
    border: none;
    margin-top: 5%;
    padding: 12px 30px;
    border-radius: 20px;
    text-align: center;
    cursor: pointer;
    right : 80px;
  }
  
  .button:hover {
      background-color:#ff8080;
      transition: 0.7s;
  }
   .button:focus {
    outline-color: transparent;
    outline-style:solid;
    box-shadow: 0 0 0 4px #c0c0c0;
}
   
</style>

<body>
 <div class="join-container"> 
  <div class="join" id="main">
  <h2 class="jointitle">Sign up</h2>
  <form action="/User/Write" method="POST" >
  <table>
   <tr>
     <th>아이디</th>
     <td><input type="text" name="memid" /></td>
   </tr> 
   <tr>
     <th>비밀번호</th>
     <td><input type="password" name="mempw" id="passwd" /></td>
   </tr> 
   <tr>
     <th>비밀번호확인</th>
     <td><input type="password" id="pwd2" /></td>
   </tr> 
   <tr>
     <th>이름</th>
     <td><input type="text" name="memname" /></td>
   </tr> 
   <tr>
     <th>전화번호</th>
     <td><input type="text" name="memph" /></td>
   </tr> 
   <tr>
     <th>이메일</th>
     <td><input type="text" name="email" /></td>
   </tr> 
   <tr>     
     <td colspan="2">
     <input type="submit" class="btn btn-primary btn-sm button" value="가입" />
     </td>
   </tr> 
  </table>
 </form>
 </div>
 </div>
 


</body>
</html>








