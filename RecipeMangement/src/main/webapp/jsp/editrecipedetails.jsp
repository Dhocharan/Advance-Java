<!DOCTYPE html>
<html>
<head>
    <title>Edit Recipe</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        h2 {
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
        input[type="text"],
        input[type="number"] {
            width: calc(100% - 20px);
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <h2>Edit Recipe</h2>
    <form action="updateRecipeinfo">
        <input type="number" name="id" value="${recipe.id}">
        <table>
            <tr>
                <td>Recipe Name:</td>
                <td><input type="text" name="recipeName" value="${recipe.recipeName}"></td>
            </tr>
            <tr>
                <td>Ingredients:</td>
                <td><input type="text" name="ingredients" value="${recipe.ingredients}"></td>
            </tr>
            <tr>
                <td>Preparation Steps:</td>
                <td><input type="text" name="preparationSteps" value="${recipe.preparationSteps}"></td>
            </tr>
            <tr>
                <td>Cooking Time (minutes):</td>
                <td><input type="number" name="cookingTime" value="${recipe.cookingTime}"></td>
            </tr>
            <tr>
                <td>Serving Size:</td>
                <td><input type="number" name="servingSize" value="${recipe.servingSize}"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Update"></td>
            </tr>
        </table>
    </form>
</body>
</html>
