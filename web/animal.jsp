<%-- 
    Document   : animal
    Created on : Oct 4, 2023, 9:45:11 AM
    Author     : dinhg
--%>

<%@page import="java.util.List"%>
<%@page import="sample.animal.AnimalDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Animal List</title>
</head>
<body>
    <h1>Animal List</h1>
    <table border="1">
        <tr>
            <th>Animal ID</th>
            <th>Name</th>
            <th>Day In</th>
            <th>Day Out</th>
            <th>Note</th>
            <th>Animal Cage ID</th>
            <!-- Add more columns for other animal attributes -->
        </tr>
        <c:forEach var="animal" items="${animals}">
            <tr>
                <td>${animal.animal_id}</td>
                <td>${animal.name}</td>
                <td>${animal.dayin}</td>
                <td>${animal.dayout}</td>
                <td>${animal.note}</td>
                <td>${animal.animalcage_id}</td>
                <td>
            <a href="DeleteAnimalController?animalID=${animal.animal_id}">Delete</a>
        </td>
        <td>
            <a href="UpdateAnimalController?animalID=${animal.animal_id}">Update</a>
        </td>
                <!-- Add more columns for other animal attributes -->
            </tr>
        </c:forEach>
    </table>
    <form action="SearchAnimalController" method="get">
    <label for="animalID">Search Animal by ID:</label>
    <input type="text" id="animalID" name="animalID">
    <input type="submit" value="Search">
</form>

</body>
</html>
