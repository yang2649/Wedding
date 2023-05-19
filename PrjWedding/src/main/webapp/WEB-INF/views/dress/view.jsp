<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Green Wedding</title>
<!-- 잡다한 헤드 부분 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/head_resources.jsp" />
<!-- css 부분 사용 -->
<link rel="shortcut icon" href="/img/favicon.ico">
<link rel="stylesheet" href="/css/btn.css">
<style>
/* body 메뉴 폰트 및 사이즈 */
nav  {
  font-family: 'Times New Roman';
  font-size: 20px;
}

p {
  text-align: center;
  margin: 10px;
  font-family: 'Noto Sans KR', sans-serif;
  font-size: 18px;
}

#root img {
  display: block;
  margin: 5px;
  width: 394px;
  height: 250px;
} 

#text-table h1 {
  font-family: 'Noto Sans KR', sans-serif;
}
#dress{
display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
     width:1600px;
     margin: auto;
     
}

#dress img{
    margin-top: 30px;
    width:450px;
}

#dress [type=submit] {
   color:red;
}

#dressimg{

	position: relative;
    width: 430px; // 자를 사이즈를 명시해준다.
    height: 100px;
    overflow: hidden;
	display: inline-block;
	margin : 10px;
	margin-left : 4%;
	text-align: center;
	
}

.dressbtn{
  background-color: #FA8072 ;
  color: white;
  border: none;
  margin-top: 5%;
  padding: 12px 30px;
  border-radius: 20px;
}


</style>
</head>


<body>


<!-- 헤더 부분 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/header.jsp" />

  
<!--유정 로그인 분리--> <!-- 이 부분만 안뜸  -->
<jsp:include page="/WEB-INF/views/part_menu/login.jsp" />


<!-- 슬라이드 메뉴 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/slidemenu.jsp" />
<img src="./img/side_main.jpg" width="100%" height="100%">
<nav class="nav nav-pills nav-justified" >
  <a class="nav-item nav-link" href="/Mypage01" style="color: rgb(0, 0, 0)">내정보보기</a>
  <a class="nav-item nav-link active" href="/Mypage02" style="background-color: rgb(200, 200, 200)">찜목록</a>
  <a class="nav-item nav-link" href="/Mypage03" style="color: rgb(0, 0, 0)">내견적서</a>
</nav>
<body>


        <p style ="font-size:40px; color:orange; margin-top:250px;"> 찜목록 </p>
  <div id="dress">
  
  
  <form action="/favDelete" method="Post">
    <input type="hidden"  name="memid"   value="${sessionScope.login.memid}" />
    <input type = "hidden" name="favid"/>
   <c:forEach var="fav" items="${ favList }" >
   
      <div id="dressimg">
    <img src="${fav.dressimage}" />
    <p>${ fav.dressname }</p> 
     <div style="text-align:center">
<input class ="dressbtn"type="button" value="찜 삭제" data-dressid="${fav.favid }">
</div>
        </div>
   </c:forEach>
  </form>
  </div>
  
  





    
<script>


// 사진 클릭시 모달창
 function wrap(el) {
      const wrappingElement = document.createElement('a');
      wrappingElement.href = el.src;
      wrappingElement.setAttribute('data-fslightbox', 'gallery');
      el.parentElement.insertBefore(wrappingElement, el);
      wrappingElement.appendChild(el);
    }

    document.querySelectorAll('#root img').forEach(el => {
      wrap(el);
    });
    document.querySelectorAll('#root2 img').forEach(el => {
      wrap(el);
    });

    /*    const form     = document.querySelector('form');
    form.addEventListener('submit', function(e) {
    	e.preventDefault();
    	e.stopPropagation();
    	
    	let btn = e.target
    	
    	console.dir(this);
    	console.dir(btn);
    	alert('ㅋㅋㅋ' + this.elements[index].dataset.dressid);
    })
    */
    const  btns    = document.querySelectorAll('[type=button]');
    const  form    = document.querySelector('form');
    const  dressid = document.querySelector('[name=favid]');
    btns.forEach(function(btn, index) {
    	btn.addEventListener('click', function(e) {    		
    		//console.log(this);
    	//	alert(this.dataset.dressid);
	alert("찜 삭제 되었습니다");
    		
    		dressid.value = this.dataset.dressid; 
    		form.action = '/favDelete';
    		form.submit();
    		
    	});
    })
    
    
refreshFsLightbox();
    
</script>
</body>
</html> 

