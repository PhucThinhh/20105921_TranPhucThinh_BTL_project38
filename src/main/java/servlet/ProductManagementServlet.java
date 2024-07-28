package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/productManagementServlet")
@MultipartConfig
public class ProductManagementServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy dữ liệu từ form
        String productName = request.getParameter("productName");
        String priceStr = request.getParameter("price");
        String status = request.getParameter("status");
        String color = request.getParameter("color");
        String description = request.getParameter("description");
        String specs = request.getParameter("specs");
        String quantityStr = request.getParameter("quantity");

        // Kiểm tra và chuyển đổi giá trị số lượng
        int quantity = 0;
        if (quantityStr != null && !quantityStr.isEmpty()) {
            try {
                quantity = Integer.parseInt(quantityStr);
            } catch (NumberFormatException e) {
                response.setContentType("text/html");
                PrintWriter out = response.getWriter();
                out.println("Số lượng không hợp lệ");
                out.close();
                return;
            }
        } else {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("Số lượng không được bỏ trống");
            out.close();
            return;
        }

        // Xử lý việc lưu dữ liệu vào cơ sở dữ liệu
        // Thêm mã để lưu sản phẩm vào cơ sở dữ liệu ở đây

        // Xử lý file upload
        // Code để lưu hình ảnh từ multipart/form-data nếu cần

        // Redirect hoặc thông báo thành công
        response.sendRedirect("productList.jsp");
    }
}
