<%-- 
    Document   : animal_dashboard
    Created on : Nov 4, 2023, 11:13:14 AM
    Author     : ACER
--%>

<%@page import="sample.animal.AnimalDTO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <form action="view_animal_dashboard" method="post">
        from
        <input

            type="date"
            name="start_day_in"
            id="start_day_in"
            placeholder="MM/YY"
            />

        to
        <input
            type="date"
            name="end_day_in"
            id="end_day_in"
            placeholder="MM/YY"
            />

        <input type="submit" name="action" value="Search_Order" />
        
        </form>
        
        
        
           


        <%
            List<AnimalDTO> listAnimal = (List<AnimalDTO>) session.getAttribute("LIST_ANIMAL_DASHBOARD");
            if (listAnimal != null) {
             int TOTAL_SICK = (int) session.getAttribute("TOTAL_SICK");
            int TOTAL_NORMAL = (int) session.getAttribute("TOTAL_NORMAL");
            int TOTAL_DEATH = (int) session.getAttribute("TOTAL_DEATH");%>
               <h2> have <%=TOTAL_SICK%> sick , <%=TOTAL_NORMAL%> normal and <%=TOTAL_DEATH%> depth</h2>
               <%
                if (listAnimal.size() > 0) {
        %>
        <table border="1">
            <thead>
                <tr>
                    <th>Animal_id</th>
                    <th>Animalcage_id</th>
                    <th>Dayin</th>
                    <th>Name</th>
                    <th>Photo</th>
                    <th>Status</th>

                </tr>
            </thead>

            <%
                int count = 1;
                for (AnimalDTO animal : listAnimal) {
            %>

            <tr>
                <td><%=count++%></td>
                <td><%=animal.getAnimal_id()%></td>
                <td><%=animal.getAnimalcage_id()%></td>
                <td><%=animal.getDayin()%></td>
                <td><%=animal.getName()%></td>

                <td

                    >
                    <img style="height: 100px;width: 100px" src="<%=animal.getPhoto()%>">
                </td>
                <!-- xoa o day ne-->
                <td><%=animal.getStatus()%></td>
            </tr>

            <%
                } }
           
                 
            }
            %>
            
           
        </table>
           
    </body>
</html>
