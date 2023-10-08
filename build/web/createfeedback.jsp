<%-- 
    Document   : update_anime
    Created on : Oct 6, 2023, 9:57:04 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="CreateFeedback" method="post" >

            title
            <input type="text" name="title"/>
            <br>
            purpose
            <input type="text" name="purpose"/>
            
            <br>
            <input type="date" name="date">
            <br>
            processnote
            <input type="text" name="processnote"/>
            
            <br>
            employeeid
            <input type="text" name="employeeid"/>
            
          


            <input type="submit" value="Submit"/>

        </form>
    </body>
</html>
    