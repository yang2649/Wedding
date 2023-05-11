<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- JSTL 라이브러리 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<!DOCTYPE html>
<html>

<head>

<!-- head 부분 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/head_resources.jsp" />

</head>




<body>


<!-- 헤더 부분 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/header.jsp" />

  
<!--유정 로그인 분리--> <!-- 여기만 현재 문제이상 -->
<jsp:include page="/WEB-INF/views/part_menu/login.jsp" />


<!-- 슬라이드 메뉴 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/slidemenu.jsp" />

 

<!-- 메인 메뉴 -->
<!-- 이미지 사이즈 -->
<!-- 이미지 전부 사이즈 조정해야함 (안그러면 화면이 달라짐) -->
<!-- https://express.adobe.com/ko-KR/tools/image-resize# -->
<!-- 표준 - 프레젠테이션 슬라이드 4:3 이미지 3개 고정 -->
<div class="owl-carousel owl-theme">

  <div class="item"><img src="./img/hall/ahall01.jpg"  alt="Image 1">
  <div class="caption">부산 웨딩의 대표 공간</div>
  <div class="subcaption">최고가 아니면 명품 웨딩홀을 볼 수 없습니다. 사랑한다면, 신부의 품격을 높여주세요</div>
  </div>
  
  <div class="item"><img src="./img/hall/ahall02.jpg" alt="Image 2">
  <div class="caption">BRILLRANT WEDDING</div>
  <div class="subcaption">최고가 아니면 명품 웨딩홀을 볼 수 없습니다. 사랑한다면, 신부의 품격을 높여주세요</div>
  </div>
  
  <div class="item"><img src="./img/hall/bhall04.jpg" alt="Image 3">
  <div class="caption">차별화된 웨딩스타일</div>
  <div class="subcaption">당신의 행복이 GREEN WEDDING 의 행복입니다.</div>
  <div class="subcaption02">웨딩 전문가의 스타일링 상담을 만나보세요!</div>
  </div>
  
</div>


<!-- 웨딩홀 -->
<div class="wedding-hole">
    <div style="height: 50px; background-color: #f7f5ef; margin-bottom: 0px;"></div>
	<div style="height: 50px; background-color: #f7f5ef; margin-bottom: 0px;"></div>
	<h3 style="font-family: 'Cormorant Garamond', serif;">WEDDING HALL</h3>
	 <div style="height: 50px; background-color: #f7f5ef; margin-bottom: 0px;"></div>
	 <div style="height: 50px; background-color: #f7f5ef; margin-bottom: 0px;"></div>
</div>


<!-- 갤러리  -->
<div class = "gallmain">
<h2>
<div class="gallery">
  <div class="_item item_gallary" style="position: relative; padding: 2.5px;">
    <div id="caption_1" style="display:none">
      <h4></h4>
      <p></p>
    </div>
    
    <div class="item_container _item_container">
      <div class="img_wrap _img_wrap no_content" id="gal_item_" style="background-image: url('./img/hole/hole1.jpg'); min-height: 172px;" data-bg="url('./img/hole/hole1.jpg')" data-src="./img/hole/hole1.jpg" data-sub-html="#caption_1" data-no="0"></div>
      <div class="text_wrap _text_wrap cursor_pointer" id="gal_item_1" data-src="./img/hole/hole1.jpg" data-sub-html="#caption_1" style="display: none; height: 172px;">
        <p class="title"></p>
      </div>
      <div class="slide_overlay"></div>
    </div>
  </div>

  <div class="_item item_gallary" style="position: relative; padding: 2.5px;">
    <div id="caption_2" style="display:none">
      <h4></h4>
      <p></p>
    </div>
    <div class="item_container _item_container">
      <div class="img_wrap _img_wrap no_content" id="gal_item_" style="background-image: url('./img/hole/hole2.jpg'); min-height: 172px;" data-bg="url('./img/hole/hole2.jpg')" data-src="./img/hole/hole2.jpg" data-sub-html="#caption_2" data-no="1"></div>
      <div class="text_wrap _text_wrap cursor_pointer" id="gal_item_2" data-src="./img/hole/hole2.jpg" data-sub-html="#caption_2" style="display: none; height: 172px;">
        <p class="title"></p>
      </div>
      <div class="slide_overlay"></div>
    </div>
  </div>



  <div class="_item item_gallary" style="position: relative; padding: 2.5px;">
    <div id="caption_3" style="display:none">
      <h4></h4>
      <p></p>
    </div>
    <div class="item_container _item_container">
      <div class="img_wrap _img_wrap no_content" id="gal_item_" style="background-image: url('./img/hole/hole3.jpg'); min-height: 172px;" data-bg="url('./img/hole/hole3.jpg')" data-src="./img/hole/hole3.jpg" data-sub-html="#caption_3" data-no="2"></div>
      <div class="text_wrap _text_wrap cursor_pointer" id="gal_item_3" data-src="./img/hole/hole3.jpg" data-sub-html="#caption_3" style="display: none; height: 172px;">
        <p class="title"></p>
      </div>
      <div class="slide_overlay"></div>
    </div>
  </div>


