<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>loaction</title>

<!-- jquery 사용 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">

<!-- ajax 스타일 시트 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/fslightbox/3.4.1/index.min.js"></script>

<!-- css 부분 사용 -->
<link rel="shortcut icon" href="./img/favicon.ico">
<link rel="stylesheet" href="./css/styles.css">
<link rel="stylesheet" href="./css/loginstyle.css">
<link rel="stylesheet" href="./css/common.css">

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<link rel="shortcut icon" href="/img/favicon.ico">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!-- 글 폰트 -->
<!-- 구글 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=EB+Garamond:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@700&family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Lora:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Castoro+Titling&display=swap" rel="stylesheet">

<style>

body {
   padding-top: 80px; /* 헤더 높이만큼 패딩 추가 */
}

li {
  display: flex;
  justify-content: center;
}

.gold {
  color: #FFD700;
}

/* body 메뉴 폰트 및 사이즈 */
nav  {
  font-family: 'Times New Roman';
  font-size: 20px;
  padding-top:0px;
  margin-left:200px;
  margin-right:200px;
  margin:auto;
width: 673px;
}
footer{
   text-align: center;
   margin:auto;

   background-color : #383838;
      background       : rgba(56,56,56,1);
      color    :rgba(255,255,255,1);
   color : #ffffff;
}
   .footer-section {
   background-color : #383838;
      background       : rgba(56,56,56,1);
   color : #ffffff;
      color    :rgba(255,255,255,1);
      font-size  :16px;
background-size : cover;
 background-repeat: no-repeat;   

  padding-top : 30px;
      padding-bottom    : 30px;
   }
   .text-table {
   padding-top:60px;
   text-align:center;
   margin:auto;
width: 673px;}
   .text-table h2{
   text-align:left;

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


</style>

</head>
<body>
   <div class="header">
<h2 style="margin: 0; padding: 15px; text-align: center;" class="logo">Green<br>Wedding</h2>
   
  <span style="margin-right: auto;">
    <a href="#" style="margin: 0 5px;">VENUE</a>
    <a href="#" style="margin: 0 5px;">CATERRING</a>
    <a href="/Studio" style="margin: 0 5px;">COOPERATIVE</a>
    <a href="#" style="margin: 0 5px;">RESERVATION</a>
    <a href="#" style="margin: 0 5px;">COMMUNITY</a>
<a href="/Location" style="margin: 0 5px;">LOCATION</a>
  </span>
</div>
   <div class="menu-toggle">MENU</div>
<div class="sliding-menu">
  <ul>
    <li>
      <ul>
         <br>
         <br>
         <br>
         <br>
         <br>
         <li><a href="/User/Login">로그인</a><li><br><br></li>
      </ul>
    </li>
  </ul>
</div>
<div class="sliding-menu-overlay"></div>
      <!-- 메인 메뉴 -->
   
   
<img src="./img/side_main.jpg" width="100%" >
<nav class="nav nav-pills nav-justified">
  <a class="nav-item nav-link active"  href="/Location"  style="background-color: rgb(200, 200, 200)" >찾아 오는 길</a>
  <a class="nav-item nav-link" href="/Map" style="color: rgb(0, 0, 0)" >약도</a>
  <a class="nav-item nav-link " href="/Parking" style="color: rgb(0, 0, 0)">주차안내</a>
</nav>   
<div class="text-table "><div><h2>
<span id = "location" style="letter-spacing: -1px; ">Location</span>
</h2><hr><p style="line-height: 2;"><span style="font-size: 18px;">
<strong>
도로명 주소
</strong> : 부산 부산진구 중앙대로 749</span></p>
<p style="line-height: 2;">
<strong>
<span style="font-size: 18px;">
지번 주소
</span>
</strong>
<span style="font-size: 18px;">
&nbsp;: &nbsp;부산 부산진구 부전동 266-2</span>
</p>
<p style="line-height: 2;">
<span style="font-size: 18px;">
<strong>
상담전화
</strong> :
</span>
<strong>
<span style="color: rgb(232, 153, 110); font-size: 18px;">
&nbsp;052-912-1000
</span>
</strong>
</p>
<p>
<br>
</p>
</div>
</div>

<div id="map">
   <h2> <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d576.6239091908279!2d129.0600767204658!3d35.15967794144581!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x356894a6ab58bc99%3A0xaf587f45be7fc60d!2z7Zic64-E6rG07ISkKOyjvCk!5e0!3m2!1sko!2skr!4v1683161479500!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
    </iframe>
    </h2>
    </div>










<div doz_type="text" 
      class="widget _text_wrap widget_text_wrap fr-view  default_padding " 
      id="text_w2021021623e171f6d38ee">
      
            <div class="text-table ">
            <div>
            <table class="tableStrong tableHorizontal" id="308421" style="width: 100%;">
            <tbody><tr>
            <td style="width: 14.52%; vertical-align: top;">
            <div style="text-align: center;">
            <img src="https://cdn.imweb.me/upload/S2020061561967776cbf38/eb14ded2d6f6a.gif" class="fr-fin fr-dii">
            </div>
            </td>
            <td style="width: 85.48%; vertical-align: middle;padding:20px;">
            <p>
            <strong>
            <span style="font-size: 18px;">주소</span>
            </strong>
            </p>
            <p>충청남도 아산시 배방읍 희망로 100(장재리364-4) KTX천안아산역 역사내 2층</p>
            <p>* 주차는 KTX 역사 내 1층 또는 광장1, 광장2 주차장, 주변 공영 주차장 이용 가능 (웨딩홀 로비에서 주차등록하세요)</p>
            <br>
</td>
</tr>
<tr>
<td style="width: 14.52%; vertical-align: top;">
<img src="https://cdn.imweb.me/upload/S2020061561967776cbf38/a1479979ae48d.gif" class="fr-fin fr-dib">
</td>
<td style="width: 85.48%; vertical-align: middle;padding:20px;">
<p>
<strong>
<span style="font-size: 18px;">
서울강남 고속터미널 ~ 천안아산 KTX역 경유지 추가안내
</span>
</strong>
</p>
<p>
<br>
</p>
<p>
<strong>
노선명 :&nbsp;</strong>서울(경부) ~ 아산(온양) 경유 노선
</p>
<p>
<strong>
운행 :
</strong> 
서울(경부) - 아산 KTX 터미널 - 아산 서부 휴게소 - 아산(온양) 터미널
</p>
<p>
<strong>
승차장소 :&nbsp;
</strong>
와이시티 107동앞 고속버스 14번 정류장
</p>
<p>
(아산터미널 경유 서울 경부행 고속터미널)운행&nbsp;
</p>
<p>
<strong>
승차권 구매방법 :
</strong>
</p>
<p>
1) 직접구매 : 와이시티몰 세븐일레븐 편의점 앞 (자동승차권 발매기 이용)
</p>
<p>
2) 모바일 : 고속버스모바일 검색 → 천안아산역 검색
</p>
<br>
</td>
</tr>
<tr>
<td style="width: 14.52%; vertical-align: top;">
<img src="https://cdn.imweb.me/upload/S2020061561967776cbf38/aa82ef0f0345f.gif" class="fr-fin fr-dib">
</td>
<td style="width: 85.48%; vertical-align: middle;padding:20px;">
<p>
<strong>
버스이용시(천안 방면 버스)
</strong>
</p>
<p>
<br>
</p>
<p>
순환 5번 : 호서대종점→ 아산역
</p>
<p>
20번, 13번 : 단대병원 → 천안 아산역
</p>
<p>
19번: 직산 대림아파트 → 천안 아산역
</p>
<p>
90번: 고속 버스터미널 → 천안 아산역
</p>
<p>
990번: 종합터미널 → 천안아산역
</p>
<p>
아산역 : 21번, 80-1번, 81-1번, 777번
</p>
<br>
</td>
</tr>
<tr>
<td style="width: 14.52%; vertical-align: top;">
<img src="https://cdn.imweb.me/upload/S2020061561967776cbf38/8f4677ab61d2f.gif" class="fr-fin fr-dib">
</td>
<td style="width: 85.48%;padding:20px;">
<p>
<strong>
자가용 이용시
</strong>
</p>
<p>
<br>
</p>
<p>
천안에서 아산방면: 천안IC - 시청 종합운동장 방향 - 시청방향 - 아산역 방향 - KTX천안아산역
</p>
<p>
남천안에서 아산방면: 남천안TG(논산천안간고속도로) - 남천안IC - 구룡삼거리(천안대로) 
- 청삼교차로 - 남부대로 - 용암교 - 신방삼거리-
</p>
<p>
&nbsp; 매곡삼거리(21번국도) - KTX천안아산역
</p>
<br>
</td>
</tr>
<tr>
<td style="width: 14.52%; vertical-align: top;">
<img src="https://cdn.imweb.me/upload/S2020061561967776cbf38/2d93f4da01688.gif" class="fr-fin fr-dib">
</td>
<td style="width: 85.48%;padding:20px;">
<p>
<strong>
KTX, SRT 이용시
</strong>
</p>
<p>
KTX천안아산역 역사내 2층
</p>
<p>
<br>
</p>
<p>
<strong>
열차 이용시
</strong>
</p>
<p>
새마을호, 무궁화호, 누리로(아산역에서 하차)
</p>
<br>
</td>
</tr>
<tr>
<td style="width: 14.52%; vertical-align: top;">
<img src="https://cdn.imweb.me/upload/S2020061561967776cbf38/146f82f06d62b.gif" class="fr-fin fr-dib">
</td>
</tr>
<tr>
<td style="width: 14.52%; vertical-align: top;">
<img src="https://cdn.imweb.me/upload/S2020061561967776cbf38/85c99425f71a5.gif" class="fr-fin fr-dib">
</td>
<td style="width: 85.48%;padding:20px;">
<p>
<strong>
네비게이션 이용시
</strong>
</p>
<p>
KTX천안아산역, CA웨딩홀 / 충청남도 아산시 배방읍 희망로 100(장재리364-4) KTX천안아산역 역사내 2층
</p>
<br>
</td>
</tr>
</tbody>
</table>
</div>
</div>      
   </div>



