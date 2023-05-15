<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>


<!-- 내 정보 보기 -->

<img src="./img/side_main.jpg" width="100%" height="100%">
<nav class="nav nav-pills nav-justified">
	<a class="nav-item nav-link active" href="/Mypage01" style="background-color: rgb(200, 200, 200)">내 정보 보기</a> <a class="nav-item nav-link" href="/Mypage02" style="color: rgb(0, 0, 0)">찜리스트</a> <a class="nav-item nav-link " href="/Mypage03" style="color: rgb(0, 0, 0)">내 견적서</a>
</nav>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<body>
	<div class="container" style="margin: auto; padding: 15px 15px 15px 120px;">
		<div class="infocard">
			<div id="main">
				<h2 class=infotitle>회원 정보</h2>
				<table>
					<tr>
						<td>아이디</td>
						<td>${ clickedUser.memid }</td>
					</tr>
					<tr>
						<td>암호</td>
						<td>${ clickedUser.mempw }</td>
					</tr>
					<tr>
						<td>이름</td>
						<td>${ clickedUser.memname }</td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td>${ clickedUser.memph }</td>
					</tr>
					<tr>
						<td>이메일</td>
						<td>${ clickedUser.email }</td>
					</tr>
					<tr>
						<td>가입일</td>
						<td>${ clickedUser.joindate }</td>
					</tr>
					<tr>
						<td>접근권한</td>
						<td>${ clickedUser.lvl }</td>
					</tr>
					<tr>
						<td colspan="2">
						<a class="btn btn-primary btn-sm" href="/Adminpage/AdminUpdateForm?memid=${clickedUser.memid}">회원 정보 수정</a>&nbsp;&nbsp;
						<a class="btn btn-primary btn-sm" href="/User/Delete?memid=${ clickedUser.memid }">회원 삭제</a>&nbsp;&nbsp;</td>
					</tr>

				</table>
			</div>
		</div>
	</div>
</body>
</html>






