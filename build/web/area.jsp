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
        <h1>Location Area</h1>
        <table border="1">
            <thead>
                <tr>

                    <th>Animal Cage ID</th>
                    <th>Employee_ID</th>
                    <th>location</th>
                    <th>Name</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${a}" var="o">
                    <tr>
                        <td><a href="animalcagesearch?animalcageID=${o.animalcage_id}">${o.animalcage_id}</a></td>
                        <td>${o.employee_id}</td>
                        
                            <td>${o.area_id}</td>

                            <td><a href="animalsearch?animalID=${o.animalcage_id}">${o.name}</a></td>
                    </tr>
                </c:forEach>

            </tbody>
        </table>

    </body>
</html>