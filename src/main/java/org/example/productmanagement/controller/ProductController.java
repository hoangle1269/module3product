package org.example.productmanagement.controller;

import org.example.productmanagement.model.Color;
import org.example.productmanagement.model.Product;
import org.example.productmanagement.service.IProductDAO;
import org.example.productmanagement.service.ProductDAO;
import org.example.productmanagement.utils.InvalidValueException;

import javax.servlet.annotation.*;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "productController", value = "")
public class ProductController extends HttpServlet {
    private final IProductDAO productDAO = new ProductDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        // TODO
    }

    private void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        // TODO

    }

    private void showDeleteForm(HttpServletRequest request, HttpServletResponse response) {
		// TODO
    }


    private void showProductList(HttpServletRequest request, HttpServletResponse response) {
        // TODO
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) {
        // TODO
    }
	
	private void search(HttpServletRequest request, HttpServletResponse response) {
        // TODO
    }
}
