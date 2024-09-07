<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recipe Information</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }
    h2 {
        color: #333;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    a {
        display: block;
        margin-top: 20px;
        text-decoration: none;
        color: #333;
    }
    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
    <h2>Recipe Information</h2>
    <table>
        <tr>
            <th>Recipe ID</th>
            <th>Recipe Name</th>
            <th>Ingredients</th>
            <th>Preparation Steps</th>
            <th>Cooking Time</th>
            <th>Serving Size</th>
        </tr>
        <c:forEach items="${recipes}" var="recipe">
        <tr>
            <td><c:out value="${recipe.id}"/></td>
            <td>${recipe.recipeName}</td>
            <td>${recipe.ingredients}</td>
            <td>${recipe.preparationSteps}</td>
            <td>${recipe.cookingTime}</td>
            <td>${recipe.servingSize}</td>
        </tr>
        </c:forEach>
    </table>
    <a href="view">Home</a>
</body>
</html>
