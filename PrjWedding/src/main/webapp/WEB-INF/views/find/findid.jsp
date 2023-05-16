<!DOCTYPE html>
<html>
<head>
    <title>아이디 찾기</title>
    <style>
         body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
        }

        form {
            max-width: 400px;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f8f8f8;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"],
        input[type="email"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>아이디 찾기</h1>
 	<form action="findid.jsp" method="GET">
        <label for="memname">이름:</label>
        <input type="text" id="memname" name="memname" required><br><br>
        <label for="email">이메일:</label>
        <input type="email" id="email" name="email" required><br><br>
        <input type="submit" value="아이디 찾기">
    </form>
</body>
</html>