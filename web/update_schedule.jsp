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
            <script>
        function convertTimeFormat(input) {
            var timeParts = input.split(':');
            var hours = parseInt(timeParts[0]);
            var minutes = timeParts[1];
            var formattedTime = hours + ":" + minutes;
            return formattedTime;
        }

        function update24HourTime() {
            var timeInput = document.getElementById('timeInput');
            var formattedTime = convertTimeFormat(timeInput.value);
            timeInput.value = formattedTime;
        }
    </script>
    </head>
    <body>
        <form action="updateschedule" method="post">
            Schedule ID
            <input type="hidden" name="scheduleid" value="${schedule.schedule_id}"/>
            <br>
            Time
        <input type="time" id="timeInput" name="time" value="${schedule.time}"/>
            <br>
            Animal Cage ID Old
            <span style="color: red">${schedule.animalcage_id}</span>
            <br>
            Animal Cage ID New
                        <select name="animalcageid">
                <c:forEach var="cage" items="${animalcage}">
                    <option>${cage.animalcage_id}</option>
                </c:forEach>
            </select>
            <br>
            Food ID Old
            <span style="color: red">${schedule.food_id}</span>
            <br>
            Food ID New
            <select name="foodid">
                <c:forEach var="f" items="${food}">
                    <option>${f.food_id}</option>
                </c:forEach>
            </select>
            <br>
            Date
            <input type="date" name="date" value="${schedule.date}"/>
            <br>
            <input type="submit" value="Submit"/>

        </form>
    </body>
</html>
