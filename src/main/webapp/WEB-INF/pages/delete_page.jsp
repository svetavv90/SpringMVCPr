<%--
  Created by IntelliJ IDEA.
  User: Svetlana
  Date: 28-Jul-15
  Time: 2:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete records</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <form class="form-inline" role="form" action="/SpringMVC_war_exploded/return" method="post">
        <h3>Selected to delete</h3>

        <table class="table table-striped">
            <thead>
            <tr>
                <td><b>Selected</b></td>
                <td><b>Photo</b></td>
                <td><b>Name</b></td>
                <td><b>Short Desc</b></td>
                <td><b>Long Desc</b></td>
                <td><b>Phone</b></td>
                <td><b>Price</b></td>
            </tr>
            </thead>
            <c:forEach items="${sel}" var="sel">
                <tr>
                    <td><input type="checkbox" name="selected" value="${sel.id}"></td>
                    <td><img height="40" width="40" src="/SpringMVC_war_exploded/image/${sel.photo.id}" /></td>
                    <td>${sel.name}</td>
                    <td>${sel.shortDesc}</td>
                    <td>${sel.longDesc}</td>
                    <td>${sel.phone}</td>
                    <td>${sel.price}</td>
                </tr>
            </c:forEach>
        </table>
        <table><tr>
            <td> <input type="submit" class="btn btn-default" value="Recover">
        </table>
    </form>

    <form class="form-inline" role="form" action="/SpringMVC_war_exploded/" method="post">
        <input type="submit" class="btn btn-default" value="Show main page">
    </form>
</div>
</body>
</html>
