<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %> 



<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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


<!-- 글 폰트 --><link rel="preconnect" href="https://fonts.googleapis.com">

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


.all-container {
 display: flex;
 background-color: #FFFFFF;
 border: 1px solid black;
 max-width: 1400px;
 position: relative;
 margin: auto; 
}

.input-container {
  display: flex;
  flex-direction: row;
  background-color: #FFFFFF;
  border: 1px solid black;
  width: 70%;
  bottom: 0;   /* 아래쪽 끝까지 고정 */
  
}

.input-form {
  flex-grow: 1;
  padding: 20px;
}

.hall-container {
 width: 900px;
 height: 700px;
}


.hallcard, .cateringcard {
 display: flex;
 bheight: 800px;
 padding: 20xp;
 margin: 20px 0;
 border: 3px solid black;
 border-radius: 10px;
 width: 300px;
 height: 250px;
 display: inline-block;
 vertical-align: top;
 margin-right: 20px;
 
}

.card-img {
  width: 250px;
  height: auto;
  border-radius: 25px;
} 


.output-container {
  display: flex;
  flex-direction: row;
  background-color: #eee;
  border: 1px solid black;
  width: 30%;
  padding: 10px;
  box-sizing: border-box;

}

.estititle {
  font-size:24px;
  width:300px;
  height:50px;
}
input[type="button"] {
  width: 150px;
  height: 50px;
}

.input-group {
  margin-bottom: 10px;
}

label {
  display: inline-block;
  width: 120px;
  font-size: 16px;
}

