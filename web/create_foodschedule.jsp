<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Create Food Schedule</title>
    </head>
    <body>
        <h1>Create Food Schedule</h1>
        <form action="createfoodschedule" method="post">
            <label for="scheduleid">Schedule ID:</label>
            <input type="hidden" id="scheduleid" name="scheduleid" required />
            <br />
            <label for="time">Time:</label>
            <input type="time" id="time" name="time" required />

            <br />
            Animal Cage ID
            <select name="animalcageid">
                <c:forEach var="cage" items="${animalcage}">
                    <option>${cage.animalcage_id}</option>
                </c:forEach>
            </select>

            <br />
            Food ID
            <select name="foodid">
                <c:forEach var="f" items="${food}">
                    <option>${f.food_id}</option>
                </c:forEach>
            </select>

            <br />
            <label for="date">Date:</label>
            <input type="date" id="date" name="date" required />
            <br />
            <input type="submit" value="Submit" />
        </form>
    </body>
</html>
