<%-- 
    Document   : Schedule_Select_Area
    Created on : Oct 20, 2023, 4:59:58 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <form action="Foodingschedule_MainController">
            <label for="Search_Area">Area</label>
            <select name="Search_Area" id="Search_Area">
                <option value="Area001">Area001</option>
                <option value="Area002">Area002</option>
                <option value="Area003">Area003</option>
                <option value="Area004">Area004</option>
            </select>
            
            
            <input type="submit" name="action" name="Select_Area" value="Select_Area"/>
        </form>
    </body>
</html>
