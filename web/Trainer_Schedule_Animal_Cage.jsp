<%-- 
    Document   : Schedule_Animal_Cage
    Created on : Oct 20, 2023, 9:58:24 AM
    Author     : ACER
--%>

<%@page import="sample.foodingschedule.ScheduleDTO"%>

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
       
       %>
       <h4> <%= name_cage %> Cage</h4>

       <%
           String error = (String) request.getAttribute("MESSAGE");
           if (error == null) {
               error = "";
           }
       %>

       <h3><%= error%></h3>
       
       
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
            
           
             <input type="submit" name="action" name="Search" value="Search_For_Trainer"/>
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
                for (ScheduleDTO schedule : listSchedule) {
            %>
            <tr >

                <td><%=schedule.getDay_Feeding()%></td>
                <td><%=schedule.getName_Food()%></td>
                <td><%=schedule.getStart_Time()%> to <%=schedule.getEnd_Time()%></td>
                 
                <td><%=schedule.getNote()%></td>
                <td><img style="height: 50px;width: 100px" src="<%=schedule.getPhoto()%>"  /></td>
        <form action="Foodingschedule_MainController">
            <td>
                <input type="hidden" name="Id_Schedule" value="<%=schedule.getID()%>"/>
                
                <input type="hidden" name="Day" value="<%=schedule.getDay_Feeding()%>"/>
                <input type="hidden" name="StartTime" value="<%=schedule.getStart_Time()%>"/>
                <input type="hidden" name="EndTime" value="<%=schedule.getEnd_Time()%>"/>


                
                <input type="submit" name="action" name="Update_Picture_To_Attendance" value="Update_Picture_To_Attendance"/>
            </td>
        </form>         

        <!-- xoa o day ne-->
    </tr>

    <% }
        }%>


         </tbody>
 
        
    </body>
</html>