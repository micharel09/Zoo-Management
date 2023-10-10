<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Animal Cage List</title>
    </head>
    <body>
        <h1>Animal Cage List</h1>
        <p style="color: red">${errorMessage}</p>
        
        <form action="animalcagesearch" method="get">
            <label for="animalcageID">Search Animal Cage by ID:</label>
            <input type="text" id="animalcageID" name="animalcageID">
            <input type="submit" value="Search">
        </form>

        <form action="createanimalcage" method="get">
            <input type="submit" value="Create">
        </form>

        <c:choose>
            <c:when test="${fn:length(animalcagelist) > 2}">
                <table border="1">
                    <tr>
                        <th>Animal Cage ID</th>
                        <th>Name</th>
                        <th>Area ID</th>
                        <th>Employee ID</th>
                        <!-- Add more columns for other animal cage attributes -->
                    </tr>
                    <c:forEach var="animalcage" items="${animalcagelist}">
                        <tr>
                            <td>${animalcage.animalcage_id}</td>
                            <td>${animalcage.name}</td>
                            <td>${animalcage.area_id}</td>
                            <td>${animalcage.employee_id}</td>
                            <td>
                                <a href="deleteanimalcage?animalcageID=${animalcage.animalcage_id}">Delete</a>
                            </td>
                            <td>
                                <a href="updateanimalcage?animalcageID=${animalcage.animalcage_id}">Update</a>
                            </td>
                            <!-- Add more columns for other animal cage attributes -->
                        </tr>
                    </c:forEach>
                </table>
            </c:when>
            <c:otherwise>
                <table border="1">
                    <tr>
                        <th>Animal Cage ID</th>
                        <th>Name</th>
                        <th>Area ID</th>
                        <th>Employee ID</th>
                        <!-- Add more columns for other animal cage attributes -->
                    </tr>
                    <c:forEach var="animalcage" items="${animalcage}">
                        <tr>
                            <td>${animalcage.animalcage_id}</td>
                            <td>${animalcage.name}</td>
                            <td>${animalcage.area_id}</td>
                            <td>${animalcage.employee_id}</td>
                            <td>
                                <a href="deleteanimalcage?animalcageID=${animalcage.animalcage_id}">Delete</a>
                            </td>
                            <td>
                                <a href="updateanimalcage?animalcageID=${animalcage.animalcage_id}">Update</a>
                            </td>
                            <!-- Add more columns for other animal cage attributes -->
                        </tr>
                    </c:forEach>
                </table>
            </c:otherwise>
        </c:choose>
    </body>
</html>
