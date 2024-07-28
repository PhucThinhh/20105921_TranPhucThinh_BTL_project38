<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.User" %>
<%@ page import="java.util.Map" %>
<%@ page import="model.Product" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thanh Toán</title>
    <style>
        /* Add your CSS styles here */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #fff;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid #e9ecef;
        }

        header img {
            height: 40px;
        }

        header nav {
            display: flex;
            align-items: center;
        }

        header nav a {
            margin-left: 20px;
            text-decoration: none;
            color: #333;
        }

        .login-button {
            margin-left: 20px;
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
        }

        .container {
            margin: 20px;
        }

        form {
            max-width: 500px;
            margin: auto;
        }

        form input, form select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .submit-button {
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<header>
    <div>
        <a href="index.jsp"><img src="logo.png" alt="Yuummy"></a>
    </div>
    <nav>
        <a href="new.jsp">Hàng Mới</a>
        <a href="products.jsp">Sản Phẩm</a>
        <a href="sale.jsp">Sale Off</a>
        <a href="yuummy_collection.jsp">BST Yuummy</a>
        <a href="contact.jsp">Liên Hệ</a>
        <% if (session.getAttribute("user") != null) { %>
            <a href="user_info.jsp"><%= ((User) session.getAttribute("user")).getUsername() %></a>
            <a href="logout.jsp" class="login-button">Đăng Xuất</a>
        <% } else { %>
            <a href="login.jsp" class="login-button">Đăng Nhập</a>
        <% } %>
    </nav>
</header>

<div class="container">
    <h2>Thanh Toán</h2>
    <form action="ProcessPaymentServlet" method="post">
        <label for="name">Họ và tên:</label>
        <input type="text" id="name" name="name" required>
        
        <label for="address">Địa chỉ:</label>
        <input type="text" id="address" name="address" required>
        
        <label for="city">Thành phố:</label>
        <input type="text" id="city" name="city" required>
        
        <label for="zip">Mã bưu điện:</label>
        <input type="text" id="zip" name="zip" required>
        
        <label for="phone">Số điện thoại:</label>
        <input type="text" id="phone" name="phone" required>
        
        <label for="payment">Phương thức thanh toán:</label>
        <select id="payment" name="payment" required>
            <option value="credit_card">Thẻ tín dụng</option>
            <option value="cod">Thanh toán khi nhận hàng</option>
        </select>
        
        <button type="submit" class="submit-button">Thanh Toán</button>
    </form>
</div>
</body>
</html>
