<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="model.User"%>

<%
// Lấy session hiện tại và người dùng từ session attribute
User user = (User) session.getAttribute("user");

// Kiểm tra nếu người dùng chưa đăng nhập, chuyển hướng đến trang đăng nhập
if (user == null) {
	response.sendRedirect("login.jsp");
	return;
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Thông tin người dùng</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 20px;
	background-color: #f0f0f0;
}

.container {
	max-width: 600px;
	margin: 0 auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
	text-align: center;
	color: #333;
}

.info {
	margin: 20px 0;
}

.info p {
	margin: 10px 0;
	font-size: 18px;
}

.info span {
	font-weight: bold;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Thông tin người dùng</h1>
		<div class="info">
			<p>
				<span>ID:</span>
				<%=user.getId()%></p>
			<p>
				<span>Tên người dùng:</span>
				<%=user.getUsername()%></p>
		</div>
	</div>
</body>
</html>
