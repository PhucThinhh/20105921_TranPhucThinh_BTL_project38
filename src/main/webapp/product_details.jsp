<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="model.User"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi tiết sản phẩm</title>
    <style>
        /* Your CSS styles here */
    </style>
</head>
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
</style>
<body>
    <div class="container">
        <div class="product-image">
            <img src="img/1.jpg" alt="Product Image" width="500">
        </div>
        <div class="product-details">
            <div class="product-title">Túi xách cầm tay đeo chéo da nữ dáng hến dễ thương Yuumy Seasand YN233XA màu xanh nhạt</div>
            <div class="price">139,000đ <span class="old-price">220,000đ</span></div>
            <div class="in-stock">Tình trạng: Còn 199 sản phẩm</div>
            <form action="AddToCartServlet" method="post">
                <input type="hidden" name="productId" value="1"> <!-- Replace with actual product ID -->
                <input type="hidden" name="productName" value="Túi xách cầm tay đeo chéo da nữ dáng hến dễ thương Yuumy Seasand YN233XA màu xanh nhạt">
                <input type="hidden" name="productPrice" value="139000">
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
            </form>
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
</body>
</html>
