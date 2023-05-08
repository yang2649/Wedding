<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
     <a class="btn btn-primary btn-sm"
        href="/Pds/WriteForm?menu_id=${vo.menu_id}&bnum=0&lvl=0&step=0&nref=0&nowpage=1">새글쓰기</a><span></span>
     <a class="btn btn-primary btn-sm"
        href="/Pds/WriteForm?menu_id=${vo.menu_id}&idx=${vo.idx}&bnum=${vo.bnum}&lvl=${vo.lvl}&step=${vo.step}&nref=${vo.nref}&nowpage=${map.nowpage}">답글쓰기</a><span></span>
     <a class="btn btn-primary btn-sm"
        href="/Pds/UpdateForm?menu_id=${vo.menu_id}&idx=${vo.idx}&nowpage=${map.nowpage}">수정</a><span></span>
     <a class="btn btn-primary btn-sm"
        href="/Pds/Delete?menu_id=${vo.menu_id}&idx=${ vo.idx }&nowpage=${map.nowpage}">삭제</a><span></span>
     <a class="btn btn-primary btn-sm"
        href="/Pds/List?menu_id=${vo.menu_id}&nowpage=${map.nowpage}">목록으로</a><span></span>
     <a class="btn btn-primary btn-sm"
        href="javascript:history.back()">이전으로</a><span></span>
     <a class="btn btn-primary btn-sm"
        href="/">Home</a>
     </td>
   </tr> 
  </table>

  </div>
</body>
</html>