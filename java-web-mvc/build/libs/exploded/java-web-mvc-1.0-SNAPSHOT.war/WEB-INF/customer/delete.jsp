<%--
  Created by IntelliJ IDEA.
  User: Pham Tuyen
  Date: 8/28/2020
  Time: 2:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deleting customer</title>
</head>
<body>
    <h3>Delete customer</h3>
    <p>
        <a href="/customers">Back to customer list</a>
    </p>
    <form method="post">
        <h3>Are you sure?</h3>
        <fieldset>
            <legend>Customer information</legend>
            <table>
                <tr>
                    <td>Name: </td>
                    <td>${requestScope["customer"].getName()}</td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td>${requestScope["customer"].getEmail()}</td>
                </tr>
                <tr>
                    <td>Address: </td>
                    <td>${requestScope["customer"].getAddress()}</td>
                </tr>
                <tr>
                    <td><input type="submit" value="Delete customer"></td>
                    <td></td>
                </tr>
            </table>
        </fieldset>
    </form>
</body>
</html>
