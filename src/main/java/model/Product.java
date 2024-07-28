package model;

public class Product {
    private int id;
    private String name;
    private double price;
    private String color;
    private int quantity;
    private String imageUrl; // Thêm thuộc tính này

    public Product(int productId, String name, double price, String color, int quantity, String imageUrl) {
        this.id = productId;
        this.name = name;
        this.price = price;
        this.color = color;
        this.quantity = quantity;
        this.imageUrl = imageUrl; // Thêm thuộc tính này
    }

    // Các getter và setter
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }
}
