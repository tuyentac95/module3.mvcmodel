<%--
  Created by IntelliJ IDEA.
  User: Pham Tuyen
  Date: 8/28/2020
  Time: 2:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List Customers</title>
    <style>
        tr, th, td {
            padding: 5px 8px;
            border: 1px black solid;
        }
        th{
            background-color: slategray;
            color: azure;
        }
    </style>
</head>
<body>
    <h3>Customers</h3>
    <p>
        <a href="/customers?action=create">Create new customer</a>
    </p>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Address</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach items="${customers}" var="customer">
            <tr>
                <td>${customer.getId()}</td>
                <td><a href="/customers?action=view&id=${customer.getId()}">${customer.getName()}</a></td>
                <td>${customer.getEmail()}</td>
                <td>${customer.getAddress()}</td>
                <td><a href="/customers?action=edit&id=${customer.getId()}">Edit</a></td>
                <td><a href="/customers?action=delete&id=${customer.getId()}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
