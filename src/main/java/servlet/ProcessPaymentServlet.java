package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;
import model.Product;

@WebServlet("/ProcessPaymentServlet")
public class ProcessPaymentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String zip = request.getParameter("zip");
        String phone = request.getParameter("phone");
        String paymentMethod = request.getParameter("payment");

        Map<Integer, Product> cart = (Map<Integer, Product>) request.getSession().getAttribute("cart");

        if (cart != null && !cart.isEmpty()) {
            // Here you would handle the payment processing logic
            // For example, if paymentMethod is "credit_card", integrate with a payment gateway
            // If paymentMethod is "cod", you can mark the order as COD in your database

            // For demonstration, we will just clear the cart and show a success message
            request.getSession().removeAttribute("cart");
            request.setAttribute("message", "Thanh toán thành công!");
        } else {
            request.setAttribute("message", "Giỏ hàng trống.");
        }

        request.getRequestDispatcher("confirmation.jsp").forward(request, response);
    }
}
