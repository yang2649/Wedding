<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- JSTL 라이브러리 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<!-- 기타 head 요소 분리 -->
<jsp:include page="/WEB-INF/views/part_menu/head_resources.jsp" />

</head>

<meta charset="UTF-8">

<body>

	<!-- 헤더 부분 분리 -->
	<jsp:include page="/WEB-INF/views/part_menu/header.jsp" />

	<!--유정 로그인 분리-->
	<jsp:include page="/WEB-INF/views/part_menu/login.jsp" />

	<!-- 슬라이드 메뉴 분리 -->
	<jsp:include page="/WEB-INF/views/part_menu/slidemenu.jsp" />

	</br>
	</br>
	</br>
	</br>
	</br>
	</br>
	<!-- 견적서 작성 폼 -->
	<div class="estimate-container-lee">

		<div class="estimate-form-lee" style="text-align: center;">
			<h1>견적서 작성</h1>
			<!-- 견적서 작성 폼 -->
			<form action="${pageContext.request.contextPath}/submitEstimate"
				method="post">
				<label for="title">견적서 제목</label> <input type="text" id="title"
					name="title" required><br> <label for="hall">홀</label>
				<input type="text" id="hall" name="hall" required><br>
				<label for="buffet">뷔페</label> <input type="text" id="buffet"
					name="buffet" required><br> <label for="mainDress">본식
					드레스</label> <input type="text" id="mainDress" name="mainDress" required><br>
				<label for="studio">스튜디오</label> <input type="text" id="studio"
					name="studio" required><br> <label
					for="additionalOptions">추가 옵션 목록</label>
				<textarea id="additionalOptions" name="additionalOptions" rows="5"
					cols="50" required></textarea>
				<br> <label for="totalPrice">총 가격</label> <input type="number"
					id="totalPrice" name="totalPrice" required><br> <input
					type="submit" value="견적서 제출">
			</form>
		</div>

		<div class="estimate-form-lee">
			<h2>견적서 결과</h2>
			<table border="1">
				<tr>
					<th>견적서 제목</th>
					<td>${estimate.ESTINAME}</td>
				</tr>
				<tr>
					<th>홀</th>
					<td>${estimate.HALLID}</td>
				</tr>
				<tr>
					<th>뷔페</th>
					<td>${estimate.CATERINGID}</td>
				</tr>
				<tr>
					<th>본식 드레스</th>
					<td>${estimate.DRESSID}</td>
				</tr>
				<tr>
					<th>스튜디오</th>
					<td>${estimate.STUDIOID}</td>
				</tr>
				<tr>
					<th>총 가격</th>
					<td>${estimate.TOTALCOST}</td>
				</tr>
			</table>
			<a href="${pageContext.request.contextPath}/estimate">다시 견적서 작성하기</a>
		</div>
	</div>

	<!-- 푸터 분리 -->
	<jsp:include page="/WEB-INF/views/part_menu/footer.jsp" />


</body>


</html>