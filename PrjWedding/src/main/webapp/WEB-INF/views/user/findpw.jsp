<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Find Password</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="/img/favicon.ico">
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

    h1 {
        margin-bottom: 30px;
    }

    label,
    input,
    input[type="submit"] {
        display: block;
        margin-bottom: 10px;
        width: 100%;
    }

    input[type="submit"] {
        background-color: #fff;
        color: #333;
        padding: 10px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #eee;
    }
</style>
</head>
<body>
<div class="popup-container">
    <div class="popup">
        <h1>Find Password</h1>
        <form action="/Findpwrs" method="post" onsubmit="return validateForm()">
            <label for="memid">ID:</label>
            <input type="text" id="memid" name="memid" value="${user.memid}" required>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="${user.email}" required>
            <input type="submit" value="Find Password">
        </form>
    </div>
</div>

<script>
/* 유효성 검사 */
function validateForm() {
    var memid = document.getElementById("memid").value;
    var email = document.getElementById("email").value;
    if (memid.trim() === "" || email.trim() === "") {
        alert("Please enter your ID and email.");
        return false;
    }
    var emailRegex = /\S+@\S+\.\S+/;
    if (!emailRegex.test(email)) {
        alert("Invalid email format.");
        return false;
    }
    return true;
}
</script>
</body>
</html>