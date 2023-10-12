<%@ page contentType="text/html; charset=UTF-8" %> <%@ page language="java"
import="java.util.*" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Create Food</title>
  </head>
  <body>
    <h1>Create Food</h1>
    <form action="createfood" method="post">
      <label for="foodid">Food ID:</label>
      <input type="hidden" id="foodid" name="foodid" required />
      <br />
      <label for="foodname">Food Name:</label>
      <input type="text" id="foodname" name="foodname" required />
      <br />
      <input type="submit" value="Submit" />
    </form>
  </body>
</html>