<div class="_item item_gallary" style="position: relative; padding: 2.5px;">
  <div id="caption_4" style="display:none">
    <h4></h4>
    <p></p>
  </div>
  <div class="item_container _item_container">
    <div class="img_wrap _img_wrap no_content" id="gal_item_" style="background-image: url('./img/hole/hole4.jpg'); min-height: 172px;" data-bg="url('./img/hole/hole4.jpg')" data-src="./img/hole/hole4.jpg" data-sub-html="#caption_4" data-no="3"></div>
    <div class="text_wrap _text_wrap cursor_pointer" id="gal_item_4" data-src="./img/hole/hole4.jpg" data-sub-html="#caption_4" style="display: none; height: 172px;">
      <p class="title"></p>
    </div>
    <div class="slide_overlay"></div>
  	</div>
 </div>
</div>
</h2>
</div>

<!-- <div class="custom-modal">
    <span class="close-modal">&times;</span>
    <img class="modal-content" id="modalImg">
</div> -->

<!-- 갤러리 끝 -->


<!-- VIP -->
<div class="VIP">
	<div style="height: 50px; background-color: #f7f5ef; margin-bottom: 0px;"></div>
	<div style="height: 50px; background-color: #f7f5ef; margin-bottom: 0px;"></div>
	<h4 style="font-family: 'Cormorant Garamond', serif;">VIP</h4>
	 <div style="height: 50px; background-color: #f7f5ef; margin-bottom: 0px;"></div>
	 <div style="height: 50px; background-color: #f7f5ef; margin-bottom: 0px;"></div>
</div>



