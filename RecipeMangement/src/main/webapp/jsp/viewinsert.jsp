<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recipe Management System</title>
    <link rel="stylesheet" href="style.css">
    <style>
        @import url('https://fonts.googleapis.com/css?family=Open+Sans');

        html {
            font-family: Arial;
            font-size: 16px;
            background: #5e42a6;
        }

        .sidebar {
            position: fixed;
            width: 25%;
            height: 100vh;
            background: #312450;
            font-size: 0.65em;
        }

        .nav {
            position: relative;
            margin: 0 15%;
            text-align: right;
            top: 50%;
            transform: translateY(-50%);
            font-weight: bold;
        }

        .nav ul {
            list-style: none;
        }

        .nav ul li {
            position: relative;
            margin: 3.2em 0;
        }

        .nav ul li a {
            line-height: 5em;
            text-transform: uppercase;
            text-decoration: none;
            letter-spacing: 0.4em;
            color: rgba(255, 255, 255, 0.35);
            display: block;
            transition: all ease-out 300ms;
        }

        .nav ul li.active a {
            color: white;
        }

        .nav ul li:not(.active)::after {
            content: '';
            position: absolute;
            width: 100%;
            height: 0.2em;
            background: black;
            left: 0;
            bottom: 0;
            background-image: linear-gradient(to right, #5e42a6, #b74e91);
            opacity: 0.2;
        }

        .nav ul li:hover a {
            color: rgba(255, 255, 255, 0.75);
        }

        .cooking {
            position: relative;
            width: 75%;
            float: right;
            height: 100vh;
        }

        .cooking .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100%;
        }

        .cooking span {
            font-size: 3em; /* Adjust size as needed */
        }
    </style>
</head>
<body>
<main class="main">
    <aside class="sidebar">
        <nav class="nav">
            <ul>
                <li><a href="addRecipe">Add Recipe</a></li>
                <li><a href="deleteRecipe">Delete Recipe</a></li>
                <li><a href="updateRecipe">Update Recipe</a></li>
                
                <li><a href="allRecipes">All Recipes</a></li>
            </ul>
        </nav>
    </aside>

    <section class="cooking">
        <div class="container">
            <h1>Recipe Management</h1>
            <span>&#127860;</span>
        </div>
    </section>
</main>
</body>
</html>
