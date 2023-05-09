<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입 완료</title>
<link rel="shortcut icon" href="/img/favicon.ico">
<link rel="stylesheet" href="/css/loginstyle.css" />
</head>
<body>
   <div class=confirm id="main">
   <p>회원가입이 완료되었습니다</p>
   <ul>
     <li>아이디 : ${ user.memid } </li>
     <button type="button" class="joinbutton" >확인</button>
   </ul>  
   </div>
   
   <script>
   const joinbutton = document.querySelector('.joinbutton');
   
   joinbutton.addEventListener('click', function () {
      window.opener.location.href="/";
      self.close();
     });
   
</script>
</body>
</html>















