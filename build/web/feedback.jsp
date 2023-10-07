<%-- 
    Document   : animal
    Created on : Oct 4, 2023, 9:45:11 AM
    Author     : dinhg
--%>

<%@page import="java.util.List"%>
<%@page import="sample.feedback.FeedbackDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback List</title>
</head>
<body>
    <h1>Feedback List</h1>
    <table border="1">
        <tr>
            <th>Feedback ID</th>
            <th>Title</th>
            <th>Purpose</th>
            <th>Date</th>
            <th>Process Note</th>
            <th>Employee ID</th>
            <th>Status</th>
            <!-- Add more columns for other animal attributes -->
        </tr>
        <c:forEach var="feedback" items="${feedback}">
            <tr>
                <td>${feedback.feedback_id}</td>
                <td>${feedback.title}</td>
                <td>${feedback.purpose}</td>
                <td>${feedback.date}</td>
                <td>${feedback.processnote}</td>
                <td>${feedback.employee_id}</td>
                <td>${feedback.status}</td>
                
                <td>
            <a href="DeleteFeedbackController?feedback_id=${feedback.feedback_id}">Delete</a>
        </td>
        <td>
            <a href="UpdateFeedbackController?feedback_id=${feedback.feedback_id}">Update</a>
        </td>
                <!-- Add more columns for other animal attributes -->
            </tr>
        </c:forEach>
    </table>
    <form action="SearchFeedbackController" method="get">
    <label for="feedback_id">Search Feedback by ID:</label>
    <input type="text" id="feedback_id" name="feedback_id">
    <input type="submit" value="Search">
</form>

</body>
</html>
