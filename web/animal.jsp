<%-- 
    Document   : animal
    Created on : Oct 4, 2023, 9:45:11 AM
    Author     : dinhg
--%>

<%@page import="java.util.List"%>
<%@page import="sample.animal.AnimalDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Animal List</title>
</head>
<body>
    <h1>Animal List</h1>
  
    <form action="animalsearch" method="get">
    <label for="animalID">Search Animal by ID:</label>
    <input type="text" id="animalID" name="animalID">
    <input type="submit" value="Search">
</form>

        
    <form action="createanimal" method="get">
            <input type="submit" value="Create">

        </form>
        <c:choose>
        <c:when test="${fn:length(animallist) > 2}">
            
            <table border="1">
                <tr>
                    <th>Animal ID</th>
                    <th>Name</th>
                    <th>Day In</th>
                    <th>Photo</th>
                    <th>Animal Cage ID</th>
                    <!-- Add more columns for other animal attributes -->
                </tr>
                <c:forEach var="animal" items="${animallist}">
                    <tr>
                        <td>${animal.animal_id}</td>
                        <td>${animal.name}</td>
                        <td>${animal.dayin}</td>
                        <td width="100"><img src="./animal_picture/${animal.photo}" width="80" height="70"/></td>
                        <td>${animal.animalcage_id}</td>
                        <td>
                            <a href="animaldelete?animalID=${animal.animal_id}">Delete</a>
                        </td>
                        <td>
                            <a href="updateanimal?animalID=${animal.animal_id}">Update</a>
                        </td>
                        <!-- Add more columns for other animal attributes -->
                    </tr>
                </c:forEach>
            </table>
        </c:when>
        <c:otherwise>
            <table border="1">
                <tr>
                    <th>Animal ID</th>
                    <th>Name</th>
                    <th>Day In</th>
                    <th>Photo</th>
                    <th>Animal Cage ID</th>
                    <!-- Add more columns for other animal attributes -->
                </tr>
                <c:forEach var="animal" items="${animals}">
                    <tr>
                        <td>${animal.animal_id}</td>
                        <td>${animal.name}</td>
                        <td>${animal.dayin}</td>
                        <td width="100">${animal.photo}</td>
                        <td>${animal.animalcage_id}</td>
                        <td>
                            <a href="animaldelete?animalID=${animal.animal_id}">Delete</a>
                        </td>
                        <td>
                            <a href="updateanimal?animalID=${animal.animal_id}">Update</a>
                        </td>
                        <!-- Add more columns for other animal attributes -->
                    </tr>
                </c:forEach>
            </table>
        </c:otherwise>
    </c:choose>
    </body>
</html>
