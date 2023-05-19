<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!-- JSTL 라이브러리 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<meta charset="UTF-8">

<style>
.terms-modal {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.5);
  display: flex;
  justify-content: center;
  align-items: flex-start; /* 화면 상단에 정렬되도록 설정 */
  z-index: 9999;
  overflow-y: auto;
}

.terms-modal-content {
  max-width: 80%;
  padding: 20px;
  background-color: #ffffff;
  color: #000000;
  font-family: Arial, sans-serif;
}


.terms-modal-content h3 {
  font-size: 24px;
  font-weight: bold;
}

.terms-modal-content h10{
	font-size: 30px;
	font-weight: bold;
	text-align: center;
	justify-content: center; /* 가로 방향으로 중앙 정렬 */
	
	
}



.terms-modal-content h11,
.terms-modal-content h12,
.terms-modal-content h13,
.terms-modal-content h14,
.terms-modal-content h15 {
  font-weight: bold;
  text-align: center;
}

.terms-modal-content {
  font-size: 20px;
  padding: 30px;
}

/* .terms-modal-buttons {
  margin-top: 20px;
  display: flex;
  justify-content: center;
  align-items: center;
} */

.terms-modal-content input[type="checkbox"],
.terms-modal-content button {
  display: block;
  margin: 0 auto;
}


.agree-checkbox-container {
  display: flex;
  justify-content: center;
  align-items: center;
  margin: 10px 0;
  margin-bottom: 10px;
}

#agree-checkbox {
  margin: 5px; /* 예시로 5px로 설정, 필요에 따라 조절 가능 */
}
.agree-checkbox-label {
  margin-left: 1px;
}

#join-button {
  padding: 10px 20px;
  background-color: #000;
  color: #ffffff;
  border: none;
  border-radius: 4px;
  font-size: 16px;
  cursor: pointer;
}

#join-button:hover {
  background-color: #333;
}

</style>

<!-- 유정 로그인 -->
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
          <a href="#" id="join" onclick="showTermsModal();">회원가입</a>
        </div>
      </div>
    </div>
  </c:if>
</div>

<!-- 약관 동의서 시작 -->
<div class="terms-modal" id="terms-modal" style="display: none;">
  <div class="terms-modal-content">
    <h10>회원 약관 동의서</h10>
    <p>회원가입을 위해 아래의 약관을 읽고 동의해주세요.</p>
    <hr>
    <h11>제 1조 (약관 동의)</h11>
    <p>1. 본 약관은 Green Wedding 회원가입에 동의하는 내용을 정합니다.</p>

    <h12>제 2조 (개인정보 수집 및 이용)</h12>
    <p>1. 회원 가입 시 아래 개인정보를 수집하며, 해당 정보는 회원 관리 및 서비스 제공에 이용됩니다.</p>
    <ul>
      <li>- 아이디</li>
      <li>- 비밀번호</li>
      <li>- 이름</li>
      <li>- 이메일</li>
      <li>- 전화번호</li>
    </ul>
    <p>2. 수집한 개인정보는 본인의 동의 없이 타인에게 제공되지 않으며, 정보보호 관련 법률에 따라 안전하게 보호됩니다.</p>

    <h13>제 3조 (마케팅 정보 수신 동의)</h13>
    <p>1. 회원은 Green Wedding에서 제공하는 이벤트, 할인 혜택, 신상품 소식 등의 마케팅 정보를 이메일 또는 SMS로 수신하는 것에 동의합니다.</p>

    <h14>제 4조 (회원 탈퇴)</h14>
    <p>1. 회원은 언제든지 회원 탈퇴를 요청할 수 있으며, 이 경우 개인정보는 즉시 파기됩니다.</p>

    <h15>제 5조 (면책조항)</h15>
    <p>1. Green Wedding은 예기치 않은 서비스 중단, 시스템 장애, 데이터 손실 등으로 인한 문제에 대해 책임을 지지 않습니다.</p>
    <p>2. Green Wedding은 회원의 부주의, 비밀번호 유출, 제3자의 불법적인 접근 등으로 인해 발생한 피해에 대해서도 책임을 지지 않습니다.</p>
    <p>3. Green Wedding은 회원이 제공한 정보의 오류, 부정확성, 불법성 등으로 인해 발생한 문제에 대해서도 책임을 지지 않습니다.</p>
    <p>4. Green Wedding은 회원이 게시한 게시물의 내용, 신뢰성, 정확성 등에 대해 책임을 지지 않으며, 회원 개인이 게시한 내용에 대한 책임은 회원 본인에게 있습니다.</p>
    <p>5. Green Wedding은 예식장 예약, 결제, 서비스 이용 시 발생하는 문제, 손해, 분쟁 등에 대해서도 책임을 지지 않습니다.</p>
    <p>6. Green Wedding은 불가항력적인 사유로 인해 발생하는 서비스 중단, 지연, 오류 등에 대해서도 책임을 지지 않습니다.</p>
    <p>7. Green Wedding은 회원 간의 행위, 거래, 분쟁 등에 대해서는 개입하지 않으며, 회원 간 발생하는 모든 문제에 대해서도 책임을 지지 않습니다.</p>
    <p>8. Green Wedding은 회원이 약관을 위반하여 발생하는 문제, 손해, 법적 조치 등에 대해서도 책임을 지지 않습니다.</p>
    <p>9. 본 면책조항은 회원과 Green Wedding 간의 계약의 불공정성 또는 불완전성으로 인해 피해를 입게 될 경우에도 적용됩니다.</p>
    <!-- 추가적인 약관 내용을 여기에 작성하세요 -->
    <hr>
   <div class="agree-checkbox-container">
      <input type="checkbox" id="agree-checkbox" name="agree" required>
      <label class="agree-checkbox-label" for="agree-checkbox">본 약관에 동의합니다.</label>
    </div>
    <button id="join-button" onclick="joinAfterAgree();">회원가입</button>
  </div>
</div>
<!-- 약관 동의서 끝 -->

<!-- js 코드 -->
<script>
// 유정 - Login 부분 스크롤 내렸을 때 흰색 변경
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
    modalClose(); // 모달 닫기 함수 호출
  });
  $("#modal-open").click(function() {
    $("#popup").css('display', 'flex').hide().fadeIn();
    // 팝업을 flex속성으로 바꿔준 후 hide()로 숨기고 다시 fadeIn()으로 효과
  });

  function modalClose() {
    $("#popup").fadeOut(); // 페이드아웃 효과
  }
});

// 약관 동의서 모달
function showTermsModal() {
  $("#terms-modal").fadeIn();
}

// 회원가입 창 띄우기
function showJoin() {
  window.open("User/WriteForm", "팝업 테스트", "width=500, height=550, top=250, left=650");
}

// 약관 동의 후 회원가입 창 열기
function joinAfterAgree() {
  if (document.getElementById('agree-checkbox').checked) {
    showTermsModal(); // 약관 동의서 모달 띄우기
    showJoin(); // 회원가입 창 열기
    closeTermsModal(); // 약관 동의서 모달 닫기
  } else {
    alert('약관에 동의해야 회원가입이 가능합니다.');
  }
}

//약관 동의서 모달 닫기
function closeTermsModal() {
  var termsModal = document.getElementById('terms-modal');
  termsModal.style.display = 'none';
}


</script>