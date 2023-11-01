<%-- 
    Document   : Schedule_Animal_Cage
    Created on : Oct 20, 2023, 9:58:24 AM
    Author     : ACER
--%>

<%@page import="sample.foodingschedule.ScheduleDTO"%>
<script src="https://cdn-tailwindcss.vercel.app/"></script>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body>

       <%
        String day = (String) session.getAttribute("DAY");
        String name_cage = (String) session.getAttribute("NAME_CAGE");
        String name_area = (String) session.getAttribute("NAME_AREA");
       %>
       <h4> <%= name_cage %> Cage of <%= name_area %> Area</h4>

       
        <form action="Foodingschedule_MainController">
            <label for="Gender">Week</label>
            <select name="Get_Day" id="Get_Day">
                <option value="2023-10-16" <%=day.equals("2023-10-16") ? "selected" : ""%>>16-10 to 22-10</option>
                <option value="2023-10-23" <%=day.equals("2023-10-23") ? "selected" : ""%>>23-10 to 29-10</option>
                <option value="2023-10-30" <%=day.equals("2023-10-30") ? "selected" : ""%>>30-10 to 05-11</option>
                <option value="2023-11-06" <%=day.equals("2023-11-06") ? "selected" : ""%>>06-11 to 12-11</option>
                <option value="2023-11-13" <%=day.equals("2023-11-13") ? "selected" : ""%>>13-11 to 19-11</option>
                <option value="2023-11-20" <%=day.equals("2023-11-20") ? "selected" : ""%>>20-11 to 26-11</option>
            </select>
            
           
             <input type="submit" name="action" name="Search" value="Search"/>
        </form>
        
         <%
        List<ScheduleDTO> listSchedule = (List<ScheduleDTO>) session.getAttribute("LIST_SCHEDULE");
        if (listSchedule != null && listSchedule.size() > 0) {
    %>

    <table> 
        <thead>
        
            <tr>               
                <th>Day</th>
                <th>Name Food</th>
                <th>Time</th>
                <th>Status</th>
                <th>Photo</th>
            </tr>
            
        </thead>
        <tbody>
            <%
                int i;
for (i = 0; i < 7; i++) {
    ScheduleDTO schedule = listSchedule.get(i);
%>
        <ul class="">
            <li><%= schedule.getDay_Feeding() %></li>
            <li><%= schedule.getName_Food() %></li>
            <li><%= schedule.getStart_Time() %> to <%= schedule.getEnd_Time() %></li>
            <li><%= schedule.getNote() %></li>
            <li><img style="height: 50px; width: 100px" src="<%= schedule.getPhoto() %>" /></li>
        </ul>


<%
}
%>
       
<%
for (i = 7; i < 14; i++) {
    ScheduleDTO schedule = listSchedule.get(i);
%>
<tr>
    <td><%=schedule.getDay_Feeding()%></td>
    <td><%=schedule.getName_Food()%></td>
    <td><%=schedule.getStart_Time()%> to <%=schedule.getEnd_Time()%></td>
    <td><%=schedule.getNote()%></td>
    <td><img style="height: 50px;width: 100px" src="<%=schedule.getPhoto()%>"  /></td>
</tr>
<%
}
%>


    <% 
                }  %>


</tbody>
 
        
    </body>
</html>