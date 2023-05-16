<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>아이디 찾기</title>
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
    <h2>Find your ID</h2>
    <form action="/Findidrs" method="post" onsubmit="return validateForm()">
        <label for="memname">Name</label>
        <input type="text" id="memname" name="memname" value="${user.memname}" required>
        <label for="email">Email</label>
        <input type="email" id="email" name="email" value="${user.email}" required>
        <input type="submit" value="Find ID">
    </form>

    <script>
    /* 유효성 검사 */
    function validateForm() {
        var memname = document.getElementById("memname").value;
        var email = document.getElementById("email").value;
        if (memname == "" || email == "") {
            alert("Name and Email must be filled out");
            return false;
        }
        var re = /\S+@\S+\.\S+/;
        if(!re.test(email)){
            alert("올바른 이메일 형식이 아닙니다.");
            return false;
        }
        return true;
    }
    </script>
</body>
</html>