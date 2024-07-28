<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Yuummy - Túi Xách Tay Nữ</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-color: #f9f9f9;
}

header {
	background-color: #fff;
	padding: 10px 20px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	position: fixed;
	top: 0;
	width: 100%;
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

.banner {
	text-align: center;
	background-color: #fce4ec;
	padding: 20px 0;
}

.banner img {
	max-width: 100%;
}

.products {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	padding: 20px;
}

.product {
	border: 1px solid #ccc;
	border-radius: 5px;
	margin: 10px;
	padding: 20px;
	text-align: center;
	width: 200px;
}

.product img {
	max-width: 100%;
	height: auto;
}

.product p {
	margin: 10px 0;
}

.register-container {
	background-color: white;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	width: 300px;
	text-align: center;
}

.register-container h2 {
	margin-bottom: 20px;
}

.register-container form {
	display: flex;
	flex-direction: column;
}

.register-container input {
	margin-bottom: 15px;
	padding: 10px;
	font-size: 16px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.register-container button {
	padding: 10px;
	font-size: 16px;
	background-color: #007BFF;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.register-container button:hover {
	background-color: #0056b3;
}

.register-container a {
	color: #007BFF;
	text-decoration: none;
}

.register-container a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
	<header>
		<div>
			<a href="index.jsp"><img src="img/logo.jpg" alt="Yuummy"></a>
		</div>
		<nav>
			<a href="new.jsp">Hàng Mới</a> <a href="products.jsp">Sản Phẩm</a> <a
				href="sale.jsp">Sale Off</a>  <a href="contact.jsp">Liên Hệ</a> <a href="login.jsp"
				class="login-button">Đăng Nhập</a>
		</nav>
	</header>
	<div class="register-container">
		<h2>Đăng Ký</h2>
		<form action="register_process.jsp" method="post">
			<input type="text" name="username" placeholder="Tên đăng nhập"
				required> <input type="password" name="password"
				placeholder="Mật khẩu" required>
			<button type="submit">Đăng Ký</button>
		</form>
		<p>
			Đã có tài khoản? <a href="login.jsp">Đăng nhập</a>
		</p>
	</div>
</body>
</html>
