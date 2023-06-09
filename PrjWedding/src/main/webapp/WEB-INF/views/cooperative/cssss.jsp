<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원 등록</title>
<link rel="shortcut icon" href="/img/favicon.ico">
<link rel="stylesheet" href="/css/common.css" />
<style>
/* 슬라이딩 메뉴 스타일 */
ul.sliding-menu, ul.sliding-menu ul {
  list-style-type: none;
  padding: 0;
  margin: 0;
}

ul.sliding-menu li {
  position: relative;
}

ul.sliding-menu li > a {
  display: block;
}

ul.sliding-menu ul {
  display: none;
  position: absolute;
  top: 0;
  left: 100%;
  min-width: 200px;
  background-color: #fff;
  border: 1px solid #ccc;
}

ul.sliding-menu li:hover > ul {
  display: block;
}

/* 상단 헤더 추가 */
.sdm {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 15px;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  background-color: #fff;
  z-index: 999;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.sdm h2 {
  margin: 0;
  padding: 0 15px;
  text-align: left;
  font-size: 30px;
  font-family: 'Times New Roman';
}

.sdm span {
  margin-left: auto;
}

.sdm a {
  text-decoration: none;
  color: #333;
  font-size: 16px;
  margin-left: auto; /* 이전에는 margin-right를 조절했는데 margin-left을 auto로 변경 */
  padding: 5px 3px;
  transition: background-color 0.3s ease;
}


.sdm .sdm-title {
  text-align: center;
}

.sdm a:last-child {
  margin-right: 15px; /* 5px에서 15px로 수정 */
}

.sdm a:hover {
  background-color: #333;
  color: #fff;
}

.menu-toggle {
  display: flex;
  padding: 15px;
  position: fixed;
  top: 35px;
  right: 65px;
  width: 35px;
  height: 35px;
  cursor: pointer;
  z-index: 1001;
  font-family: 'Cinzel', serif;
  font-size: 20px;
}

.menu-toggle a {
  text-decoration: none;
  color: #333;
  font-size: 16px;
  margin: 0 15px 0 0;
  transition: background-color 0.3s ease;
  padding: 10px 5px;
}

.menu-toggle.white {
  color: #fff;
}

@media screen and (max-width: 768px) {
  .menu-toggle a {
    display: block;
    margin: 5px 0;
  }
}

.sliding-menu {
  position: fixed;
  top: 50px;
  right: -400px;
  width: 350px;
  height: 100%;
  background-color: rgba(255, 255, 255, 0.5);
  transition: right 1.0s ease;
  z-index: 999;
  font-weight: bold;
  font-family: 'Cinzel', serif;
  overflow-y: auto;
  padding-bottom: 50px;
}

.sliding-menu.open {
  right: 0;
}

.sliding-menu-overlay {
  display: none;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.5);
  z-index: 998;
}

.sliding-menu.open + .sliding-menu-overlay {
  display: block;
}

.sliding-menu ul {
  margin: 0;
  padding: 0;
  display: flex;
  flex-direction: column;
  align-items: center;
  list-style-type: none;
}

.sliding-menu > ul > li {
  text-align: center; /* 가운데 정렬 추가 */
}

.sliding-menu li {
  text-align: center;
}
.sliding-menu  li hr {
  margin: 10px 0;
  border: none;
  font-weight: bold;
  border-bottom: 1px solid #ccc;
}

.sliding-menu  a {
	margin: 0 5px;
}

li {
  display: flex;
  justify-content: center;
  font-family: 'Cinzel', serif;
  font-size: 20px;
}

.sdm span {
  margin-right: auto;
}

.sdm .sdm-links {
  display: flex;
  justify-content: center; /* 가운데 정렬 */
  align-items: center;
  margin-right: 40px;
}

.sdm .sdm-links a:last-child {
  margin-right: 0; /* 이전에 15px이었던 margin-right 값을 0으로 변경 */
}

.sdm .sdm-links a:not(:last-child) {
  margin-right: 15px;
}

/* 헤더가 사라졌다 나타나는 기능을 위한 추가 스타일 */
.hide-header {
  transform: translateY(-100%);
  transition: transform 0.3s ease-in-out;
}


#main-slider {
  position: relative;
  overflow: hidden;
  width: 100%;
  height: auto;
  margin: 0; /* 변경된 부분 */
  padding: 0; /* 변경된 부분 */
}

#main-slider img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.bx-wrapper {
	position: relative;
	margin: 0 auto;
	padding: 0;
	*zoom: 1;
}

.bx-wrapper img {
	max-width: 100%;
	display: block;
}

.bxslider {
	margin: 0;
	padding: 0;
}

.bx-viewport {
	position: relative;
	width: 100%;
	height: 400px;
	overflow: hidden;
	margin: 0;
	padding: 0;
}

.bxslider li {
	width: 100%;
	height: 400px;
	display: block;
}

body {
	padding-top: 80px; /* 헤더 높이만큼 패딩 추가 */
}



</style>

</head>
<body>
	<div class="sdm">

  <span style="margin-right: auto;">
    <a href="/Cooperative/Studio" style="margin: 0 5px;">스튜디오</a>
    <a href="/Cooperative/Dress" style="margin: 0 5px;">드레스</a>
    <a href="/Cooperative/Makeup" style="margin: 0 5px;">메이크업</a>
    <a href="/Cooperative/Hanbog" style="margin: 0 5px;">한복</a>
    <a href="/Cooperative/Invitation" style="margin: 0 5px;">청접장</a>
  </span>
  </div>
</body>
</html>








