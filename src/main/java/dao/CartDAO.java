package dao;

import model.Cart;
import java.sql.*;

import connect.DatabaseConnection;

public class CartDAO {
    public Cart getCartByUserId(int userId) throws SQLException {
        String query = "SELECT * FROM carts WHERE user_id = ?";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setInt(1, userId);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return new Cart(rs.getInt("id"), rs.getInt("user_id"));
            }
        }
        return null;
    }

    public void createCart(int userId) throws SQLException {
        String query = "INSERT INTO carts (user_id) VALUES (?)";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setInt(1, userId);
            stmt.executeUpdate();
        }
    }
}