<!-- VIP 갤러리 -->
<!-- 사진은 모두 사이즈 변경이 필요함 -->
<!-- 표준 - 정사각형으로 모두 편집 -->
<div class = "gallmain">
<h2>
<div class="gallery">
  <div class="_item item_gallary" style="position: relative; padding: 2.5px;">
    <div id="caption_1" style="display:none">
      <h4></h4>
      <p></p>
    </div>
    
    <div class="item_container _item_container">
      <div class="img_wrap _img_wrap no_content" id="gal_item_" style="background-image: url('./img/VIP/VIP1.jpg'); min-height: 172px;" data-bg="url('./img/VIP/VIP1.jpg')" data-src="./img/VIP/VIP1.jpg" data-sub-html="#caption_1" data-no="0"></div>
      <div class="text_wrap _text_wrap cursor_pointer" id="gal_item_1" data-src="./img/VIP/VIP1.jpg" data-sub-html="#caption_1" style="display: none; height: 172px;">
        <p class="title"></p>
      </div>
      <div class="slide_overlay"></div>
    </div>
  </div>

  <div class="_item item_gallary" style="position: relative; padding: 2.5px;">
    <div id="caption_2" style="display:none">
      <h4></h4>
      <p></p>
    </div>
    <div class="item_container _item_container">
      <div class="img_wrap _img_wrap no_content" id="gal_item_" style="background-image: url('./img/VIP/VIP2.jpg'); min-height: 172px;" data-bg="url('./img/VIP/VIP2.jpg')" data-src="./img/VIP/VIP2.jpg" data-sub-html="#caption_2" data-no="1"></div>
      <div class="text_wrap _text_wrap cursor_pointer" id="gal_item_2" data-src="./img/VIP/VIP2.jpg" data-sub-html="#caption_2" style="display: none; height: 172px;">
        <p class="title"></p>
      </div>
      <div class="slide_overlay"></div>
    </div>
  </div>



  <div class="_item item_gallary" style="position: relative; padding: 2.5px;">
    <div id="caption_3" style="display:none">
      <h4></h4>
      <p></p>
    </div>
    <div class="item_container _item_container">
      <div class="img_wrap _img_wrap no_content" id="gal_item_" style="background-image: url('./img/VIP/VIP3.jpg'); min-height: 172px;" data-bg="url('./img/VIP/VIP3.jpg')" data-src="./img/VIP/VIP3.jpg" data-sub-html="#caption_3" data-no="2"></div>
      <div class="text_wrap _text_wrap cursor_pointer" id="gal_item_3" data-src="./img/VIP/VIP3.jpg" data-sub-html="#caption_3" style="display: none; height: 172px;">
        <p class="title"></p>
      </div>
      <div class="slide_overlay"></div>
    </div>
  </div>


<div class="_item item_gallary" style="position: relative; padding: 2.5px;">
  <div id="caption_4" style="display:none">
    <h4></h4>
    <p></p>
  </div>
  <div class="item_container _item_container">
    <div class="img_wrap _img_wrap no_content" id="gal_item_" style="background-image: url('./img/VIP/VIP4.jpg'); min-height: 172px;" data-bg="url('./img/VIP/VIP4.jpg')" data-src="./img/VIP/VIP4.jpg" data-sub-html="#caption_4" data-no="3"></div>
    <div class="text_wrap _text_wrap cursor_pointer" id="gal_item_4" data-src="./img/VIP/VIP4.jpg" data-sub-html="#caption_4" style="display: none; height: 172px;">
      <p class="title"></p>
    </div>
    <div class="slide_overlay"></div>
  	</div>
 </div>
</div>
</h2>
</div>

<!-- VIP 갤러리 끝 -->


<!-- VIP 자세히 보기 -->
<!-- <div class="VIP-watching">
  <div style="height: 50px; background-color: #f7f5ef; margin-bottom: 0px;"></div>
  <h4>
    <a href="#" style="text-decoration: none; color: black; font-family: 'Montserrat', sans-serif; font-weight: bold;">자세히 보기</a>
  </h4>
  <div style="height: 50px; background-color: #f7f5ef; margin-bottom: 0px;"></div>
</div> -->

<div class="VIP-container">
  <div class="VIP-watching">
    <!-- 이곳 하이퍼 링크에 VIP 부분 작성 없으면 지우시면 됩니다 -->
    <a class="VIP-event" href="/Venue05">자세히보기</a>
    <div style="height: 0px; margin-bottom: 0px;"></div>
    <div style="height: 0px; margin-bottom: 0px;"></div>
  </div>
</div>


<!-- CATERRING 음식 -->
<div class="CATERRING">
	<div style="height: 50px; background-color: #F2E8DB;"></div>
	<div style="height: 50px; background-color: #F2E8DB;"></div>
	<h5>CATERRING</h5>
	 <div style="height: 50px; background-color: #F2E8DB;"></div>
	 <div style="height: 50px; background-color: #F2E8DB;"></div>
