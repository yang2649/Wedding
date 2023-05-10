<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<!-- 내 견적서 -->

<div class="container" style="margin: auto; padding:15px 15px 15px 120px;">
  <c:forEach var="mypage" items="${estiList}">
    <div class="col">
       <h2 class=infotitle>${ mypage.estiname }</h2>
           <table>
      		 <tr>
      		 <td>예약일 : </td> 
      		 <td>${ mypage.resdate }</td> 
      		 </tr>
      		 <tr>
      		 <td>예약시간 : </td> 
      		 <td>${ mypage.restime }</td> 
     		 </tr>
     		 <tr>
       		 <td>예상 인원수 : </td> 
        	 <td>${ mypage.guestnum }</td> 
      		 </tr>
       		 <tr>
        	 <td>홀 이름 : </td> 
             <td>${ mypage.hallname }</td>
             </tr>
             <tr>
        	 <td>뷔페 타입 : </td> 
             <td>${ mypage.cateringtype }</td>
             </tr>
             <tr>
        	 <td>스튜디오 이름 : </td> 
             <td>${ mypage.studioname }</td> 
             </tr>
             <tr>
        	 <td>본식 드레스 이름 : </td> 
             <td>${ mypage.dressname }</td> 
             </tr>
 
             <tr>
        	 <td>총 가격 : </td> 
             <td>${ mypage.totalcost }</td> 
             </tr>
             <tr>
             <td>
             <a class="btn btn-primary btn-sm" href="/User/UpdateForm?memid=${ user.memid }">확인</a>&nbsp;&nbsp;
             <a class="btn btn-primary btn-sm" href="/User/Delete?memid=${ user.memid }">삭제</a>&nbsp;&nbsp;
             </td>
             </tr>
          </table>
        </div>
       </c:forEach>
      </div>

<script>

	const menuButton = document.querySelector('.menu-toggle');
	const slidingMenu = document.querySelector('.sliding-menu');
	const slidingMenuOverlay = document.querySelector('.sliding-menu-overlay');

  menuButton.addEventListener('click', function() {
    slidingMenu.classList.toggle('open');
    slidingMenuOverlay.classList.toggle('open');
  });
  
  slidingMenuOverlay.addEventListener('click', function() {
	  slidingMenu.classList.remove('open');
	  slidingMenuOverlay.classList.remove('open');
	});
  
  
  $(window).scroll(function() {
	  // 스크롤 위치가 50px 이상인 경우
	  if ($(this).scrollTop() > 50) {
	    $('div.header').slideUp();
	    $('.menu-toggle').addClass('scrolled');
	    $('.bar').css('background-color', '#fff'); // 색깔 변경
	    if ($('.sliding-menu').hasClass('open')) {
	      $('.sliding-menu').removeClass('open'); // 슬라이딩 메뉴 숨기기
	    }
	    if ($('.sliding-menu-overlay').hasClass('open')) {
	      $('.sliding-menu-overlay').removeClass('open'); // 슬라이딩 메뉴 오버레이 숨기기
	    }
	  } 
	  // 스크롤 위치가 50px 미만인 경우
	  else {
	    $('div.header').slideDown();
	    $('.menu-toggle').removeClass('scrolled');
	    $('.bar').css('background-color', '#000'); // 색깔 변경
	    if ($('.sliding-menu').hasClass('open')) {
	      $('.sliding-menu').removeClass('open'); // 슬라이딩 메뉴 숨기기
	    }
	    if ($('.sliding-menu-overlay').hasClass('open')) {
	      $('.sliding-menu-overlay').removeClass('open'); // 슬라이딩 메뉴 오버레이 숨기기
	    }
	  }
	});
  
  // 스크롤 위치에 따른 메뉴 버튼 색상 변경
  window.addEventListener('scroll', function() {
    const menuToggle = document.querySelector('.menu-toggle');
	  if (window.scrollY > 50) {
	    menuToggle.classList.add('scrolled');
	  } else {
	    menuToggle.classList.remove('scrolled');
	  }
	});
  
 
  // 유정 로그인  
  $(function(){
	  $("#confirm").click(function(){
         modalClose(); //모달 닫기 함수 호출	      
	      
	  });
	  $("#modal-open").click(function(){        
	      $("#popup").css('display','flex').hide().fadeIn();
	      //팝업을 flex속성으로 바꿔준 후 hide()로 숨기고 다시 fadeIn()으로 효과
	  });
	  $("#close").click(function(){
	      modalClose(); //모달 닫기 함수 호출
	  });
	  $("#join").click(function(){
	      modalClose(); //회원가입 눌렀을 때도 모달 닫기 함수 호출
	  });
	  function modalClose(){
	      $("#popup").fadeOut(); //페이드아웃 효과
	  }
	});

  
   //유정 회원가입
    function showJoin(){
        window.open("User/WriteForm","팝업 테스트","width=450, height=400, top=350, left=650");
      }     
   
   

</script>

</body>
</html>



