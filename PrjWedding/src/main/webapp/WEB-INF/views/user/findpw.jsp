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

    h2 {
        text-align: center;
        margin-bottom: 30px;
    }

    form {
        display: flex;
        flex-direction: column;
        align-items: center;
        max-width: 400px;
        margin: 0 auto;
        padding: 20px;
        background-color: #222;
        border-radius: 10px;
    }

    label {
        color: #fff;
        margin-bottom: 10px;
    }

    input[type="text"],
    input[type="email"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border-radius: 5px;
        border: none;
    }

    input[type="submit"] {
        background-color: #555;
        color: #fff;
        padding: 10px 20px;
        border-radius: 5px;
        border: none;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    input[type="submit"]:hover {
        background-color: #777;
    }
</style>
</head>
<body>
<div class="popup-container">
    <div class="popup">
        <h2>Find your Password</h2>
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