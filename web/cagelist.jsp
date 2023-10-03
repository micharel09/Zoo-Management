
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Danh sách chuồng thú</title>
    </head>
    <body>

        <table border="1">
            <thead>
                <tr>
                    <th>name</th>
                    <th>arealocation</th>
                    <th>animalcage_id</th>
                    <th>status</th>
                    <th>fullname</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${cage}" var="o" varStatus="status">>
                    <tr>
                        <td>${o.name}</td>
                        <td>${o.animalcage_id}</td>
                        <c:forEach items="${listarea}" var="l">
                            <td>${l.areastatus}</td>
                            <td>${l.arealocation}</td>

                        </c:forEach>
                        <c:forEach items="${trainer}" var="t">
                            <td>${t.fullname}</td>
                        </c:forEach>
                    </tr>
                </c:forEach>


            </tbody>
        </table>


    </body>
</html>