<br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br>









<footer id="doz_footer_wrap"><div id="doz_footer">    
   <div class="footer-section ">   
      <div class="inside">
         
            <div class="col-dz-9 col-xdz-12 col-dz">
                                                                              <div class="foot-custom">
               <div class="custom-text _footer_text">
                  <div class="custom-text-info _text_editor fr-view">
                        <p>
                        <span style="font-size: 28px;">
                        GREEN WEDDING</span>
                        </p>                        
                        <p>
                        <span style="font-size: 16px;">
                        <br>
                        </span>
                        </p>
                        <p>
                        <span style="font-size: 16px;">
                        주소:부산그린컴터아카데미
                        <br>
                        T. 052-912-1000<br>E. 
                        <a href="mailto:gydnjs6203@naver.com">gydnjs6203@naver.com</a>
                        </span>
                        </p>
                        <p>
                        <br>
                        </p>
                        <p>
                        <span style="font-size: 16px;">
                        그린 웨딩홀</span>
                        </p>
                        <p>
                        <span style="font-size: 16px;">
                        2023 ⓒ Copyright GreenWEDDING. Design by GreenCREATIVE.&nbsp;</span>
                        </p><p><br></p>                     
                        </div>
                  </div>
                  <div class="copryright-area _copy_menu" style="display:none;">
                  
                     Copyright ⓒ 2023 CA웨딩컨벤션 천안웨딩홀 아산웨딩홀 All rights reserved.
                  </div>
               
            </div>
            <div class="col-dz-3 col-xdz-12 col-dz">
                                 <div class="foot-sociallink _sns_link">
                     <div class="btn-group _sns_link_list" role="group">
                        <a type="button" class="btn pull-right _x724PEePET " href="https://www.instagram.com/caweddingconvention/" style="" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i><span class="sr-only">SNS 바로가기</span></a><a type="button" class="btn pull-right _o506Lcn686 " href="https://blog.naver.com/hd200990" style="" target="_blank"><i class="ii ii-nblog" aria-hidden="true"></i><span class="sr-only">SNS 바로가기</span></a><a type="button" class="btn pull-right _B5Ccm5Fi58 " href="https://pf.kakao.com/_uTGPxb" style="" target="_blank"><i class="ii ii-kakaotalk" aria-hidden="true"></i><span class="sr-only">SNS 바로가기</span></a>                     </div>
                  </div>
                           </div>
            <div class="col-dz-9 col-xdz-12 col-dz">
               <div class="foot-app-menu _app_menu" style="display:none;">
                                                   </div>
            </div>
         </div>
      </div>
   </div>
