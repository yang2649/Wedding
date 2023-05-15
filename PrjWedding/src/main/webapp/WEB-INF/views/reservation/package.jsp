<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- css 부분 사용 -->
<link rel="shortcut icon" href="/img/favicon.ico">
<link rel="stylesheet" href="./css/loginstyle.css">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/styles.css">
<link rel="stylesheet" href="/css/slide.css">

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
.reservation-container {
  max-width: 1200px;
  position: relative;
  margin: auto; 
}

</style>

<script>





//테이블 생성
function data_display(data) {
   
   let html = '';

   
   data.forEach(function(vo, index) {    
	      html += '<div class="event-parent">';
	      html += '<div class="event-image"><img src="Pds/download/external/" width="300px" high="300px"></div>';
	      html += '<div class="event-text">';
	      html += '<hr>';
	      html += '<h3>' + vo.package_title + '</h3>';
	      html += '<hr>';
	      html += '<p>' + vo.package_cont + '</p>';
	      html += '<br>';
	      html += '<p>reservation</p>';
	      html += '<p>자세한 문의는 예약실로 상담예약 부탁드립니다. Tel. 041-520-9999</p>';  
	      html += '</div>';	   
	      html += '</div>';
	      html += '<p class="event-atag" style="text-align: right;">';
	      html += '<p> 가격 : ' + vo.package_cost + '원</p>';   
	      html += ' <hr>';
	   });
   

   return html;
   
}









//body 생성되고
 window.onload = function() {
   
   let startdateEl = document.getElementById("start")
   let enddateEl   = document.getElementById("end")
  
   // 검색 후 테이블 생성
   let deptsearchEl = document.getElementById('deptsearch')
   deptsearchEl.onclick = function(e) {
      let startEl = document.getElementById("start")
      let endEl = document.getElementById("end")
      
      let start = startEl.value;
      let end = endEl.value;
         
      
      $.ajax({
         url: "/Reservation02/List",
         data : { search: $('#search').val(),
        	   start: start,
               end: end
        	 },
         type: "POST", 
               
         success : function(data){
            console.log(data);
            alert(data);
            let tableEl = document.getElementById('table');
           
            let html = data_display(data);
        
            $('#table').html(html); 
            },
         error :function(xhr){
            console.log(xhr);
            alert('에러:' + xhr.status + '' + xhr.textStatus )
            }
         
      }); 
   
     }
   }




</script>
<style>
table {
  width: 95%;
  border-collapse: collapse;
  margin : 0 0 0 30px;
}

th, td {
  padding: 8px;
  text-align: center;
  border-bottom: 1px solid #ddd;
}

th {
  background-color: #f2f2f2;
}

tr:hover {
  background-color: #f5f5f5;
}

#moneyselect{
display:flex;
}

p{
marging:auto;
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
  <a class="nav-item nav-link" href="/Reservation01" style="color: rgb(0, 0, 0)">견적서</a>
  <a class="nav-item nav-link active" href="/Reservation02" style="background-color: rgb(200, 200, 200)">Package</a>

</nav>	

<br><br><br><br>
	<div id="text-table">
		<h1 style="text-align: center;">
			<span style="color: rgb(191, 131, 101);" ">Package</span></h1>
				 <br><br>
	  	</div>
	   <div class="reservation-container">	  	
<div class="customer-notice">  	
  <hr>
   <div id="moneyselect">
   <p>최소금액 :</p> <input type="number"  id="start"><br>
   <p>최대금액 : </p><input type="number"  id="end"><br>
  <input type="button" id="deptsearch" value="보기"/>

   </div>
  
 
   </table>
   <div id="table">
   
   
   
   </div>
   

</div>
   </div>
<div class="container-bottom" style="margin: 300px;"></div>

</body>
</html>