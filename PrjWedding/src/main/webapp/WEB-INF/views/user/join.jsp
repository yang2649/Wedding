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
<style>
.confirm {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 100vh;
}
.confirm p, .confirm button {
  margin-bottom: 10px;
}

    .joinbutton {
    display: block;
    background-color: #FA8072;
    color: white;
    border: none;
    margin-top: 5%;
    padding: 12px 30px;
    border-radius: 20px;
    text-align: center;
    cursor: pointer;
  }
  
  .joinbutton:hover {
      background-color:#ff8080;
      transition: 0.7s;
  }
   .joinbutton:focus {
    outline-color: transparent;
    outline-style:solid;
    box-shadow: 0 0 0 4px #c0c0c0;
}
   

</style>

</head>
<body>
   <div class=confirm id="main">
   <p>회원가입이 완료되었습니다</p>
   <p>아이디 : ${param.memid}</p>
   <p>셀프 견적으로 결혼 견적서를 작성해보세요</p>
     <button type="button" class="joinbutton" >확인</button>  
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















