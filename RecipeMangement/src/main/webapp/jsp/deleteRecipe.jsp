<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Recipe Information</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }
    h4 {
        color: #333;
        text-align: center;
    }
    form {
        width: 50%;
        margin: 20px auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
    table {
        width: 100%;
    }
    td {
        padding: 10px;
    }
    input[type="number"],
    input[type="submit"] {
        width: calc(100% - 20px);
        padding: 8px;
        margin: 5px 0;
        border: 1px solid #ccc;
        border-radius: 3px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        background-color: #e74c3c;
        color: white;
        border: none;
        border-radius: 3px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #c0392b;
    }
</style>
</head>
<body>
    <h4>DELETE RECIPE INFORMATION</h4>
    <form action="deleteRecipeDetails">
        <table>
            <tr>
                <td>Recipe ID</td>
                <td><input type="number" name="id"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Delete Recipe"></td>
            </tr>
        </table>
    </form>
</body>
</html>