input[type="number"] {
  width: 150px;
  height: 30px;
  padding: 5px;
  font-size: 16px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

.output-group {
  margin-top: 20px;
}

#total {
  font-weight: bold;
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
<br><br><br><br><br><br><br><br><br>

<!-- 견적서 시작 -->
<div class="all-container">

<!-- 왼쪽 견적서 작성 왼쪽 화면 -->
<div class="input-container">
 <div class="input-form">
 
   <div>
    <form onsubmit="return copyInfo();">
     <p>예약 날짜 선택 : <input type="date" class="form-control" id="inputDate" name="resdate" >
     <button type="submit" onclick="copyInfo()">확인</button></p>  
   
    
     <p>예약 시간 선택 : <input type="time" class="form-control" id="inputTime" name="restime" >
     <button type="submit" onclick="copyInfo()">확인</button></p>    
    
 
     <p>예상 하객수 입력 : 
      <input type="text"   id="inputGuest" name="guestnum" placeholder="예상 하객수를 입력하세요" required>
      <button type="submit" onclick="copyInfo()">확인</button></p>
    </form> 
  </div>
 

<h2 class="estititle">홀 목록 <span class="triangle-icon" onclick="toggleHallContainer()">▼</span></h2>
 <form onsubmit="copyInfo(); return false;">
  <div class="hall-contanier" >
    <div class="input-form">
       <div class="hallcard">
        <div class="hallcard-body">
         <img class="card-img" src="./img/hall/ahall02.jpg" alt="hall image">
        </div>
        <div class="card-footer" style="display: flex; align-items: center;">
          <input type="button" class="InputHallname" id="InputHallname"  name="hallname" value="greenhall" style="font-size:24px" required>        
          <li>greenhall : 1000000</li>
          <li><a href="/Reservation/Hallprice?hallname=${ estivo.hallname }">${ estivo.hallosprice }</a></li>
         </div>
       </div>
       
       <div class="hallcard">
         <div class="hallcard-body">
          <img class="card-img" src="./img/hall/bhall01.jpg" alt="hall image">
         </div>
         <div class="card-footer" style="display: flex; align-items: center;">
          <input type="button" class="InputHallname" id="InputHallname"   name="hallname" value="redhall" style="font-size:24px" required>
          <li>redhall price : 1200000</li>
          <li><a href="/Reservation/Hallprice?hallname=${ estivo.hallname }">${ estivo.hallosprice }</a></li>
         </div>
       </div> 
  
       <div class=hallcard>
         <div class="hallcard-body">
          <img class="card-img" src="./img/hall/chall01.jpg" alt="hall image">
         </div>
         <div class="card-footer" style="display: flex; align-items: center;">
          <input type="button" class="InputHallname" id="InputHallname"   name="hallname" value="bluehall" style="font-size:24px" required>
          <p>bluehall price : 1300000</p>
         </div>
       </div> 
      
       <div class=hallcard>
         <div class="hallcard-body">
          <img class="card-img" src="./img/hall/dhall01.jpg" alt="hall image">
         </div>
         <div class="card-footer" style="display: flex; align-items: center;">
         <input type="button" class="InputHallname" id="InputHallname"  name="hallname" value="blackhall" style="font-size:24px" required>
         <p>blackhall price : 1500000</p>
        </div>
       </div>
       
       <div class=hallcard>
        <div class="hallcard-body">
          <img class="card-img" src="./img/hall/viphall01.jpg" alt="hall image">
        </div>
        <div class="card-footer" style="display: flex; align-items: center;">
         <input type="button" class="InputHallname" id="InputHallname" name="hallname" value="viphall" style="font-size:24px" required>    
	     <p>viphall price : 2000000</p> 
	    </div> 
	   </div> 
   </div>
  </div>
 </form> 
<div>


<h2 class="estititle">뷔페 타입 <span class="triangle-icon" onclick="toggledressContainer()">▼</span></h2>
 <form onsubmit="copyInfo(); return false;">
  <div class="catering-contanier">
    <div class="input-form">
       <div class="cateringcard">
        <div class="cateringcard-body">
         <img class="card-img" src="./img/buffet/buffet01.jpg" alt="esti image">
        </div>
        <div class="card-footer" style="display: flex; align-items: center;">
         <input type="button" class="InputCateringtype" id="InputCateringtype"  name="cateringtype" value="일반뷔페" style="font-size:24px" required>
	    </div>
	   </div>
	   
	   <div class="cateringcard">
        <div class="cateringcard-body">
         <img class="card-img" src="./img/buffet/buffet15.jpg" alt="esti image">
        </div>
        <div class="card-footer" style="display: flex; align-items: center;">
         <input type="button" class="InputCateringtype" id="InputCateringtype"  name="cateringtype" value="프리미엄" style="font-size:24px" required>
        </div>
       </div>
      </div> 
     </div>
   </form>
  

<h2 class="estititle">본식 드레스 목록 <span class="triangle-icon" onclick="toggledressContainer()">▼</span></h2>
  <form onsubmit="copyInfo(); return false;">
   <div class="dress-contanier">
    <input type="button" class="InputDressname" id="InputDressname"  name="dressname" value="블루밍 드레스" style="font-size:24px" required>
    <input type="button" class="InputDressname"  name="dressname" value="드레스2" style="font-size:24px"  required>
    <input type="button" class="InputDressname"  name="dressname" value="드레스3" style="font-size:24px"  required>
    <input type="button" class="InputDressname"  name="dressname" value="드레스4" style="font-size:24px"  required>
    <input type="button" class="InputDressname"  name="dressname" value="드레스5" style="font-size:24px"  required> 
   </div>
  </form>


<h2 class="estititle">스튜디오 목록 <span class="triangle-icon" onclick="toggledressContainer()">▼</span></h2>
  <form onsubmit="copyInfo(); return false;">
   <div class="studio-contanier"> 
    <input type="button" class="InputStudioname" id="InputStudioname"  name="studioname" value="Fillmoment" style="font-size:24px" required>
    <input type="button" class="InputStudioname" id="InputStudioname"  name="studioname" value="Steso" style="font-size:24px"  required>
    <input type="button" class="InputStudioname" id="InputStudioname"  name="studioname" value="너를 봄" style="font-size:24px"  required>
   </div>
</form>

 </div> 
</div>  
</div>


<!-- 오른쪽 견적서 출력 영역 -->
<div class="output-container">

<div>
<form method="POST" action="/Reservation/Estimate">

 <input type="text" class="estititle" name="estiname" placeholder="견적서 이름을 입력하세요">
 <div class="info-output">
 <div>
 
   <p>예약 날짜 :        <span id="outputDate"></span><input type="hidden" id="resdate" name="resdate"></p>
   <p>예약 시간 :        <span id="outputTime"></span><input type="hidden" id="restime" name="restime"></p>
   <p>예상 하객수 :      <span id="outputGuest"></span><input type="hidden" id="guestnum" name="guestnum"></p>
 

   <p>홀   이름 :        <span id="outputHallName"></span>
                         <input type="hidden" id="hallname" name="hallname"></p>
   <div class="input-group">
   <label for="hallosprice">Hall Price:</label>
   <input type="number" id="hallosprice" name="hallosprice" value="<c:out value="${estivo.hallosprice}" />" />
  </div>
  
  <p>뷔페 타입 :   <span id="outputCateringtype" ></span>
                   <input type="hidden" id="cateringtype" name="cateringtype"></p>
  <div class="input-group">
   <label for="cateringprice">Catering Price:</label>
   <input type="number" id="cateringprice" name="cateringprice" value="<c:out value="${estivo.cateringprice}" />">
  </div>

  
  
  <p>드레스 이름 :   <span id="outputDressName"></span>
                <input type="hidden" id="dressname" name="dressname"></p>
  <div class="input-group">
    <label for="dressprice">Dress Price:</label>
    <input type="number" id="dressprice" name="dressprice" value="<c:out value="${estivo.dressprice}" />">
  </div>
 
  

  <p>스튜디오 이름 :   <span id="outputStudioName" ></span>
                <input type="hidden" id="studioname" name="studioname"></p>
  <div class="input-group">
        <label for="studioprice">Studio Price:</label>
        <input type="number" id="studioprice" name="studioprice" value="<c:out value="${estivo.studioprice}" />">
  </div>
  
 </div>
 <div class="output-group">
        <label for="total">Total Price:</label>
        <input type="number" id="total" value="0" readonly>
        <button type="submit" id="submit" onclick="showesticomp();"> 견적서 저장하기 </button> 
 </div>
 </div>
  </form>
  </div>
 </div>  
   
</div>



<script>
/*
function toggleHallContainer() {
  const hallContainer = document.querySelector(".hall-container");
  if (hallContainer.classList.contains("hidden")) {
    hallContainer.classList.remove("hidden");
  } else {
    hallContainer.classList.add("hidden");
  }
}


function toggleHallContainer() {
	  const hallContainer = document.getElementById(".hall-container");
	  if (hallContainer.style.display === "none") {
	    hallContainer.style.display = "block";
	  } else {
	    hallContainer.style.display = "none";
	  }
	}

*/
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="script.js"></script>


<script>

const hallnameInput      = document.querySelector('input[name="hallname"]');
const cateringtypeInput  = document.querySelector('input[name="cateringtype"]');
const dressnameInput     = document.querySelector('input[name="dressname"]');
const studionameInput    = document.querySelector('input[name="studioname"]');

const hallnameOutput     = document.querySelector('#hallname-output');
const cateringtypeOutput = document.querySelector('#cateringtype-output');
const dressnameOutput    = document.querySelector('#dressname-output');
const studionameOutput   = document.querySelector('#studioname-output');


function copyInfo(hallname, cateringtype, dressname, studioname) {  
  var date  = document.getElementById("inputDate").value;
  var time  = document.getElementById("inputTime").value;
  var guest = document.getElementById("inputGuest").value;
  
  var outputDate  = document.getElementById("outputDate");
  var outputTime  = document.getElementById("outputTime");
  var outputGuest = document.getElementById("outputGuest");
  

  var outputHallName      = document.getElementById("outputHallName");
  var outputCateringtype  = document.getElementById("outputCateringtype");
  var outputDressName     = document.getElementById("outputDressName");
  var outputStudioName    = document.getElementById("outputStudioName");

  outputDate.textContent = date;
  outputTime.textContent = time;
  outputGuest.textContent = guest;
  
  document.getElementById("resdate").value = date;
  document.getElementById("restime").value = time;
  document.getElementById("guestnum").value = guest;
  
  outputHallName.textContent = hallname ? hallname : outputHallName.textContent;  
  outputCateringtype.textContent = cateringtype ? cateringtype : outputCateringtype.textContent;
  outputDressName.textContent = dressname ? dressname : outputDressName.textContent;    
  outputStudioName.textContent = studioname ? studioname : outputStudioName.textContent;    
  
  document.getElementById("hallname").value     = hallname ? hallname : outputHallName.textContent;
  document.getElementById("cateringtype").value = cateringtype ? cateringtype : outputCateringtype.textContent;
  document.getElementById("dressname").value = dressname ? dressname : outputDressName.textContent;    
  document.getElementById("studioname").value = studioname ? studioname : outputStudioName.textContent;      
   

return false;
  
}
  
</script>

<script>
// 홀가격 가져오기
$('.InputHallname').on('click', function() {
    alert('ㅋㅋㅋ');
	copyInfo(this.value, '', '', '')
		
    // 선택된 홀 이름 가져오기
    var hallname = $(this).val();
    
    // AJAX 요청을 사용하여 해당 홀에 대한 정보 가져오기
    $.ajax({
        url: 'Reservation/Hallprice',
        type: 'POST',
        data: { hallname: hallname },
        success: function(data) {
            // 가져온 정보를 사용하여 hallprice 입력란의 값을 설정
            $('#hallosprice').val(data.hallosprice);

            // hallprice 값을 파싱하여 변수에 저장
            let hallosprice = parseInt(data.hallosprice);
            console.log(hallosprice);
            
            //계산
            calculateTotal();
            
        },
        error: function() {
            alert('Failed to get hall info.');
        }
    });
        
});

// 뷔페가격 가져오기
$('.InputCateringtype').on('click', function() {
    alert('ㅋㅋㅋ');
	copyInfo('', this.value, '', '')
	
    // 선택된 뷔페 이름 가져오기
    var cateringtype = $(this).val();
    
    // AJAX 요청을 사용하여 해당 뷔페에 대한 정보 가져오기
    $.ajax({
        url: 'Reservation/Cateringprice',
        type: 'POST',
        data: { cateringtype: cateringtype },
        success: function(data) {
            // 가져온 정보를 사용하여 cateringprice 입력란의 값을 설정
            $('#cateringprice').val(data.cateringprice);

            // cateringprice 값을 파싱하여 변수에 저장
            let cateringprice = parseInt(data.cateringprice);
            console.log(cateringprice);
            
            //계산
            calculateTotal();
        },
        error: function() {
            alert('Failed to get hall info.');
        }
    });
});

//드레스 가격 가져오기
$('.InputDressname').on('click', function() {
    alert('ㅋㅋㅋ');
	copyInfo('',  '', this.value, '')
	
    // 선택된 드레스 이름 가져오기
    var dressname = $(this).val();
    
    // AJAX 요청을 사용하여 해당 드레스에 대한 정보 가져오기
    $.ajax({
        url: 'Reservation/Dressprice',
        type: 'POST',
        data: { dressname: dressname },
        success: function(data) {
            // 가져온 정보를 사용하여 dressprice 입력란의 값을 설정
            $('#dressprice').val(data.dressprice);

            // dressprice 값을 파싱하여 변수에 저장
            let dressprice = parseInt(data.dressprice);
            console.log(dressprice);
            
            //계산
            calculateTotal();
        },
        error: function() {
            alert('Failed to get hall info.');
        }
    });
});

//스튜디오 가격 가져오기
$('.InputStudioname').on('click', function() {
    alert('ㅋㅋㅋ');
	copyInfo('',  '', '', this.value)
	
    // 선택된 스튜디오 이름 가져오기
    var studioname = $(this).val();
    
    // AJAX 요청을 사용하여 해당 스튜디오에 대한 정보 가져오기
    $.ajax({
        url: 'Reservation/Studioprice',
        type: 'POST',
        data: { studioname: studioname },
        success: function(data) {
            // 가져온 정보를 사용하여 studioprice 입력란의 값을 설정
            $('#studioprice').val(data.studioprice);

            // studioprice 값을 파싱하여 변수에 저장
            let studioprice = parseInt(data.studioprice);
            console.log(studioprice);
            
            //계산
            calculateTotal();
        },
        error: function() {
            alert('Failed to get hall info.');
        }
    });
});


// 가격 계산
document.querySelector('#hallosprice').addEventListener('input', calculateTotal);
document.querySelector('#cateringprice').addEventListener('input', calculateTotal);
document.querySelector('#dressprice').addEventListener('input', calculateTotal);
document.querySelector('#studioprice').addEventListener('input', calculateTotal);

// total input 필드의 값을 계산하여 업데이트하는 함수
function calculateTotal() {
 const hallPrice     = parseInt(document.querySelector('#hallosprice').value) || 0;
 const cateringPrice = parseInt(document.querySelector('#cateringprice').value) || 0;
 const dressPrice    = parseInt(document.querySelector('#dressprice').value) || 0;
 const studioPrice   = parseInt(document.querySelector('#studioprice').value) || 0;
 const totalPrice    = hallPrice + cateringPrice + dressPrice + studioPrice;
 document.querySelector('#total').value = totalPrice;
}

// 총합 계산
calculateTotal();

</script>


</body>
</html>









