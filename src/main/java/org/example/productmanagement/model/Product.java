package org.example.productmanagement.model;

import org.example.productmanagement.utils.InvalidValueException;

public class Product {
    private static final double MIN_PRICE = 999999;
    private int id;
    private String name;
    private double price;
    private int quantity;
    private Color color;
    private String description;
    private String category;

    public Product() {} // for update

    public Product(int id, String name, double price, int quantity, Color color, String description, String category) throws InvalidValueException {
        if (id < 0 || name == null || name.isEmpty() || price < MIN_PRICE || quantity < 0 || color == null) {
            throw new InvalidValueException("Invalid value");
        }

        this.id = id;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.color = color;
        this.description = description;
        this.category = category;
    }

    public Product(String name, double price, int quantity, Color color, String description, String category) throws InvalidValueException {
        if (name == null || name.isEmpty() || price < MIN_PRICE || quantity < 0 || color == null) {
            throw new InvalidValueException("Invalid value");
        }

        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.color = color;
        this.description = description;
        this.category = category;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getColor() {
        return color.getValue();
    }

    public void setColor(Color color) {
        this.color = color;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getId() {
        return id;
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

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return id + "," + name + "," + price + "," + quantity + "," + color + "," + description + "," + category;
    }
}
