<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Estimate List</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- css 부분 사용 -->
<link rel="shortcut icon" href="/img/favicon.ico">
<link rel="stylesheet" href="./css/loginstyle.css">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/styles.css">
<link rel="stylesheet" href="/css/slide.css">

<!-- 기타 head 요소 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/head_resources.jsp" />

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
<body>
	<div id="main">
		<h2>견적서 목록</h2>
		<table id="estimateTable">
			<thead>
				<tr>
					<th>회원 아이디</th>
					<th>회원 이름</th>
					<th>견적서 이름</th>
					<th>예약 일</th>
					<th>예약 시간</th>
					<th>예상 하객수</th>
					<th>홀</th>
					<th>피로연</th>
					<th>스튜디오</th>
					<th>드레스 이름</th>
					<th>예상 비용</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="admin" items="${ eList }">
					<tr>
						<td>${ admin.memid         }</td>
						<td>${ admin.memname       }</td>
						<td>${ admin.estiname      }</td>
						<td>${ admin.resdate       }</td>
						<td>${ admin.restime       }</td>
						<td>${ admin.guestnum      }</td>
						<td>${ admin.hallname      }</td>
						<td>${ admin.cateringtype  }</td>
						<td>${ admin.studioname    }</td>
						<td>${ admin.dressname     }</td>
						<td>${ admin.totalcost     }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script>
		// 테이블 row에 마우스 이벤트 리스너 추가
		var rows = document.querySelectorAll('#estimateTable tbody tr');
		rows.forEach(function(row) {
			row.addEventListener('mouseenter', function(e) {
				// 마우스가 row에 올라갔을 때의 동작
				row.cl
				assList.add('pointer-cursor'); // 손 모양 커서로 변경
				row.style.backgroundColor = 'lightgray';
			});

			row.addEventListener('mouseleave', function(e) {
				// 마우스가 row에서 벗어났을 때의 동작
				row.classList.remove('pointer-cursor'); // 커서 모양 원래대로
				row.style.backgroundColor = ''; // 이전의 배경색으로 복원하거나 다른 스타일 변경
			});

			// 클릭 이벤트 핸들러 추가
			row.addEventListener('click', function(e) {
				var cols = row.cells; // 현재 클릭된 행의 모든 셀 가져오기
				var estiid = cols[0].innerText; // 첫 번째 셀에서 견적서 ID 추출
				var link = document.createElement('a'); // 링크 엘리먼트 생성
				link.href = '/Adminpage/memestilistmanager?memid=' + memid; // 상세 정보 페이지 URL 설정
				link.target = '_blank'; // 새 창에서 열도록 설정
				link.click(); // 링크 클릭
			});

		});
	</script>
<head>
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