<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="/img/favicon.ico">
<title>ID Result</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #333;
        color: #fff;
        padding: 20px;
    }

    .popup-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }

    .popup {
        max-width: 400px;
        background-color: rgba(0, 0, 0, 0.8);
        padding: 20px;
        border-radius: 10px;
        text-align: center;
    }

    h2 {
        margin-bottom: 30px;
    }

    .message,
    .result {
        margin-bottom: 20px;
        padding: 10px;
        font-size: 18px;
        border-radius: 5px;
    }

    .message {
        background-color: rgba(255, 255, 255, 0.2);
    }

    .result {
        background-color: rgba(255, 255, 255, 0.2);
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
</style>
</head>
<body>
<!-- 수정 -->
<div class="popup-container">
    <div class="popup">
        <h2>Your ID</h2>
        <c:if test="${invalidInputs}">
            <div class="message">
                입력한 정보가 일치하지 않습니다.
            </div>
        </c:if>
        <c:if test="${!invalidInputs}">
            <div class="result">
                Your ID is: ${memid}
            </div>
        </c:if>
        <div class="link">
            <a href="/">Return to login page</a>
        </div>
    </div>
</div>
</body>
</html>