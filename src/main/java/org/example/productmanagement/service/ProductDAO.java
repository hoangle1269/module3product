package org.example.productmanagement.service;

import org.example.productmanagement.model.Color;
import org.example.productmanagement.model.Product;
import org.example.productmanagement.utils.InvalidValueException;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO implements IProductDAO {
    private static Connection connection;
    private static final String jdbcURL = System.getenv("JDBC_URL");
    private static final String jdbcUser = System.getenv("JDBC_USER");
    private static final String jdbcPassword = System.getenv("JDBC_PASSWORD");

    private Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUser, jdbcPassword);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return connection;
    }

    private static final String GET_ALL_PRODUCT = "";
    private static final String GET_ALL_CATEGORY = "";
    private static final String INSERT_A_NEW_PRODUCT = "";
    private static final String GET_PRODUCT_BY_ID = "";
    private static final String DELETE_PRODUCT_BY_ID = "";


    @Override
    public boolean deleteProduct(int id) throws SQLException {
        // TODO
    }

    @Override
    public List<Product> getAllProduct() {
        // TODO
    }

    @Override
    public List<Product> searchProduct(String name, String price, String category, String color) {
		// TODO
    }

    private String buildSearchQuery(String name, String price, String category, String color) {
        // TODO
    }

    @Override
    public Product getProductById(int id) throws SQLException {
        // TODO
    }

    @Override
    public void insertProduct(Product product) throws SQLException {
        // TODO
    }

    @Override
    public void updateProduct(Product product) throws SQLException {
        // TODO
    }

    public List<String> getAllCategory() {
        // TODO
    }
	
	    private Product makeAProduct(ResultSet resultSet) throws SQLException {
        // TODO
    }
}
