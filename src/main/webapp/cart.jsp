<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="model.User"%>
<%@ page import="java.util.Map"%>
<%@ page import="model.Product"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Giỏ Hàng</title>
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
	transition: color 0.3s; /* Hiệu ứng chuyển màu mượt mà */
}

header nav a:hover {
	color: #007BFF; /* Màu chữ khi di chuột qua */
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
	transition: background-color 0.3s; /* Hiệu ứng chuyển màu mượt mà */
}

.login-button:hover {
	background-color: #0056b3; /* Màu nền khi di chuột qua */
}

.banner {
	text-align: center;
	background-color: #fce4ec;
	padding: 20px 0;
}

.container {
	margin: 20px;
}

table {
	width: 100%;
	border-collapse: collapse;
}

table, th, td {
	border: 1px solid #ddd;
}

th, td {
	padding: 8px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
}

img {
	max-width: 100%;
	height: auto;
}

footer {
	background-color: #232323;
	padding: 20px 0;
	margin-top: 20px;
	border-top: 1px solid #e9ecef;
}

footer .footer-container {
	display: flex;
	justify-content: space-around;
	flex-wrap: wrap;
}

.footer-section {
	flex: 1;
	padding: 20px;
	min-width: 200px;
}

.footer-section h4 {
	margin-top: 0;
	color: #ffff;
}

.footer-section ul {
	list-style: none;
	padding: 0;
}

.footer-section ul li {
	margin: 5px 0;
}

.footer-section ul li a {
	color: #9f9f9f;
	text-decoration: none;
}

.footer-section ul li a:hover {
	color: #007BFF;
}

footer p {
	color: #6c757d;
	margin: 0;
}

footer a {
	color: #007BFF;
	text-decoration: none;
}

footer a:hover {
	text-decoration: underline;
}

.checkout-button {
	display: block;
	margin: 20px 0;
	padding: 10px 20px;
	background-color: #007BFF;
	color: white;
	border: none;
	border-radius: 5px;
	text-decoration: none;
	cursor: pointer;
	text-align: center;
	transition: background-color 0.3s; /* Hiệu ứng chuyển màu mượt mà */
}

.checkout-button:hover {
	background-color: #0056b3; /* Màu nền khi di chuột qua */
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
				href="sale.jsp">Sale Off</a>  <a href="contact.jsp">Liên Hệ</a> <a href="cart.jsp">Giỏ
				Hàng</a>
			<!-- Thêm liên kết Giỏ Hàng -->
			<%
			if (session.getAttribute("user") != null) {
			%>
			<a href="user_info.jsp"><%=((User) session.getAttribute("user")).getUsername()%></a>
			<a href="logout.jsp" class="login-button">Đăng Xuất</a>
			<%
			} else {
			%>
			<a href="login.jsp" class="login-button">Đăng Nhập</a>
			<%
			}
			%>
		</nav>
	</header>

	<div class="container">
		<h2>Giỏ Hàng</h2>
		<table>
			<tr>
				<th>Hình ảnh</th>
				<th>Tên sản phẩm</th>
				<th>Giá</th>
				<th>Màu sắc</th>
				<th>Số lượng</th>
				<th>Tổng cộng</th>
			</tr>
			<%
			Map<Integer, Product> cart = (Map<Integer, Product>) session.getAttribute("cart");
			if (cart != null && !cart.isEmpty()) {
				double total = 0;
				for (Product product : cart.values()) {
					double subtotal = product.getPrice() * product.getQuantity();
					total += subtotal;
			%>
			<tr>
				<td><img src="<%=product.getImageUrl()%>"
					alt="<%=product.getName()%>"></td>
				<td><%=product.getName()%></td>
				<td><%=product.getPrice()%>đ</td>
				<td><%=product.getColor()%></td>
				<td><%=product.getQuantity()%></td>
				<td><%=subtotal%>đ</td>
			</tr>
			<%
			}
			%>
			<tr>
				<td colspan="5" style="text-align: right;"><strong>Tổng
						cộng:</strong></td>
				<td><%=total%>đ</td>
			</tr>
			<%
			} else {
			%>
			<tr>
				<td colspan="6" style="text-align: center;">Giỏ hàng của bạn
					hiện đang trống.</td>
			</tr>
			<%
			}
			%>
		</table>

		<%
		if (cart != null && !cart.isEmpty()) {
		%>
		<a href="checkout.jsp" class="checkout-button">Tiến Hành Thanh
			Toán</a>
		<%
		}
		%>
	</div>

	<footer>
		<div class="footer-container">
			<div class="footer-section">
				<h4>Giới thiệu</h4>
				<p>Hotline: 0973 384 798</p>
				<p>(08:30-20:00 từ T2 - T7 trừ Lễ, Tết)</p>
				<p>Góp ý - Khiếu nại: 0973 384 798</p>
				<p>(08:30-18:00 Thứ 2 - Thứ 7, trừ Lễ Tết)</p>
			</div>
			<div class="footer-section">
				<h4>KHÁCH HÀNG DOANH NGHIỆP - B2B</h4>
				<p>
					Email: <a href="mailto:b2b@yuumy.vn">b2b@yuumy.vn</a>
				</p>
				<p>Phone: 0973 384 798</p>
			</div>
			<div class="footer-section">
				<h4>Liên kết</h4>
				<ul>
					<li><a href="search.jsp">Tìm kiếm</a></li>
					<li><a href="about.jsp">Giới thiệu</a></li>
					<li><a href="warranty.jsp">Chính sách bảo hành</a></li>
					<li><a href="return.jsp">Chính sách đổi trả</a></li>
					<li><a href="privacy.jsp">Chính sách bảo mật</a></li>
					<li><a href="payment.jsp">Chính sách thanh toán</a></li>
					<li><a href="shipping.jsp">Chính sách giao hàng</a></li>
				</ul>
			</div>
			<div class="footer-section">
				<h4>Liên kết</h4>
				<ul>
					<li><a href="new.jsp">HÀNG MỚI</a></li>
					<li><a href="products.jsp">SẢN PHẨM</a></li>
					<li><a href="sale.jsp">SALE OFF</a></li>
					<li><a href="yuummy_collection.jsp">BST YUUMMY</a></li>
					<li><a href="contact.jsp">LIÊN HỆ</a></li>
				</ul>
			</div>
			<div class="footer-section">
				<h4>Thông tin liên hệ</h4>
				<p>Địa chỉ: 38/4 Đường Liên Xã, Bắc Lân 1, Xã Bà Điểm, Huyện Hóc
					Môn, TP. Hồ Chí Minh</p>
				<p>
					Email: <a href="mailto:hi@yuumy.vn">hi@yuumy.vn</a>
				</p>
			</div>
		</div>
		<p>&copy; 2024 Bản quyền thuộc về Yuumy. Powered by Haravan</p>
		<p>HKD Túi xách Lata Số ĐKKD 41S8032562 do Phòng Tài Chính - Kế
			Hoạch, UBND Huyện Hóc Môn cấp ngày 16/08/2023. Người đại diện: Phạm
			Thị Tĩnh. Địa chỉ trụ sở hộ kinh doanh: 38/4 Ấp Bắc Lân, Xã Bà Điểm,
			Huyện Hóc Môn, TP. Hồ Chí Minh.</p>
	</footer>

</body>
</html>
