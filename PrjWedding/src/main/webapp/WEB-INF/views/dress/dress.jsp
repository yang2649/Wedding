<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>dress</title>

<!-- jquery 사용 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fslightbox/3.4.1/index.min.js"></script>

<!-- css 부분 사용 -->
<link rel="shortcut icon" href="/img/favicon.ico">
<link rel="stylesheet" href="./css/loginstyle.css">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/styles.css">
<link rel="stylesheet" href="/css/slide.css">
<link rel="stylesheet" href="/css/btn.css">

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<link rel="shortcut icon" href="/img/favicon.ico">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">


<!-- 글 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!-- 구글 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=EB+Garamond:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@700&family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Lora:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Castoro+Titling&display=swap" rel="stylesheet">


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
		<!-- 메인 메뉴 -->
		
<img src="/img/side_main.jpg" width="100%" height="100%" >
<nav class="nav nav-pills nav-justified" >
  <a class="nav-item nav-link" href="/Cooperative01" style="color: rgb(0, 0, 0)">Studio</a>
  <a class="nav-item nav-link active" href="/Cooperative02" style="background-color: rgb(200, 200, 200)">Dress</a>
  <a class="nav-item nav-link" href="/Cooperative03" style="color: rgb(0, 0, 0)">Hair & Make Up</a>
  <a class="nav-item nav-link" href="/Cooperative04" style="color: rgb(0, 0, 0)">Hanbok</a>
  <a class="nav-item nav-link" href="/Cooperative05" style="color: rgb(0, 0, 0)">Invitation</a>
</nav>	


<a class="dribbble" href="https://dribbble.com/shots/7441241-Button-Hover-Effects" target="_blank"><img src="https://cdn.dribbble.com/assets/dribbble-ball-mark-2bd45f09c2fb58dbbfb44766d5d1d07c5a12972d602ef8b32204d28fa3dda554.svg" alt=""></a>
<br><br><br><br>
	<div id="text-table"><br>
		<h1 style="text-align: center; font-size: 15px;">
	<a href="/Cooperative02"><button type="button" class="button">WEDDING</button></a>
	<a href="/Cooperative09"><button type="button" class="button" >STUDIO</button></a><br><br>
	<div id="text-table">
		<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">Studio Dress</span></h1>
	</div> <br><br>
</div>
 <div id="dress">
 <form action="/GGim" method="Post">
  <div>     
   <input type="hidden"  name="memid"   value="${ map.memid }" />
   <input type="hidden"  name="dressid" />
   <c:forEach var="dress" items="${ dressList }" >
      <div id="dressimg">
        <img src="${dress.dressimage}"  />
        <p style="font-family: 'Noto Sans KR', sans-serif; font-size: 25px; ">${dress.dressname}</p> 
        <p style="font-family: 'Noto Sans KR', sans-serif; font-size: 15px; ">${dress.dressprice} ₩</p> 
        <div style="text-align:center;">
        <input class="dressbtn" type="button" value="찜하기" data-dressid="${dress.dressid }">
        </div>
      </div>    
   </c:forEach>
     
</div>
  
   
    
  
  
 </form>
   </div>
   
    
  
  
 <!-- 푸터 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/footer.jsp" />
    
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


    /*
    const form     = document.querySelector('form');
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
    const  dressid = document.querySelector('[name=dressid]');
    btns.forEach(function(btn, index) {
    	btn.addEventListener('click', function(e) {    		
    		
    		dressid.value = this.dataset.dressid; 
    		form.action = '/GGim';
    		form.submit();
    		
    	});
    })
    
    
    
refreshFsLightbox();
    
</script>
</body>
</html> 

