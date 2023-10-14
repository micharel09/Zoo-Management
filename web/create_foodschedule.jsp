<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Create Food Schedule</title>
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
        <h1>Create Food Schedule</h1>
        <form action="createfoodschedule" method="post">
            <label for="scheduleid">Schedule ID:</label>
            <input type="hidden" id="scheduleid" name="scheduleid" required />
            <br />
            <label for="time">Time:</label>
            <input type="time" id="timeInput" name="time" required />

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
