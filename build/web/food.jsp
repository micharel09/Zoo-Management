<%@page import="java.util.List"%>
<%@page import="sample.food.FoodDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <!-- Gogole Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;1,100;1,200&display=swap" rel="stylesheet" />

    <!-- AlpineJS -->
    <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>

    <!-- Tailwind CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css" rel="stylesheet" />
    <link href="./css/tailwind.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" />
    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.js" defer></script>
    <script src="https://kit.fontawesome.com/5b0b34b925.js" crossorigin="anonymous"></script>
    <style>
        section {
            font-family: "Poppins", sans-serif;
        }
        /* Custom CSS */
        .table-div {
            background-color: white;
            border: 1px solid black;
            border-collapse: collapse;
        }
        .table-div th, .table-div td {
            border: 1px solid black;
            padding: 8px;
        }
        .table-div th {
            background-color: green;
            color: white;
        }
        .table-div a {
            padding: 4px 8px;
            margin: 2px;
            text-decoration: none;
            border-radius: 4px;
        }
        .table-div .action-column {
            text-align: center;
        }
        .table-div .action-column a.delete {
            background-color: red;
            color: white;
        }
        .table-div .action-column a.update {
            background-color: yellow;
            color: black;
        }
    </style>
    <title>Food</title>
</head>
<body>
<nav class="border-gray-200 bg-green-600">
    <div class="flex p-1">
        <!-- logo -->
        <a href="homepage.jsp" class="flex items-center justify-center w-1/2">
            <div class="">
                <img src="img/logo2.png" class="h-20 text-xl" alt="Logo" />
            </div>
            <span class="self-center text-4xl font-extralight whitespace-nowrap dark:text-white">Wild World Zoo</span>
        </a>
        <!-- end logo -->
        <!-- navbar -->
        <div class="items-center justify-between hidden w-full md:flex md:w-auto md:order-1 w-full" id="navbar-user">
            <ul class="flex flex-col font-extralight md:p-0 mt-4 borderrounded-lg md:flex-row md:space-x-8 md:mt-0 md:border-0">
                <li>
                    <a href="homepage.jsp" class="navbar-text block py-4 pl-4 text-2xl text-gray-900 rounded before:ease relative h-18 w-24 overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700" aria-current="page">HOME</a>
                </li>
                <li>
                    <a href="#" class="navbar-text block py-4 pl-3 text-2xl text-gray-900 rounded before:ease relative h-18 w-24 overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700">ABOUT</a>
                </li>
                <li>
                    <a href="Animals.jsp" class="navbar-text block py-4 pr-4 pl-2 text-2xl text-gray-900 rounded before:ease relative h-18 w-24 overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700">ANIMAL</a>
                </li>
                <li>
                    <a href="#" class="navbar-text block py-4 pl-4 text-2xl text-gray-900 rounded before:ease relative h-18 w-24 overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700">NEWS</a>
                </li>
                <li>
                    <a href="Map.jsp" class="navbar-text block py-4 pl-6 text-2xl text-gray-900 rounded before:ease relative h-18 w-24 overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700">MAP</a>
                </li>
            </ul>
        </div>
        <!-- end navbar -->
    </div>
</nav>
<nav class="flex bg-gray-50 text-gray-700 py-3 px-5 dark:bg-gray-800 dark:border-gray-700" aria-label="Breadcrumb">
    <ol class="inline-flex items-center space-x-1 md:space-x-3">
        <li class="inline-flex items-center">
            <a href="Homepage.html" class="text-sm text-gray-700 hover:text-gray-900 inline-flex items-center dark:text-gray-400 dark:hover:text-white">
                <svg class="w-4 h-4 mr-2" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                    <path d="M10.707 2.293a1 1 0 00-1.414 0l-7 7a1 1 0 001.414 1.414L4 10.414V17a1 1 0 001 1h2a1 1 0 001-1v-2a1 1 0 011-1h2a1 1 0 011 1v2a1 1 0 001 1h2a1 1 0 001-1v-6.586l.293.293a1 1 0 001.414-1.414l-7-7z"></path>
                </svg>
                Home
            </a>
        </li>
        <li aria-current="page">
            <div class="flex items-center">
                <svg class="w-6 h-6 text-gray-400" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd"></path>
                </svg>
                <span class="text-gray-400 ml-1 md:ml-2 text-sm font-medium dark:text-gray-500">Food</span>
            </div>
        </li>
    </ol>
</nav>
<section class="py-10 px-6">
    <div class="mx-auto container max-w-4xl">
        <h1 class="text-4xl font-semibold text-gray-900">Food List</h1>
        <div class="bg-white p-6 mt-6 rounded-lg">
            <table class="w-full table-div">
                <thead>
                    <tr>
                        <th>Food ID</th>
                        <th>Food Name</th>
                        <th class="action-column">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="food" items="${food}">
                        <tr>
                            <td>${food.food_id}</td>
                            <td>${food.foodname}</td>
                            <td class="action-column">
                                <a href="DeleteAnimalController?animalID=${food.food_id}" class="delete">Delete</a>
                                <a href="UpdateAnimalController?animalID=${food.foodname}" class="update">Update</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <form action="FoodController" method="get" class="mt-6">
            <label for="Food_id" class="text-xl">Search Food by ID:</label>
            <div class="flex">
                <input type="text" id="food_ID" name="Food_ID" class="w-64 p-2 border rounded-l-md" />
                <input type="submit" value="Search" class="px-4 py-2 bg-green-500 text-white rounded-r-md hover:bg-green-600" />
            </div>
        </form>
    </div>
</section>
</body>
</html>
