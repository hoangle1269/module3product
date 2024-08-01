<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<table class="table table-striped table-hover">
    <thead>
    <tr>
        <th>#</th>
        <th>Product Name</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Color</th>
        <th>Category</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <c:set var="count" value="0" scope="page"/>
    <c:forEach var="product" items="${productList}">
        <c:set var="count" value="${count + 1}" scope="page"/>
        <tr>
            <td><c:out value="${count}"/></td>
            <td><c:out value="${product.name}"/></td>
            <td><fmt:formatNumber type="number" maxFractionDigits="2" value="${product.price}"/></td>
                <%--                <td><c:out value="${product.price}"/></td>--%>
            <td><c:out value="${product.quantity}"/></td>
            <td><c:out value="${product.color}"/></td>
            <td><c:out value="${product.category}"/></td>
            <td>
                <a href="?action=edit&productId=${product.id}">Edit</a>
                -
                <a href="?action=delete&productId=${product.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

