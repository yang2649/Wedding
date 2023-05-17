<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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

<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
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

.pointer-cursor {
	cursor: pointer;
}

</style>
</head>
<img src="/img/side_main.jpg" width="100%" height="100%">
<!-- 내 정보 보기 -->
<adminnav class="nav nav-pills nav-justified">
  <a class="nav-item nav-link" href="/Adminpage/Meminfomanager?memid=${member.memid}" style="color: #000000;">상세 정보 관리</a>
  <a class="nav-item nav-link active" href="/Adminpage/Memfavlistmanager?memid=${member.memid}" >찜 목록 관리</a>
  <a class="nav-item nav-link" href="/Adminpage/Memestilistmanager?memid=${member.memid}" style="color: #000000;">견적서 관리</a>
</adminnav>

<script>
  // 마우스 이벤트 리스너 추가
  var tabs = document.querySelectorAll('adminnav .nav-link:not(.active)');

  tabs.forEach(function(tab) {
    tab.addEventListener('mouseenter', function(e) {
      tab.style.backgroundColor = '#0474BC';
      tab.style.color = '#FFFFFF';
    });

    tab.addEventListener('mouseleave', function(e) {
      tab.style.backgroundColor = '';
      tab.style.color = '#000000';
    });
  });
</script>

<body>
	<div id="main">
		<h2><td>${ member.memname }</td> 회원님의 찜 목록</h2>
		<br>
		<table id="memfavTable">
			<thead>
				<tr>
					<th>드레스아이디</th>
					<th>드레스이름</th>
					<th>드레스용도</th>
					<th>드레스가격</th>
					<th>드레스이미지</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="admin" items="${ fList }">
					<tr>
						<td>${ admin.dressid    }</td>
						<td>${ admin.dressname  }</td>
						<td>${ admin.dressfor   }</td>
						<td>${ admin.dressprice }</td>
						<td>${ admin.dressimage }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script>
		// 테이블 row에 마우스 이벤트 리스너 추가
		var rows = document.querySelectorAll('#memFavTable tbody tr');
		rows.forEach(function(row) {
			row.addEventListener('mouseenter', function(e) {
				// 마우스가 row에 올라갔을 때의 동작
				row.classList.add('pointer-cursor'); // 손 모양 커서로 변경
				row.style.backgroundColor = 'lightgray';
			});

			row.addEventListener('mouseleave', function(e) {
				// 마우스가 row에서 벗어났을 때의 동작
				row.classList.remove('pointer-cursor'); // 커서 모양 원래대로
				row.style.backgroundColor = ''; // 이전의 배경색으로 복원하거나 다른 스타일 변경
			});

			// 클릭 이벤트 핸들러 추가
			row.addEventListener('click', function(e) {
				var favid = row.cells[0].innerText; // 회원 아이디 추출
				window.location.href = '/Adminpage/Meminfomanager?favid='
						+ favid; // 상세 정보 페이지로 이동
			});
		});
	</script>

	<style>
table {
	width: 95%;
	border-collapse: collapse;
	margin: 0 0 0 30px;
	text-align: center;
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

#moneyselect {
	display: flex;
}

p {
	marging: auto;
}
</style>
</head>
<!-- 헤더 부분 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/header.jsp" />


<!--유정 로그인 분리-->
<!-- 이 부분만 안뜸  -->
<jsp:include page="/WEB-INF/views/part_menu/login.jsp" />


<!-- 슬라이드 메뉴 분리 -->
<jsp:include page="/WEB-INF/views/adminslidemenu.jsp" />
<!-- 메인 메뉴 -->

<!-- 푸터 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/footer.jsp" />

</body>
</html>







