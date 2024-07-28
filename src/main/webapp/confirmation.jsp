<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Xác Nhận Thanh Toán</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            text-align: center;
            margin: 50px;
        }

        .message {
            font-size: 24px;
            color: green;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Xác Nhận Thanh Toán</h1>
    <p class="message"><%= request.getAttribute("message") %></p>
    <a href="index.jsp">Quay lại Trang Chủ</a>
</div>
</body>
</html>
