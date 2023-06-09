<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 헤드 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/head_resources.jsp" />
<style>

  #table td:first-child  { width : 15%;  height : 50px;  text-align : center; }
  #table td:nth-child(2) { width : 35%;  height : 50px;  text-align : center; }
  #table td:nth-child(3) { width : 15%;  height :  50px; text-align : center; }
  #table td:last-child   { width : 35%;  height : 50px;  text-align : center; }
  
  #table tr:nth-child(4) { height : 600px;,
                           vertical-align : top; }

 
     table {
     width:900px;
   border : 1px solid black;
   border-collapse : collapse;
   margin:auto;
   }  
   tr,td{
   border : 1px solid black;
   border-collapse : collapse;
  
   }  
   h2{ text-align:center; margin:30px;}
</style>
</head>
<body>
<!-- 헤더 부분 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/header.jsp" />

  
<!--유정 로그인 분리--> <!-- 이 부분만 안뜸  -->
<jsp:include page="/WEB-INF/views/part_menu/login.jsp" />


<!-- 슬라이드 메뉴 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/slidemenu.jsp" />
<!--카카오문의-->
<jsp:include page="/WEB-INF/views/part_menu/kakao.jsp" />
		<!-- 메인 메뉴 -->
	<img src="./img/side_main.jpg" width="100%" height="100%" >
<nav class="nav nav-pills nav-justified" >
  <a class="nav-item nav-link" href="/Community01" style="color: rgb(0, 0, 0)">공지사항</a>
  <a class="nav-item nav-link" href="/Community02" style="color: rgb(0, 0, 0)">이벤트</a>
  <a class="nav-item nav-link active" href="/Community03" style="background-color: rgb(200, 200, 200)">자료실</a>
  <a class="nav-item nav-link" href="/Community04" style="color: rgb(0, 0, 0)">FAQ</a>
  <a class="nav-item nav-link" href="/Community05" style="color: rgb(0, 0, 0)">후기글</a>
</nav>		
<br><br><br><br><br><br><br><br>
	 
      <div id="main">

     
  <h2>자료실 상세보기</h2>
    
  <table id="table">   
   <tr>
     <td class="center">글번호</td>
     <td class="center">${ vo.idx  }</td>
     <td class="center">조회수</td>
     <td class="center">${ vo.readcount  }</td>
   </tr> 
   <tr>
     <td class="center">작성자</td>
     <td class="center">${ vo.writer }</td>
     <td class="center">작성일</td>
     <td class="center">${ vo.regdate }</td>
   </tr> 
   <tr>
     <td class="center">제목</td>
     <td colspan="3" style="text-align:left">${ vo.title     }</td>    
   </tr> 
   <tr>
     <td class="center">내용</td>
     <td colspan="3" style="text-align:left">${ vo.cont }</td>
   </tr>
      
   <tr>
     <td class="center">첨부파일</td>
     <td colspan="3" style="text-align:left;padding:30px 10px; ">
   	    <c:forEach var="file"  items="${ fileList }" >
   	       <div>
   	         <%-- <a href="<c:out value="/Pds/download/external/${ file.sfilename }" />"> --%>
   	         <a href="/Pds/download/external/${ file.sfilename }">
   	           ${ file.filename }
   	         </a>   	       
   	       </div>
   	    </c:forEach>  
     </td>
   
   </tr>   
   <tr>     
     <td colspan="4">
        <c:if test="${not empty sessionScope.login.memid }">
        <c:if test="${sessionScope.login.memid eq 'admin' }">
     <a class="btn btn-primary btn-sm"
        href="/Community03UpdateForm?idx=${vo.idx }">수정</a><span></span>
     <a class="btn btn-primary btn-sm"
        href="/Community03Delete?idx=${vo.idx }">삭제</a><span></span>
        </c:if>
    </c:if>
     <a class="btn btn-primary btn-sm"
        href="/Community03">목록으로</a><span></span>
     <a class="btn btn-primary btn-sm"
        href="javascript:history.back()">이전으로</a><span></span>
     <a class="btn btn-primary btn-sm"
        href="/">Home</a>
     </td>
   </tr> 
  </table>

  </div>
  <div class="container-bottom" style="margin: 300px;"></div>
   <!-- 푸터 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/footer.jsp" />
</body>
</html>