</div>
</footer>
<script>
  const menuButton = document.querySelector('.menu-toggle');
  const slidingMenu = document.querySelector('.sliding-menu');
  const slidingMenuOverlay = document.querySelector('.sliding-menu-overlay');

  menuButton.addEventListener('click', function () {
    slidingMenu.classList.toggle('open');
    slidingMenuOverlay.classList.toggle('open');
  });

  slidingMenuOverlay.addEventListener('click', function () {
    slidingMenu.classList.remove('open');
    slidingMenuOverlay.classList.remove('open');
  });

  $(document).ready(function () {
    $('#main-slider').bxSlider({
      auto: true,
      autoControls: true,
      stopAutoOnClick: true,
      pager: true,
      speed: 500,
      pause: 4000,
      slideMargin: 0
    });

    let lastScrollTop = 0;

    $(window).scroll(function () {
        const currentScrollTop = $(this).scrollTop();
        const header = $('.header');

        if (currentScrollTop > lastScrollTop) {
          header.addClass('hide-header');
        } else {
          header.removeClass('hide-header');
        }

        if (currentScrollTop > 0) {
          header.addClass('sticky');
          menuButton.classList.add('gold'); // 메뉴 버튼 색상 변경 코드 추가
        } else {
          header.removeClass('sticky');
          menuButton.classList.remove('gold'); // 메뉴 버튼 색상 변경 코드 추가
        }
        lastScrollTop = currentScrollTop;
      });
    });
</script>
</body>
</html> 