<%-- 
    Document   : Schedule_Select_Trainer
    Created on : Oct 20, 2023, 4:43:58 PM
    Author     : ACER
--%>


<%@page import="sample.foodingschedule.AnimalCageDTO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        
         <%
        String NAME_AREA = (String) session.getAttribute("NAME_AREA");
       
         %>

    <h1>This is Area <%=NAME_AREA%> </h1>
    </head>
    <body>
        
        <%
            List<AnimalCageDTO> listCage = (List<AnimalCageDTO>) session.getAttribute("LIST_ANIMAL_CAGE");;
            if (listCage != null && listCage.size() > 0) {

        %>
        <table border="1">
            <thead>
                <tr>
                    <th>Name Cage</th>
                     <th>Staff in charge</th>
                </tr>
            </thead>
            <tbody>
                <%for (AnimalCageDTO Cage : listCage) {%>

                <tr>
                    <td><%=Cage.getName()%></td>
                    <td><%=Cage.getEmployee_ID()%></td>
            <form action="Foodingschedule_MainController">
                <td>
                    <input type="hidden" name="ID_Animal_Cage" value="<%=Cage.getAnimalCage_ID()%>"/>
                    <input type="hidden" name="Name_Cage" value="<%=Cage.getName()%>"/>
                    <input type="submit" name="action" name="Select_Schecdule" value="Select_Schecdule"/>
                </td>
            </form>
        </tr>

        <% }%>
    </tbody>
</table>

<%}%>
</body>
</html>
