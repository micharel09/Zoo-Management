<%-- 
    Document   : update_anime
    Created on : Oct 6, 2023, 9:57:04 AM
    Author     : ADMIN
--%>

<%@page import="sample.user.UserDTO"%>
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
            <textarea name="purpose"> </textarea>
            
            <br>
            <input type="hidden" name="date">
            
            <br>
          
            <input type="hidden" name="processnote"/>
            
            <br>
            <% UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER"); %>
            employeeid : <%=loginUser.getEmployee_id()%> 
            
            
            <input type="hidden" name="employeeid" value="<%=loginUser.getEmployee_id()%>"/>
            
          


            <input type="submit" value="Submit"/>

        </form>
    </body>
</html>
    