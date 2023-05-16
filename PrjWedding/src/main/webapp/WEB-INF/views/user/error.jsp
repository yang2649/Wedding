<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }

        h2 {
            color: #333;
            text-align: center;
        }

        .message {
            color: red;
            text-align: center;
            margin-bottom: 20px;
        }

        .link {
            text-align: center;
            margin-bottom: 20px;
        }

        .link a {
            color: #007bff;
            text-decoration: none;
        }
    </style>
    <script>
        function goBack() {
            window.history.back();
        }
    </script>
</head>
<body>
    <h2>Error</h2>
    <div class="message">
        <%= request.getAttribute("message") %>
    </div>
    <div class="link">
        <a href="javascript:goBack()">Go Back</a>
    </div>
</body>
</html>