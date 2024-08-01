<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<jsp:useBean id="product" scope="request" type="org.example.productmanagement.model.Product"/>--%>
<title>Confirm delete <c:out value="${product.name}"/></title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<form method="POST" action="?action=delete&productId=${product.id}">
    <table class="table table-borderless caption-top table-striped">
        <caption>Confirm delete <c:out value="${product.name}"/></caption>
        <tbody>
        <tr>
            <td>
                <label for="productName">Name</label>
            </td>
            <td>
                <input id="productName" type="text" required name="productName" readonly value="${product.name}">

            </td>
        </tr>
        <tr>
            <td>
                <label for="productPrice">Price</label>
            </td>
            <td>
                <input id="productPrice" required min="999999" name="productPrice" readonly
                       value="${product.price}">
            </td>
        </tr>

        <tr>
            <td>
                <label for="productQuantity">Quantity</label>

            </td>
            <td>
                <input id="productQuantity" type="text" required min="0" pattern="/d+" name="productQuantity" step="1"
                       readonly value="${product.quantity}">
            </td>
        </tr>
        <tr>
            <td>
                <label for="productDescription">Description</label>
            </td>
            <td>
                <textarea id="productDescription" name="productDescription" rows="4" cols="50" readonly><c:out
                        value="${product.description}"/></textarea>
            </td>
        </tr>
        <tr>
            <td>
                <label for="productColor">Color</label>
            </td>
            <td>
                <input readonly id="productColor" value="${product.color}">

            </td>
        </tr>
        <tr>
            <td>
                <label for="productCategory">Category</label>
            </td>
            <td>
                <input readonly id="productCategory" value="${product.category}">
            </td>
        </tr>
        <tr>
            <td>
                <input class="btn btn-primary btn-sm" type="submit" value="Delete">
                |
                <a class="btn btn-secondary btn-sm" href="?action=" role="button">Back</a>
            </td>
        </tr>
        </tbody>
    </table>
</form>
