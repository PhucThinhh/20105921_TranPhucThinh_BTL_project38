<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="model.User"%>

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
}

header {
	background-color: #fff;
	padding: 10px 20px;
	display: flex;
	justify-content: space-between;
	align-items: center;
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
	flex: 0 1 calc(20% - 10px);
	/* Mỗi sản phẩm chiếm 20% chiều rộng và trừ đi khoảng cách giữa các sản phẩm */
	margin: 5px; /* Khoảng cách giữa các sản phẩm */
	padding: 10px; /* Khoảng cách bên trong sản phẩm */
	box-sizing: border-box;
}

.product img {
	max-width: 100%;
	height: auto;
}

.product p {
	margin: 10px 0;
}

.product-name {
	font-size: 14px;
	line-height: 1.2em; /* 1.2em để có khoảng cách giữa các dòng */
	max-height: 2.4em; /* Giới hạn ở 2 hàng (1.2em * 2) */
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 2; /* Giới hạn 2 hàng */
	-webkit-box-orient: vertical;
}

.product-price {
	color: red;
	font-size: 16px;
	font-weight: bold;
	line-height: 1.2em; /* 1.2em để có khoảng cách giữa các dòng */
	max-height: 2.4em; /* Giới hạn ở 2 hàng (1.2em * 2) */
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 2; /* Giới hạn 2 hàng */
	-webkit-box-orient: vertical;
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

a {
	text-decoration: none;
	color: black;
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
	<div class="banner">
		<img src="img/banner2.jpg" alt="Túi Xách Tay Nữ">
	</div>
	<div class="products">
		<div class="product">
			<a href="product13.jsp"> <img src="img/13.jpg"
				alt="Túi xách cầm tay màu xanh nhạt">
				<p class="product-name">Túi đeo chéo da nữ thiết kế phối khóa trang trí Yuumy Seasand YN186D màu đen</p>
					<p class="product-price">
					<span style="text-decoration: line-through;">650,000₫</span>
					379,000₫
				</p>
			</a>
		</div>
		<div class="product">
			<a href="product14.jsp"> <img src="img/14.jpg"
				alt="Túi xách cầm tay màu kem">
				<p class="product-name">Túi đeo chéo da nữ thiết kế phối khóa trang trí Yuumy Seasand YN186D màu hồng</p>
				<p class="product-price">
					<span style="text-decoration: line-through;">650,000₫</span>
					379,000₫
				</p>
			</a>
		</div>
		<div class="product">
			<a href="product15.jsp"> <img src="img/15.jpg"
				alt="Túi xách cầm tay màu đen">
				<p class="product-name">Túi đeo chéo da nữ nắp gập dáng vuông cá tính Yuumy Seasand YN197K màu kem</p>
				<p class="product-price">550,000₫</p>
			</a>
		</div>
		<div class="product">
			<a href="product16.jsp"> <img src="img/24.jpg"
				alt="Túi xách da nữ màu đen">
				<p class="product-name">Túi đeo chéo da nữ nắp gập dáng vuông cá tính Yuumy Seasand YN197D màu đen</p>
				<p class="product-price">550,000₫</p>
			</a>
		</div>
		<div class="product">
			<a href="product17.jsp"> <img src="img/17.jpg"
				alt="Túi xách cầm tay màu xanh nhạt">
				<p class="product-name">Túi du lịch đa năng cỡ lớn Yuumy Seasand YMTR6K Màu kem</p>
				<p class="product-price">
					<span style="text-decoration: line-through;">720,000₫</span>
					449,000₫
				</p>
			</a>
		</div>
	</div>
	<div class="products">
		<div class="product">
			<a href="product18.jsp"> <img src="img/18.jpg"
				alt="Túi xách cầm tay màu kem">
				<p class="product-name">Balo da nữ công sở đựng laptop cỡ lớn Yuumy Seasand YBA77KT Màu kem tây</p>
				<p class="product-price">620,000₫</p>
			</a>
		</div>
		<div class="product">
			<a href="product19.jsp"> <img src="img/19.jpg"
				alt="Túi xách cầm tay màu đen">
				<p class="product-name">Túi đeo chéo da nữ thiết kế trần trám Yuumy Seasand YN136XA màu xanh nhạt</p>
					<p class="product-price">
					<span style="text-decoration: line-through;">620,000₫</span>
					339,000₫
				</p>
			</a>
		</div>
		<div class="product">
			<a href="product20.jsp"> <img src="img/20.jpg"
				alt="Túi xách da nữ màu đen">
				<p class="product-name">Túi đeo chéo da nữ thiết kế trần trám Yuumy Seasand YN136D màu đen</p>
				<p class="product-price">
					<span style="text-decoration: line-through;">520,000₫</span>
					299,000₫
				</p>
			</a>
		</div>
		<div class="product">
			<a href="product21.jsp"> <img src="img/21.jpg"
				alt="Túi xách cầm tay màu xanh nhạt">
				<p class="product-name">Túi đeo chéo da nữ nắp gập dáng vuông cá tính Yuumy Seasand YN197XN màu xanh ngọc</p>
				<p class="product-price">
					<span style="text-decoration: line-through;">540,00đ₫</span>
					339,00đ
				</p>
			</a>
		</div>
		<div class="product">
			<a href="product22.jsp"> <img src="img/22.jpg"
				alt="Túi xách cầm tay màu kem">
				<p class="product-name">Túi đeo chéo da nữ họa tiết caro Yuumy Seasand YN140D Màu đen</p>
				<p class="product-price">
					<span style="text-decoration: line-through;">650,000₫</span>
					339,000₫
				</p>
			</a>
		</div>
<div class="products">
		<div class="product">
			<a href="product13.jsp"> <img src="img/13.jpg"
				alt="Túi xách cầm tay màu xanh nhạt">
				<p class="product-name">Túi đeo chéo da nữ thiết kế phối khóa trang trí Yuumy Seasand YN186D màu đen</p>
					<p class="product-price">
					<span style="text-decoration: line-through;">650,000₫</span>
					379,000₫
				</p>
			</a>
		</div>
		<div class="product">
			<a href="product14.jsp"> <img src="img/14.jpg"
				alt="Túi xách cầm tay màu kem">
				<p class="product-name">Túi đeo chéo da nữ thiết kế phối khóa trang trí Yuumy Seasand YN186D màu hồng</p>
				<p class="product-price">
					<span style="text-decoration: line-through;">650,000₫</span>
					379,000₫
				</p>
			</a>
		</div>
		<div class="product">
			<a href="product15.jsp"> <img src="img/15.jpg"
				alt="Túi xách cầm tay màu đen">
				<p class="product-name">Túi đeo chéo da nữ nắp gập dáng vuông cá tính Yuumy Seasand YN197K màu kem</p>
				<p class="product-price">550,000₫</p>
			</a>
		</div>
		<div class="product">
			<a href="product16.jsp"> <img src="img/24.jpg"
				alt="Túi xách da nữ màu đen">
				<p class="product-name">Túi xách da nữ chần chỉ kiểu dáng hiện
					đại Yuummy Seasand YTX52D màu đen</p>
				<p class="product-price">550,000₫</p>
			</a>
		</div>
		<div class="product">
			<a href="product17.jsp"> <img src="img/17.jpg"
				alt="Túi xách cầm tay màu xanh nhạt">
				<p class="product-name">Túi du lịch đa năng cỡ lớn Yuumy Seasand YMTR6K Màu kem</p>
				<p class="product-price">
					<span style="text-decoration: line-through;">720,000₫</span>
					449,000₫
				</p>
			</a>
		</div>
	</div></div>
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