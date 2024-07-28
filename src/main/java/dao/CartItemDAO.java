package dao;

import model.CartItem;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import connect.DatabaseConnection;

public class CartItemDAO {
    public List<CartItem> getCartItemsByCartId(int cartId) throws SQLException {
        List<CartItem> items = new ArrayList<>();
        String query = "SELECT * FROM cart_items WHERE cart_id = ?";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setInt(1, cartId);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                items.add(new CartItem(rs.getInt("id"), rs.getInt("cart_id"), rs.getInt("product_id"), rs.getInt("quantity")));
            }
        }
        return items;
    }

    public void addCartItem(CartItem cartItem) throws SQLException {
        String query = "INSERT INTO cart_items (cart_id, product_id, quantity) VALUES (?, ?, ?)";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setInt(1, cartItem.getCartId());
            stmt.setInt(2, cartItem.getProductId());
            stmt.setInt(3, cartItem.getQuantity());
            stmt.executeUpdate();
        }
    }

    public void updateCartItem(CartItem cartItem) throws SQLException {
        String query = "UPDATE cart_items SET quantity = ? WHERE cart_id = ? AND product_id = ?";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setInt(1, cartItem.getQuantity());
            stmt.setInt(2, cartItem.getCartId());
            stmt.setInt(3, cartItem.getProductId());
            stmt.executeUpdate();
        }
    }

    public void removeCartItem(int cartId, int productId) throws SQLException {
        String query = "DELETE FROM cart_items WHERE cart_id = ? AND product_id = ?";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setInt(1, cartId);
            stmt.setInt(2, productId);
            stmt.executeUpdate();
        }
    }
}
