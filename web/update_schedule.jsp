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
        <form action="updateschedule" method="post">
            Schedule ID
            <input type="hidden" name="scheduleid" value="${schedule.schedule_id}"/>
            <br>
            Time
            <input type="text" name="time" value="${schedule.time}"/>
            <br>
            Animal Cage ID
            <input type="text" name="animalcageid" value="${schedule.animalcage_id}"/>
            <br>
            Food ID
            <input type="text" name="foodid" value="${schedule.food_id}"/>
            <br>

            <input type="submit" value="Submit"/>

        </form>
    </body>
</html>
