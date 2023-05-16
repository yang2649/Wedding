<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="/img/favicon.ico">
<title>Password Result</title>

<style>
body {
	font-family: Arial, sans-serif;
	background-color: #333;
	color: #fff;
	padding: 20px;
}

h2 {
	text-align: center;
	margin-bottom: 30px;
}

.message {
	background-color: rgba(255, 255, 255, 0.2);
	padding: 10px;
	text-align: center;
	margin-bottom: 20px;
}

.result {
	background-color: rgba(255, 255, 255, 0.2);
	padding: 20px;
	text-align: center;
	font-size: 18px;
	margin-bottom: 30px;
}

.link {
	text-align: center;
	margin-bottom: 20px;
}

.link a {
	color: #fff;
	text-decoration: none;
	border-bottom: 1px solid #fff;
	padding-bottom: 2px;
	transition: border-bottom-color 0.3s;
}

.link a:hover {
	border-bottom-color: transparent;
}

/* 모달 스타일 */
.modal {
	display: none;
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.5);
}

.modal-content {
	background-color: #fefefe;
	margin: 15% auto;
	padding: 20px;
	border: 1px solid #888;
	width: 80%;
	max-width: 400px;
	border-radius: 5px;
	text-align: center;
}

.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}
</style>
</head>
<body>
	<h2>Your Password</h2>
	<c:if test="${invalidInputs}">
		<div class="message">입력한 정보가 일치하지 않습니다.</div>
	</c:if>
	<c:if test="${!invalidInputs}">
		<div class="result">Your Password is: ${mempw}</div>
	</c:if>
	<div class="link">
		<a href="/">Return to login page</a>
	</div>

	<!-- 모달 -->
	<div id="myModal" class="modal">
		<div class="modal-content">
			<span class="close">&times;</span>
			<h3>Message</h3>
			<p>입력한정보가 일치하지 않습니다.</p>
		</div>

	</div>
	<script>
		// 모달 표시
		function showModal() {
			var modal = document.getElementById("myModal");
			modal.style.display = "block";
		}

		// 모달 닫기
		function closeModal() {
			var modal = document.getElementById("myModal");
			modal.style.display = "none";
		}

		// 페이지 로드 시 모달 확인
		window.onload = function() {
			var invalidInputs = $
			{
				invalidInputs
			}
			;
			if (invalidInputs) {
				showModal();
			}
		};

		// 모달 닫기 버튼 클릭 시
		var closeBtn = document.getElementsByClassName("close")[0];
		closeBtn.onclick = function() {
			closeModal();
		};
	</script>
</body>
</html>
