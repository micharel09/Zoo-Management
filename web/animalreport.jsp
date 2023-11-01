<%-- 
    Document   : animalreport
    Created on : Nov 1, 2023, 8:30:32 PM
    Author     : khong phai Minh Tuan
--%>

  <%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="0">
            
            <thead>
                <tr>
                    <th>id</th>
                    <th>date</th>
                    <th>note</th>
                    <th>aniid</th>
                </tr>
            </thead>
            <tbody>
                 <c:forEach items="${listR}" var="n">
                <tr>
                   
                    <td>${n.report_id}</td>
                    <td>${n.date}</td>
                    <td>${n.note}</td>
                    <td>${n.animal_id}</td>
                    
                </tr>
                 </c:forEach>
            </tbody>
           
        </table>


    </body>
</html>
