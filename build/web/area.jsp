<%-- 
    Document   : area
    Created on : Sep 27, 2023, 10:10:35 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>location</th>
                    <th>genre</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${a}" var="o">
                  <tr>
                    <td>${o.manager_id}</td>
                    <td>${o.genre}</td>
                </tr>
                </c:forEach>

            </tbody>
        </table>

    </body>
</html>