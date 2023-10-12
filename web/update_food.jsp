<%-- 
    Document   : update_anime
    Created on : Oct 6, 2023, 9:57:04 AM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="updatefood" method="post">
            Food ID
            <input type="hidden" name="foodid" value="${aa.food_id}"/>
            <br>
            Food Name
            <input type="text" name="foodname" value="${aa.foodname}"/>
            <br>

            <input type="submit" value="Submit"/>

        </form>
    </body>
</html>
