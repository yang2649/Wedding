<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>List</title>
<link rel="shortcut icon" href="/img/favicon.ico">
<link rel="stylesheet" href="/css/common.css" />
</head>
<body>
   <div id="main">
   <h2>사용자 목록</h2>
   <c:forEach var="user" items="${ uList }">
   <ul>
     <li>아이디 : ${ user.memid }</li>
     <li>이름   : <a href="/User/View?memid=${ user.memid }">${ user.memname }</a></li>
     <li>가입일 : ${ user.joindate }</li>
   </ul>  
   </c:forEach>
   </div>
</body>
</html>















