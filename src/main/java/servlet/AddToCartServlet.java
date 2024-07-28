package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Product;

import java.util.HashMap;
import java.util.Map;

@WebServlet("/AddToCartServlet")
public class AddToCartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        // Lấy dữ liệu từ form
        int productId = Integer.parseInt(request.getParameter("productId"));
        String productName = request.getParameter("productName");
        double productPrice = Double.parseDouble(request.getParameter("productPrice"));
        String color = request.getParameter("color");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String imageUrl = request.getParameter("imageUrl"); // Sử dụng URL hình ảnh từ form

        // Tạo đối tượng Product
        Product product = new Product(productId, productName, productPrice, color, quantity, imageUrl);

        // Quản lý giỏ hàng trong session
        HttpSession session = request.getSession();
        Map<Integer, Product> cart = (Map<Integer, Product>) session.getAttribute("cart");
        if (cart == null) {
            cart = new HashMap<>();
            session.setAttribute("cart", cart);
        }

        // Thêm hoặc cập nhật sản phẩm trong giỏ hàng
        if (cart.containsKey(productId)) {
            Product existingProduct = cart.get(productId);
            existingProduct.setQuantity(existingProduct.getQuantity() + quantity);
        } else {
            cart.put(productId, product);
        }

        // Chuyển hướng người dùng đến trang giỏ hàng
        response.sendRedirect("cart.jsp");
    }
}
