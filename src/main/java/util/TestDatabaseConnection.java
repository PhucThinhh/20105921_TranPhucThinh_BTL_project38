package util;

import java.sql.Connection;

import connect.DatabaseConnection;

public class TestDatabaseConnection {
    public static void main(String[] args) {
        // Tạo kết nối
        Connection connection = DatabaseConnection.getConnection();
        
        // Kiểm tra kết nối
        if (connection != null) {
            System.out.println("Database connection test passed.");
        } else {
            System.err.println("Database connection test failed.");
        }
        
        // Đóng kết nối nếu nó không null
        try {
            if (connection != null) {
                connection.close();
                System.out.println("Connection closed.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
