package org.example.productmanagement.service;

import org.example.productmanagement.model.Product;

import java.sql.SQLException;
import java.util.List;

public interface IProductDAO {

    Product getProductById(int id) throws SQLException;

    void insertProduct(Product product) throws SQLException;

    void updateProduct(Product product) throws SQLException;

    boolean deleteProduct(int id) throws SQLException;

    List<Product> getAllProduct();

    List<String> getAllCategory();

    List<Product> searchProduct(String name, String price, String category, String color); // search function
}
