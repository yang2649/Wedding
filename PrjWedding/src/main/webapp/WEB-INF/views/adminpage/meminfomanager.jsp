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
   <table>
     <thead>
       <tr>
         <th>아이디</th>
         <th>비밀번호</th>
         <th>이름</th>
         <th>연락처</th>
         <th>이메일</th>
         <th>가입일</th>
         <th>회원등급</th>
       </tr>
     </thead>
     <tbody>
       <c:forEach var="user" items="${ mList }">
       <tr>
         <td>${ user.memid    }</td>
         <td>${ user.mempw    }</td>
         <td><a href="/Adminpage/Adminview?memid=${ user.memid }">${ user.memname  }</td>
         <td>${ user.memph    }</td>
         <td>${ user.email    }</td>
         <td>${ user.joindate }</td>
         <td>${ user.lvl      }</td>
       </tr>
       </c:forEach>
     </tbody>
   </table>
   </div>
</body>
</html>















