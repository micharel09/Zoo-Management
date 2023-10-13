<<<<<<< HEAD
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Food Schedule </title>
</head>
<body>
    <h1>Create Food Schedule </h1>
    <form action="createfoodschedule" method="post">
        <label for="scheduleid">Schedule ID:</label>
        <input type="hidden" id="scheduleid" name="scheduleid" required>
        <br>
        <label for="time">Time:</label>
        <input type="text" id="time" name="time" required>
        
        <br>
        <label for="animalcageid">Animal Cage ID:</label>
        <input type="text" id="time" name="animalcageid" required>
        
        <br>
        <label for="foodid">Food ID:</label>
        <input type="text" id="foodid" name="foodid" required>
        
        <br>
        <input type="submit" value="Submit">
    </form>
</body>
=======
<%@ page contentType="text/html; charset=UTF-8" %> <%@ page language="java"
import="java.util.*" %>
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
      <input type="text" id="time" name="time" required />

      <br />
      <label for="animalcageid">Animal Cage ID:</label>
      <input type="text" id="time" name="animalcageid" required />

      <br />
      <label for="foodid">Food ID:</label>
      <input type="text" id="foodid" name="foodid" required />

      <br />
      <input type="submit" value="Submit" />
    </form>
  </body>
>>>>>>> f561f539f21eda98d384ea3c955c05407fa5d35a
</html>
