<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- JSTL 라이브러리 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<meta charset="UTF-8">


	<!--유정 로그인-->
<div class="container">
  <c:if test="${sessionScope.login == null}">
    <div id="modal-open" class="modal-open">LOGIN</div>
    <div class="popup-wrap" id="popup" style="display: none;">
      <div class="popup-box">
        <span class="popup-close" id="popup-close">&times;</span>
        <h2 class="Green-Wedding">Green Wedding</h2> 
        <form action="/loginprocess" method="POST">
          <label for="userid" class="loginlabel">ID</label>
          <input type="text" id="userid" name="memid" value="">
          <label for="password" class="loginlabel">Password</label>
          <input type="password" id="password" name="mempw" value="">
          <br>
          <input type="submit" value="로그인">
        </form>
        <br>
        <div class="links">
          <a href="/User/FindidForm">아이디 찾기</a>
          <a href="/User/FindpwForm">비밀번호 찾기</a>
          <a href="#" id="join" onclick="showJoin();">회원가입</a>
        </div>
      </div>
    </div>
  </c:if>
</div>


	
	<!-- js 코드  -->
	<script>
		// test
		//유정 - Login 부분 스크롤 내렸을때 흰색 변경
		window.addEventListener('scroll', function() {
			var modalOpen = document.querySelector('#modal-open');
			if (window.scrollY > modalOpen.offsetTop) {
				modalOpen.classList.add('white-text');
			} else {
				modalOpen.classList.remove('white-text');
			}
			if (window.scrollY > 800) {
			    modalOpen.style.display = 'none';
			  } else {
			    modalOpen.style.display = 'block';
			  }
		});

		// 유정 로그인  
		$(function() {
			$("#popup-close").click(function() {
				modalClose(); //모달 닫기 함수 호출	      

			});
			$("#modal-open").click(function() {
				$("#popup").css('display', 'flex').hide().fadeIn();
				//팝업을 flex속성으로 바꿔준 후 hide()로 숨기고 다시 fadeIn()으로 효과
			});

			$("#join").click(function() {
				modalClose(); //회원가입 눌렀을 때도 모달 닫기 함수 호출
			});
			function modalClose() {
				$("#popup").fadeOut(); //페이드아웃 효과
			}
		});

		//유정 회원가입
		function showJoin() {
			window.open("User/WriteForm", "팝업 테스트",
					"width=550, height=600, top=250, left=650");
		}
	</script>


