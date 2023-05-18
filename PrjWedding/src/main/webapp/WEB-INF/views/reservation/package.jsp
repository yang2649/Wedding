<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- 헤드 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/head_resources.jsp" />


<style>
.reservation-container {
  max-width: 1200px;
  position: relative;
  margin: auto; 
}

</style>

<script>



//테이블 생성
function data_display(vo) {
   
   let html = '';

   
   vo.forEach(function(data, index) {    
	      html += '<div class="data-item">';
	      html += '<div class="event-text">';
	      html += '<hr>';
	      html += '<h3>' + data.package_title + '</h3>';
	      html += '<hr>';
	      html += '<p>' + data.package_cont + '</p>';
	      html += '<br>';
	      html += '<p>reservation</p>';
	      html += '<p>자세한 문의는 예약실로 상담예약 부탁드립니다. Tel. 041-520-9999</p>';  
	      html += '<p class="event-atag" style="text-align: right;">';
	      html += '<p> 가격 : ' + data.package_cost + '원</p>';   
	      html += '</div>';	   
	      html += ' <hr>';
	      html += '</div>';
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
         //   alert(data);
            let tableEl = document.getElementById('data-container');
           
            let html = data_display(data);
        
            $('#data-container').html(html); 
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
margin:12px ;
}

div{font-family: 'Cinzel', serif;}
 
h5{ text-align: center; font-weight: bold;} 
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
  <h3>보고싶은 패키지의 금액 구간대를 고르세요.</h3>
   <div id="moneyselect">
   <p>최소금액 :</p> &nbsp;&nbsp;<input type="number"  id="start" ><br>
   <p>최대금액 : </p><input type="number"  id="end" ><br> &nbsp;&nbsp;&nbsp;
  <input type="button" id="deptsearch" value="입력하기"/>

   </div>
  
 
   </table>
   <div id="data-container">
   
   
   
   </div>
   

</div>
   </div>
<div class="container-bottom" style="margin: 300px;"></div>
 <!-- 푸터 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/footer.jsp" />
</body>
</html>