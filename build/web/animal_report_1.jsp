<%-- 
    Document   : animal_report
    Created on : Oct 6, 2023, 3:23:10 PM
    Author     : dinhg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Animal Report List</title>
</head>
<body>
    <h1>Animal Report List</h1>
    <table border="1">
        <tr>
            <th>Animal Report ID</th>
            <th>Date</th>
            <th>Note</th>
            <th>Animal ID</th>
            <!-- Add more columns for other animal attributes -->
        </tr>
        <c:forEach var="animalreport" items="${animalreport}">
            <tr>
                <td>${animalreport.report_id}</td>
                <td>${animalreport.date}</td>
                <td>${animalreport.note}</td>
                <td>${animalreport.animal_id}</td>
                <td>
            <a href="DeleteAnimalReportController?animalID=${animalreport.report_id}">Delete</a>
        </td>
        <td>
            <a href="UpdateAnimalReportController?animalID=${animalreport.animal_id}">Update</a>
        </td>
                <!-- Add more columns for other animal attributes -->
            </tr>
        </c:forEach>
    </table>
    <form action="SearchAnimalReportController" method="get">
    <label for="report_id">Search Animal Report by ID:</label>
    <input type="text" id="report_id" name="report_id">
    <input type="submit" value="Search">
</form>

</body>
</html>
