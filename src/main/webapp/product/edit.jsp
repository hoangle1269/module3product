<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.example.productmanagement.model.Color" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<title>Edit <c:out value="${product.name}"/></title>
<form method="POST" action="?action=edit$productId=${product.id}">
    <table class="table table-borderless caption-top table-striped">
        <caption>Edit <c:out value="${product.name}"/></caption>
        <tbody>
        <tr>
            <td>
                <label for="productName">Name</label>
            </td>
            <td>
                <input id="productName" type="text" required name="productName" value="${product.name}">
            </td>
        </tr>
        <tr>
            <td>
                <label for="productPrice">Price</label>
            </td>
            <td>
                <input id="productPrice" type="number" required min="10000000" name="productPrice" step=".1"
                       value="${product.price}">
            </td>
        </tr>

        <tr>
            <td>
                <label for="productQuantity">Quantity</label>
            </td>
            <td>
                <input id="productQuantity" type="text" required min="0" pattern="[0-9]+" name="productQuantity" step="1"
                       value="${product.quantity}">
            </td>
        </tr>
        <tr>
            <td>
                <label for="productDescription">Description</label>

            </td>
            <td>
                <textarea id="productDescription" name="productDescription" rows="4" cols="50"><c:out value="${product.description}"/></textarea>
            </td>
        </tr>
        <tr>
            <td>
                <label for="productColor">Color</label>
            </td>
            <td>
                <select id="productColor">
                    <c:forEach var="color" items="${Color.values()}">
                    <option value="${color.value}" <c:if test="${color.value == product.color}">selected</c:if> ><c:out value="${color.value}"/></option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                <label for="productCategory">Category</label>

            </td>
            <td>
                <select id="productCategory">
                    <c:forEach var="category" items="${categoryList}">
                        <option value="${category}"
                                <c:if test="${category == product.category}">selected</c:if> >
                            <c:out value="${category}"/>
                        </option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                <input class="btn btn-primary btn-sm" type="submit" value="Edit">
                |
                <a class="btn btn-secondary btn-sm" href="?">Back</a>
            </td>
        </tr>
        </tbody>

    </table>
</form>
