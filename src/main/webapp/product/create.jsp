<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="org.example.productmanagement.model.Color" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<form method="POST" action="?action=create">
    <table class="table table-borderless caption-top">
        <caption>Add new product</caption>
        <tbody>
        <tr>
            <td>
                <label for="productName">Name</label>

            </td>
            <td>
                <input id="productName" type="text" required name="productName">
            </td>
        </tr>
        <tr>
            <td>
                <label for="productPrice">Price</label>
            </td>
            <td>
                <input id="productPrice" type="number" required min="10000000" name="productPrice" step=".1">
            </td>
        </tr>

        <tr>
            <td>
                <label for="productQuantity">Quantity</label>
            </td>
            <td>
                <input id="productQuantity" type="number" required min="0" name="productQuantity" step="1">
            </td>
        </tr>
        <tr>
            <td>
                <label for="productDescription">Description</label>
            </td>
            <td>
                <textarea id="productDescription" name="productDescription" rows="4" cols="50"></textarea>
            </td>
        </tr>
        <tr>
            <td>
                <label for="productColor">Color</label>
            </td>
            <td>
                <select id="productColor" name="productColor" required>
                    <c:forEach var="color" items="${Color.values()}">
                        <option value="${color.value}"><c:out value="${color.value}"/></option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                <label for="productCategory">Category</label>
            </td>
            <td>
                <select id="productCategory" name="productCategory" required>
                    <%--<jsp:useBean id="category" scope="request" type="java.util.List"/>--%>
                    <c:forEach var="category" items="${categoryList}">
                        <option value="${category}"><c:out value="${category}"/></option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Create">
            </td>
        </tr>
        </tbody>

    </table>
</form>