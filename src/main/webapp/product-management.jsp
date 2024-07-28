<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Sản phẩm</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
        }
        .button {
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            margin-right: 10px;
            font-size: 16px;
        }
        .button.delete {
            background-color: #DC3545;
        }
        .button.edit {
            background-color: #FFC107;
        }
        .button.add {
            background-color: #28A745;
        }
        .button:hover {
            opacity: 0.8;
        }
        .product-form {
            margin-top: 20px;
        }
        .product-form input, .product-form select, .product-form textarea {
            margin-bottom: 10px;
            padding: 10px;
            width: 100%;
            box-sizing: border-box;
        }
        .product-form input[type="file"] {
            padding: 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Quản lý Sản phẩm</h1>
        <div class="button-container">
            <button class="button add" onclick="showForm('add')">Thêm Sản phẩm</button>
            <button class="button edit" onclick="showForm('edit')">Sửa Sản phẩm</button>
            <button class="button delete" onclick="showForm('delete')">Xóa Sản phẩm</button>
        </div>

        <!-- Form to manage products -->
        <div id="productForm" class="product-form" style="display: none;">
            <h2 id="formTitle">Thêm Sản phẩm</h2>
            <form id="productManagementForm" method="post" action="productManagementServlet" enctype="multipart/form-data">
                <input type="hidden" id="operationType" name="operationType" value="">
                <input type="number" id="productId" name="productId" placeholder="ID sản phẩm" style="display: none;" />
                <input type="text" id="productName" name="productName" placeholder="Tên sản phẩm" required />
                <input type="number" id="productPrice" name="productPrice" placeholder="Giá sản phẩm" step="0.01" required />
                <select id="productStatus" name="productStatus" required>
                    <option value="">Tình trạng sản phẩm</option>
                    <option value="in_stock">Còn hàng</option>
                    <option value="out_of_stock">Hết hàng</option>
                </select>
                <input type="text" id="productColor" name="productColor" placeholder="Màu sắc" />
                <textarea id="productDescription" name="productDescription" placeholder="Mô tả sản phẩm" rows="4" required></textarea>
                <textarea id="productSpecs" name="productSpecs" placeholder="Thông số kỹ thuật" rows="4"></textarea>
                <input type="file" id="productImage" name="productImage" />
                <button type="submit" class="button">Lưu</button>
                <button type="button" class="button" onclick="hideForm()">Hủy</button>
            </form>
        </div>
    </div>

    <script>
        function showForm(type) {
            var form = document.getElementById('productForm');
            var title = document.getElementById('formTitle');
            var formType = document.getElementById('operationType');
            var productId = document.getElementById('productId');
            
            // Set form title and operation type
            if (type === 'add') {
                title.innerText = 'Thêm Sản phẩm';
                formType.value = 'add';
                productId.style.display = 'none';
            } else if (type === 'edit') {
                title.innerText = 'Sửa Sản phẩm';
                formType.value = 'edit';
                productId.style.display = 'block';
            } else if (type === 'delete') {
                title.innerText = 'Xóa Sản phẩm';
                formType.value = 'delete';
                productId.style.display = 'block';
            }

            form.style.display = 'block';
        }

        function hideForm() {
            document.getElementById('productForm').style.display = 'none';
        }
    </script>
</body>
</html>
