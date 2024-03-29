<%--
  Created by IntelliJ IDEA.
  User: HIEUGA PC
  Date: 09/09/2019
  Time: 00:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deleting product</title>
</head>
<body>
<h1>Delete product</h1>
<p>
    <a href="/products1">Back to product list</a>
</p>
<form method="post">
    <h3>Are you sure?</h3>
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Id: </td>
                <td>${requestScope["product"].getId()}</td>
            </tr>
            <tr>
                <td>Name: </td>
                <td>${requestScope["product"].getName()}</td>
            </tr>
            <tr>
                <td>Price: </td>
                <td>${requestScope["product"].getPrice()}</td>
            </tr>
            <tr>
                <td>Producer: </td>
                <td>${requestScope["product"].getProducer()}</td>
            </tr>
            <tr>
                <td>Avatar: </td>
                <td><img src="images/${product.getAvatar()}" width="100px" height="100px"/></td>
            </tr>
            <tr>
                <td><input type="submit" value="Delete product"></td>
                <td><a href="/products1">Back to product list</a></td>
            </tr>
        </table>
    </fieldset>
</body>
</html>
