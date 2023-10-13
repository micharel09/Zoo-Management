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
        <form action="update" method="post" >
            id
             <input value="${feedback.feedback_id}" type="hidden" name="id"/>
         
             
             processnote
             <input value="${feedback.processnote}" type="text" name="processnote"/>
             <br>
            
             <select name="status">
                <option>${feedback.status}</option>
                <option>APPROVED</option>
                <option>REJECTED </option>
            </select>
         
            
            
          


            <input type="submit" value="Submit"/>

        </form>
    </body>
</html>
    