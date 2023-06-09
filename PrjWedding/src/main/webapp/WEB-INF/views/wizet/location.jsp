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
<link rel="stylesheet" href="/css/btn2.css">
<style>
/* body 메뉴 폰트 및 사이즈 */

li {
  display: flex;
  justify-content: center;
}


/* body 메뉴 폰트 및 사이즈 */
   .text-table {
   padding-top:60px;
   text-align:center;
   margin:auto;
width: 800px;}
   .text-table h2{
   text-align:center;

}

div.widget_text_wrap {
    background-size: cover;
    background-position:  center;
   
    width: 100%;
    word-wrap: break-word;
}
.widget {
    position: relative;
    display: block;
    box-sizing: border-box;
}
#contact_map {
        margin:auto;

      text-align: center;
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
<img src="/img/side_main.jpg" width="100%" height="100%" >
	

<nav class="nav nav-pills nav-justified">
  <a class="nav-item nav-link active"  href="/Location01"  style="background-color: rgb(200, 200, 200)" >찾아 오는 길</a>
  <a class="nav-item nav-link " href="/Location02" style="color: rgb(0, 0, 0)">주차안내</a>
</nav>   

<div class="text-table "><div>
<h2 style="text-align: left;">Location</h2>
<hr><p style="line-height: 2;"><span style="font-size: 18px;"></span>
</p>
</div>
</div>
 <!-- 카카오 웹 api 사용 -->
<div class = "map"  id="map" ></div>
<div id="clickLatlng"></div>

<!-- api 키는 home.jsp 제작자 소유 - 승현 js코드 api키 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=af4768f3d5d87505fcfd4296a54fc669"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(35.1596, 129.0602), // 지도의 중심좌표 - 현재 그린 아카데미 있는곳
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 지도를 클릭한 위치에 표출할 마커입니다
var marker = new kakao.maps.Marker({ 
    // 지도 중심좌표에 마커를 생성합니다 
    position: map.getCenter() 
}); 
	// 지도에 마커를 표시합니다
	marker.setMap(map);

	// 지도에 클릭 이벤트를 등록합니다
	// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
	kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
    
    // 클릭한 위도, 경도 정보를 가져옵니다 
    var latlng = mouseEvent.latLng; 
    
    // 마커 위치를 클릭한 위치로 옮깁니다
    marker.setPosition(latlng);
    
   /*  var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
    message += '경도는 ' + latlng.getLng() + ' 입니다';
    
    var resultDiv = document.getElementById('clickLatlng'); 
    resultDiv.innerHTML = message; */
    
});
</script>
<div doz_type="text" 
      class="widget _text_wrap widget_text_wrap fr-view  default_padding " 
      id="text_w2021021623e171f6d38ee">
      
            <div class="text-table ">
       
  
            <span style="font-size: 18px;">주소</span>
           
         
            <p>
            
            
               도로명 주소
: 부산 부산진구 중앙대로 749
지번 주소
&nbsp;: &nbsp;부산 부산진구 부전동 266-2</p> 
<strong>
상담전화
</strong> :
<strong>
<span style="color: rgb(232, 153, 110); font-size: 18px;">
&nbsp;052-912-1000
</span>
</strong><br><br><br>
<p> ※기차 이용시 </p>
<p>부산역에서 하차후 지하철 부산역(노포행 1호선 ) </p>
 <p>&nbsp;서면역에서 하차 부전역 방향으로 도보 3분</p><br>
<p> ※버스 이용시 </p>
<p>부산종합버스터미널 하차후 지하철 노포역 (다대포행 1호선) </p>
 <p>&nbsp;서면역에서 하차 부전역 방향으로 도보 3분</p><br>
<p>부산서부 사상터미널에서 하차후 지하철 사상역(장산행 2호선 ) </p>
 <p>&nbsp;서면역에서 하차 부전역 방향으로 도보 3분</p><br>
</div></div><br><br>




  


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
    document.querySelectorAll('#root2 img').forEach(el => {
      wrap(el);
    });

    
refreshFsLightbox();
    
</script>
</body>
</html> 

