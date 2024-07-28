<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="model.User"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contact Us - Yuummy</title>
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

.contact-container {
    display: flex;
    padding: 20px;
}

.map {
    flex: 1;
    max-width: 50%;
    padding-right: 20px;
    height: 500px; /* Đặt chiều cao cụ thể cho bản đồ */
    overflow: hidden; /* Đảm bảo bản đồ không bị tràn ra ngoài khung */
}

.contact-content {
    flex: 1;
    max-width: 50%;
    display: flex;
    flex-direction: column;
}

.contact-info {
    padding: 20px;
    flex: 1; /* Đảm bảo chiếm hết không gian còn lại */
}

.contact-info h1 {
    margin-top: 0;
}

.contact-info p {
    margin: 10px 0;
}

.contact-form {
    max-width: 100%;
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 5px;
    background-color: #f9f9f9;
    margin-top: auto; /* Đưa form gửi tin nhắn xuống dưới cùng */
}

.contact-form h2 {
    margin-top: 0;
}

.contact-form label {
    display: block;
    margin: 10px 0 5px;
}

.contact-form input, 
.contact-form textarea {
    width: 100%;
    padding: 10px;
    margin: 5px 0 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

.contact-form button {
    padding: 10px 20px;
    background-color: #007BFF;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.contact-form button:hover {
    background-color: #0056b3;
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
        <a href="new.jsp">Hàng Mới</a> 
        <a href="products.jsp">Sản Phẩm</a> 
        <a href="sale.jsp">Sale Off</a> 
        <a href="contact.jsp">Liên Hệ</a>
        <a href="cart.jsp">Giỏ Hàng</a> <!-- Thêm liên kết Giỏ Hàng -->
        <% if (session.getAttribute("user") != null) { %>
            <a href="user_info.jsp"><%= ((User) session.getAttribute("user")).getUsername() %></a>
            <a href="logout.jsp" class="login-button">Đăng Xuất</a>
        <% } else { %>
            <a href="login.jsp" class="login-button">Đăng Nhập</a>
        <% } %>
    </nav>
</header>
<div >
    <hr></hr>
</div>
<div class="contact-container">
    <div class="map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.264361968759!2d106.6059624147694!3d10.92563586160915!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528e3c5947d8d%3A0x1339f14e5d62c2fc!2s38%2F4%20%C4%90%C6%B0%E1%BB%9Dng%20Li%C3%AAn%20X%C3%A3%2C%20B%E1%BA%A5c%20L%C3%A2n%201%2C%20X%C3%A3%20B%C3%A0%20Đi%E1%BB%87m%2C%20Huy%E1%BB%87n%20H%C3%B3c%20M%C3%B4n%2C%20TP.%20H%E1%BB%93%20Ch%C3%AD%20Minh!5e0!3m2!1svi!2s!4v1632381468824!5m2!1svi!2s" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
    </div>
    <div class="contact-content">
        <div class="contact-info">
            <h1>Liên Hệ Chúng Tôi</h1>
            <p>Chúng tôi luôn sẵn sàng hỗ trợ bạn. Nếu bạn có bất kỳ câu hỏi nào, đừng ngần ngại liên hệ với chúng tôi qua thông tin dưới đây hoặc sử dụng mẫu liên hệ.</p>
            <p><strong>Địa chỉ:</strong> 38/4 Đường Liên Xã, Bắc Lân 1, Xã Bà Điểm, Huyện Hóc Môn, TP. Hồ Chí Minh</p>
            <p><strong>Điện thoại:</strong> 0973 384 798</p>
            <p><strong>Email:</strong> <a href="mailto:hi@yuumy.vn">hi@yuumy.vn</a></p>
        </div>
        <div class="contact-form">
            <h2>Gửi Tin Nhắn</h2>
            <form action="send_message.jsp" method="post">
                <label for="name">Họ và tên:</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="message">Tin nhắn:</label>
                <textarea id="message" name="message" rows="4" required></textarea>

                <button type="submit">Gửi</button>
            </form>
        </div>
    </div>
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
				<p>Email: <a href="mailto:b2b@yuumy.vn">b2b@yuumy.vn</a></p>
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
				<p>Địa chỉ: 38/4 Đường Liên Xã, Bắc Lân 1, Xã Bà Điểm, Huyện Hóc Môn, TP. Hồ Chí Minh</p>
				<p>Email: <a href="mailto:hi@yuumy.vn">hi@yuumy.vn</a></p>
			</div>
		</div>
		<p>&copy; 2024 Bản quyền thuộc về Yuumy. Powered by Haravan</p>
		<p>HKD Túi xách Lata Số ĐKKD 41S8032562 do Phòng Tài Chính - Kế Hoạch, UBND Huyện Hóc Môn cấp ngày 16/08/2023. Người đại diện: Phạm Thị Tĩnh. Địa chỉ trụ sở hộ kinh doanh: 38/4 Ấp Bắc Lân, Xã Bà Điểm, Huyện Hóc Môn, TP. Hồ Chí Minh.</p>
	</footer>
</body>
</html>