</div>



<!-- CATERRING 음식 갤러리 시작-->

<div class = "catemain">
<h2>

<div class="caterring">
  <div class="_item item_gallary" style="position: relative; padding: 2.5px;">
    <div id="cate_1" style="display:none">
      <h4></h4>
      <p></p>
    </div>
    
    <div class="item_container _item_container">
      <div class="img_wrap _img_wrap no_content" id="gal_item_" style="background-image: url('./img/cate/cate1.jpg'); min-height: 172px;" data-bg="url('./img/cate/cate1.jpg')" data-src="./img/cate/cate1.jpg" data-sub-html="#cate_1" data-no="0"></div>
      <div class="text_wrap _text_wrap cursor_pointer" id="gal_item_1" data-src="./img/cate/cate1.jpg" data-sub-html="#caption_1" style="display: none; height: 172px;">
        <p class="title"></p>
      </div>
      <div class="slide_overlay"></div>
    </div>
  </div>

  <div class="_item item_gallary" style="position: relative; padding: 2.5px;">
    <div id="cate_2" style="display:none">
      <h4></h4>
      <p></p>
    </div>
    <div class="item_container _item_container">
      <div class="img_wrap _img_wrap no_content" id="gal_item_" style="background-image: url('./img/cate/cate2.jpg'); min-height: 172px;" data-bg="url('./img/cate/cate2.jpg')" data-src="./img/cate/cate2.jpg" data-sub-html="#cate_2" data-no="1"></div>
      <div class="text_wrap _text_wrap cursor_pointer" id="gal_item_2" data-src="./img/cate/cate2.jpg" data-sub-html="#caption_2" style="display: none; height: 172px;">
        <p class="title"></p>
      </div>
      <div class="slide_overlay"></div>
    </div>
  </div>



  <div class="_item item_gallary" style="position: relative; padding: 2.5px;">
    <div id="cate_3" style="display:none">
      <h4></h4>
      <p></p>
    </div>
    <div class="item_container _item_container">
      <div class="img_wrap _img_wrap no_content" id="gal_item_" style="background-image: url('./img/cate/cate3.jpg'); min-height: 172px;" data-bg="url('./img/cate/cate3.jpg')" data-src="./img/cate/cate3.jpg" data-sub-html="#cate_3" data-no="2"></div>
      <div class="text_wrap _text_wrap cursor_pointer" id="gal_item_3" data-src="./img/cate/cate3.jpg" data-sub-html="#caption_3" style="display: none; height: 172px;">
        <p class="title"></p>
      </div>
      <div class="slide_overlay"></div>
    </div>
  </div>


<div class="_item item_gallary" style="position: relative; padding: 2.5px;">
  <div id="cate_4" style="display:none">
    <h4></h4>
    <p></p>
  </div>
  <div class="item_container _item_container">
    <div class="img_wrap _img_wrap no_content" id="gal_item_" style="background-image: url('./img/cate/cate4.jpg'); min-height: 172px;" data-bg="url('./img/cate/cate4.jpg')" data-src="./img/cate/cate4.jpg" data-sub-html="#cate_4" data-no="3"></div>
    <div class="text_wrap _text_wrap cursor_pointer" id="gal_item_4" data-src="./img/cate/cate4.jpg" data-sub-html="#caption_4" style="display: none; height: 172px;">
      <p class="title"></p>
    </div>
    <div class="slide_overlay"></div>
  	</div>
 </div>
</div>
</h2>
</div>


<div class="Catering-margin">
  <div style="height: 50px; background-color: #F2E8DB; margin-bottom: 0px;"></div>
  <div style="height: 50px; background-color: #F2E8DB; margin-bottom: 0px;"></div>
