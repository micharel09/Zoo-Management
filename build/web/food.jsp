<%-- 
    Document   : animal
    Created on : Oct 4, 2023, 9:45:11 AM
    Author     : dinhg
--%>

<%@page import="java.util.List"%>
<%@page import="sample.food.FoodDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Food List</title>
</head>
<body>
    <h1>Food List</h1>
  
    <form action="foodsearch" method="get">
    <label for="foodID">Search Food by ID:</label>
    <input type="text" id="foodID" name="foodID">
    <input type="submit" value="Search">
</form>

        
    <form action="createfood" method="get">
            <input type="submit" value="Create">

        </form>
        <c:choose>
        <c:when test="${fn:length(food) > 2}">
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
                                <a href="fooddelete?foodID=${food.food_id}" class="delete">Delete</a>
                                <a href="updatefood?foodID=${food.foodname}" class="update">Update</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
        </c:when>
        <c:otherwise>
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
                    <c:forEach var="food" items="${foods}">
                        <tr>
                            <td>${food.food_id}</td>
                            <td>${food.foodname}</td>
                            <td class="action-column">
                                <a href="fooddelete?foodID=${food.food_id}" class="delete">Delete</a>
                                <a href="updatefood?foodID=${food.food_id}" class="update">Update</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

    </div>
        </c:otherwise>
    </c:choose>
    </body>
</html>
