<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--<jsp:useBean id="productList" scope="request" type="java.util.List"/>--%>
<!DOCTYPE html>
<html>
<head>
    <title>Hello</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        <%@ include file="css/index.css" %>
    </style>
</head>
<body>
<div class="container">

<%@ include file="header.jsp" %>
<%@ include file="product/search.jsp" %>
<jsp:include page="product/list.jsp"/>

<c:if test='${requestScope["message"] != null}'>
    <jsp:include page="success.jsp"/>
</c:if>
</div>
<script type="text/javascript">
    <%@include file="js/index.js" %>
</script>
</body>
</html>