</div>
<!-- caterring 부분 끝 -->




 <!-- 이벤트 부분 시작 -->
 
 <div class="EVENT">
	<div style="height: 50px; background-color: #FFFFFF;"></div>
	<div style="height: 50px; background-color: #FFFFFF;"></div>
	<h6>EVENT</h6>
	 <div style="height: 50px; background-color: #FFFFFF;"></div>
	 <div style="height: 50px; background-color: #FFFFFF;"></div>
</div>
 

<div class="-my-owl-carousel owl-theme row-3col">
  <div class="item">
    <img src="./img/event/event1.png" alt="Image_event_1">
  </div>
  <div class="item">
    <img src="./img/event/event2.png" alt="Image_event_2">
  </div>
  <div class="item">
    <img src="./img/event/event3.png" alt="Image_event_3">
  </div>
  <div class="item">
    <img src="./img/event/event4.png" alt="Image_event_4">
  </div>
</div>


<div class="Event-container">
  <div class="Event-margin">
    <!-- 이곳 하이퍼 링크에 이벤트 부분 작성 없으면 지우시면 됩니다 -->
    <a class="btn-event" href="/Community02">이벤트 자세히보기</a>
    <div style="height: 0px; margin-bottom: 0px;"></div>
    <div style="height: 0px; margin-bottom: 0px;"></div>
  </div>
</div>

<!-- 이벤트 부분 종료 -->




<!-- location 부분 시작 -->

<div class="LOCATION">
	<div style="height: 50px; background-color: #FFFFFF;"></div>
	<h7>LOCATION</h7>
	 <div style="height: 50px; background-color: #FFFFFF;"></div>
	 <div style="height: 50px; background-color: #FFFFFF;"></div>
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

<div class="map-margin">
  <div style="height: 50px; background-color: #FFFFFF; margin-bottom: 0px;"></div>
  <div style="height: 50px; background-color: #FFFFFF; margin-bottom: 0px;"></div>
   <p>도로명 주소 : 부산 부산진구 중앙대로 749</p>
   <p>지번 주소 :  부전동 266-2 우편번호 47254</p>
   <p>상담전화 : 051-816-7561</p>
   <div style="height: 50px; background-color: #FFFFFF; margin-bottom: 0px;"></div>
   <div style="height: 50px; background-color: #FFFFFF; margin-bottom: 0px;"></div>
</div>


<!-- 푸터 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/footer.jsp" />



<!-- js 부분 -->
<!-- 전부 분리 이전시킴 -->

<script>
//모달창
//var modal = document.querySelector(".custom-modal");
//var modalImg = modal.querySelector(".modal-content");
//var images = document.querySelectorAll('.img_wrap');
//var closeBtn = modal.querySelector(".close-modal");

/*
images.forEach(img => {
    img.onclick = function() {
        modal.style.display = "block";
        modalImg.src = this.getAttribute('data-src');
    }
});

closeBtn.onclick = function() {
    modal.style.display = "none";
}

window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
 */
//첫 화면 이미지 밑 점 3개
// 화면이 4초마다 변경
$(document).ready(function() {
	$('.owl-carousel').owlCarousel({
		loop : true,
		autoplay : true,
		autoplayTimeout : 4000,
		margin : 10,
		nav : false,
		dots : true,
		items : 1,
		responsive : {
			0 : {
				items : 1
			},
			600 : {
				items : 1
			},
			1000 : {
				items : 1
			}
		}
	});
});

/* dots: true, 설정을 해주어야 이미지 밑 점이 나타남 */
$(document).ready(
		function() {
			$('.-my-owl-carousel').owlCarousel(
					{
						loop : true,
						margin : 10,
						nav : true,
						navText : [ '<i class="fa fa-angle-left"></i>',
								'<i class="fa fa-angle-right"></i>' ],
						dots : true,
						autoplay : true,
						autoplayTimeout : 5000,
						autoplayHoverPause : true,
						responsive : {
							0 : {
								items : 1
							},
							600 : {
								items : 2
							},
							1000 : {
								items : 3
							}
						}
					});
		});
		
</script>

</body>
</html> 