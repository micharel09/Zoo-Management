<%-- 
    Document   : animal
    Created on : Oct 4, 2023, 9:45:11 AM
    Author     : dinhg
--%>

<%@page import="java.util.List"%>
<%@page import="sample.foodschedule.FoodScheduleDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Schedule List</title>
    </head>
    <body>
        <h1>Schedule List</h1>

        <form action="schedulesearch" method="get">
            <label for="scheduleID">Search Schedule by ID:</label>
            <input type="text" id="scheduleID" name="scheduleID">
            <input type="submit" value="Search">
        </form>


        <form action="createfoodschedule" method="get">
            <input type="submit" value="Create">

        </form>

        <form action="importexcelcontroller" method="post" enctype="multipart/form-data">
            File to upload excel: <input type="file" name="excelFile" />
            <br>
            <input type="submit" value="Import"/>
        </form>

      
        <c:choose>
            <c:when test="${fn:length(schedulelist)>0}">

                <table border="1">
                    <tr>
                        <th>Schedule ID</th>
                        <th>Time</th>
                        <th>Animal Cage ID</th>
                        <th>Food ID</th>
                        <th>Date</th>
                        <!-- Add more columns for other animal attributes -->
                    </tr>
                    <c:forEach var="schedule" items="${schedulelist}">
                        <tr>
                            <td>${schedule.schedule_id}</td>
                            <td>${schedule.time}</td>
                            <td>${schedule.animalcage_id}</td>
                            <td>${schedule.food_id}</td>
                            <td>${schedule.date}</td>
                            <td>
                                <a href="scheduledelete?scheduleID=${schedule.schedule_id}">Delete</a>
                            </td>
                            <td>
                                <a href="updateschedule?scheduleID=${schedule.schedule_id}">Update</a>
                            </td>
                            <!-- Add more columns for other animal attributes -->
                        </tr>
                    </c:forEach>
                </table>
            </c:when>
            <c:otherwise>
                <table border="1">
                    <tr>
                        <th>Schedule ID</th>
                        <th>Time</th>
                        <th>Animal Cage ID</th>
                        <th>Food ID</th>
                        <th>Date</th>
                        <!-- Add more columns for other animal attributes -->
                    </tr>
                    <c:forEach var="schedule" items="${schedules}">
                        <tr>
                            <td>${schedule.schedule_id}</td>
                            <td>${schedule.time}</td>
                            <td>${schedule.animalcage_id}</td>
                            <td>${schedule.food_id}</td>
                            <td>${schedule.date}</td>
                            <td>
                                <a href="scheduledelete?scheduleID=${schedule.schedule_id}">Delete</a>
                            </td>
                            <td>
                                <a href="updateschedule?scheduleID=${schedule.schedule_id}">Update</a>
                            </td>
                            <!-- Add more columns for other animal attributes -->
                        </tr>
                    </c:forEach>
                </table>
            </c:otherwise>
        </c:choose>
    </body>
</html>
