<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="model.User"%>
<%@ page import="javax.servlet.http.HttpSession"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Chi tiết sản phẩm</title>
<style>
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
header nav a {
	margin-left: 20px;
	text-decoration: none;
	color: #333;
	transition: color 0.3s; /* Hiệu ứng chuyển  màu mượt mà */
}

header nav a:hover {
	color: #007BFF; /* Màu chữ khi di chuột qua */
}

a {
	text-decoration: none;
	color: black;
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
body {
    font-family: Arial, sans-serif;
}
.container {
    display: flex;
    margin: 20px;
}
.product-image {
    flex: 1;
    padding: 20px;
}
.product-details {
    flex: 2;
    padding: 20px;
}
.product-title {
    font-size: 24px;
    margin-bottom: 10px;
}
.price {
    color: red;
    font-size: 24px;
    margin-bottom: 10px;
}
.old-price {
    text-decoration: line-through;
    color: gray;
}
.in-stock {
    color: green;
    margin-bottom: 10px;
}
.select-color {
    margin-bottom: 10px;
}
.quantity {
    margin-bottom: 20px;
}
.btn {
    background-color: orange;
    color: white;
    padding: 10px 20px;
    border: none;
    cursor: pointer;
    font-size: 16px;
}
.description {
    margin-top: 20px;
}
.specs {
    margin-top: 20px;
}
.specs table {
    width: 100%;
    border-collapse: collapse;
}
.specs th, .specs td {
    border: 1px solid #ddd;
    padding: 8px;
}
.specs th {
    background-color: #f2f2f2;
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
<header>
		<div>
			<a href="index.jsp"><img src="img/logo.jpg" alt="Yuummy"></a>
		</div>
		<nav>
			<a href="new.jsp">Hàng Mới</a> 
			<a href="products.jsp">Sản Phẩm</a> 
			<a href="sale.jsp">Sale Off</a> 
			<a href="contact.jsp">Liên Hệ</a>
			<% if (session.getAttribute("user") != null) { %>
				<a href="user_info.jsp"><%= ((User) session.getAttribute("user")).getUsername() %></a>
				<a href="logout.jsp" class="login-button">Đăng Xuất</a>
			<% } else { %>
				<a href="login.jsp" class="login-button">Đăng Nhập</a>
			<% } %>
		</nav>
	</header>
    <form action="AddToCartServlet" method="post">
        <input type="hidden" name="productId" value="123"> <!-- Replace 123 with actual product ID -->
        <input type="hidden" name="productName" value="Túi xách cầm tay đeo chéo da nữ dáng hến dễ thương Yuumy Seasand YN233XA màu xanh nhạt">
        <input type="hidden" name="productPrice" value="139000">
        
        <div class="container">
            <div class="product-image">
                <img src="img/2.jpg" alt="Product Image" width="500">
            </div>
            <div class="product-details">
                <div class="product-title">Túi xách cầm tay đeo chéo da nữ dáng hến dễ thương Yuumy Seasand YN233K màu kem</div>
                <div class="price">220,000đ</div>
                <div class="in-stock">Tình trạng: Còn 199 sản phẩm</div>
                <div class="select-color">
                    <label for="color">Màu sắc:</label>
                    <select id="color" name="color">
                        <option value="den">Màu đen</option>
                        <option value="xanh">Màu xanh</option>
                        <option value="đỏ">Màu đỏ</option>
                    </select>
                </div>
                <div class="quantity">
                    <label for="quantity">Chọn số lượng:</label>
                    <input type="number" id="quantity" name="quantity" value="1" min="1">
                </div>
                <button type="submit" class="btn">THÊM VÀO GIỎ</button>
                <div class="description">
                    <h3>Mô tả</h3>
                    <p>Ví da nữ cầm tay mini Yuumy Seasaand YV105 có thiết kế nhỏ gọn bên ngoài, nhưng bên trong ví lại có đầy đủ ngăn đựng tiền mặt, thẻ ngân hàng, giấy tờ tùy thân và thậm chí là điện thoại. Với những gam màu nhẹ nhàng thanh lịch YV105 không chỉ là phụ kiện thời trang sang trọng để làm quà tặng, đi học, đi làm, dự tiệc mà còn là người bạn đồng hành không thể thiếu của các nàng.</p>
                </div>
                <div class="specs">
                    <h3>Thông số kỹ thuật</h3>
                    <table>
                        <tr>
                            <th>Kích thước</th>
                            <td>Dài 11cm, Rộng 3cm x Cao 9.5cm</td>
                        </tr>
                        <tr>
                            <th>Trọng lượng</th>
                            <td>92 grams</td>
                        </tr>
                        <tr>
                            <th>Số ngăn</th>
                            <td>8 ngăn (2 ngăn chính, 6 ngăn nhỏ)</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </form>
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