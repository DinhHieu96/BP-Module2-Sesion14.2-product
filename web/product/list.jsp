<%--
  Created by IntelliJ IDEA.
  User: HIEUGA PC
  Date: 09/09/2019
  Time: 00:50
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>Products</h1>
<p>
    <a href="/products1?action=create">Create new product</a>
</p>
<p>
    <a href="/products1?action=search">Search product</a>
</p>
<table border="1">
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Price</td>
        <td>Producer</td>
        <td>Avatar</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["product"]}' var="product">
        <tr>
            <td><a href="/products1?action=view&id=${product.getId()}">${product.getId()}</a></td>
            <td>${product.getName()}</td>
            <td>${product.getPrice()}</td>
            <td>${product.getProducer()}</td>
            <td><img src="images/${product.getAvatar()}" width="100px" height="100px"/></td>
            <td><a href="/products1?action=edit&id=${product.getId()}">edit</a></td>
            <td><a href="/products1?action=delete&id=${product.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
