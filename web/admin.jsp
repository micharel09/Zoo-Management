<%-- 
    Document   : admin
    Created on : Sep 29, 2023, 2:07:18 PM
    Author     : ACER
--%>

<%@page import="java.util.List"%>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
    <head>

    </head>
   
    

    <%
        UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
        if (loginUser == null || !"ADMIN".equals(loginUser.getRoleID())) {
            response.sendRedirect("login.html");
            return;
        }
        String search = request.getParameter("search");
        if (search == null) {
            search = "";
        }
    %>
   
        <h1>Welcome Admin <%=loginUser.getFullname()%> </h1>
        
        <form action="MainController">
        Search Employee_ID to EDIT  <input type="text" name="search" value="<%= search%>"/>
        <input type="submit" name="action" value="Search"/>
    </form>
            <%
        List<UserDTO> listUser1 = (List<UserDTO>) session.getAttribute("LIST_EMPLOYEE");
        if (listUser1 != null && listUser1.size() > 0) {
    %>
    
    <table> 
        <thead>
            <tr>
                <th>Employee_ID</th>
                 <th>Full name</th>
                <th>Role ID</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Gender</th>


                <th>Dependent</th>
              
            </tr>
        </thead>
        <tbody>
            <%
                
                for (UserDTO user : listUser1) {
            %>
       
            <tr >

                <td><%=user.getEmployee_ID()%></td>
                 <td><%=user.getFullname()%></td>
                   <td><%=user.getRoleID()%></td>
                     <td><%=user.getPhone()%></td>
                     <td><%=user.getEmail()%></td>
                       <td><%=user.getGender()%></td>
                         <td><%=user.getDependent()%></td>
              <form action="MainController">
                          <td>
                        <input type="hidden" name="userID" value="<%=user.getEmployee_ID()%>"/>
                         <input type="hidden" name="FullName" value="<%=user.getFullname()%>"/>
                          <input type="hidden" name="RoleID" value="<%=user.getRoleID()%>"/>
                           <input type="hidden" name="Phone" value="<%=user.getPhone()%>"/> 
                           <input type="hidden" name="Email" value="<%=user.getEmail()%>"/>
                            <input type="hidden" name="Gender" value="<%=user.getGender()%>"/>
                             <input type="hidden" name="Dêpndent" value="<%=user.getDependent()%>"/>
                              
                           
                        <input type="hidden" name="search" value="<%=search%>"/>
                        <input type="submit" name="action" name="Update" value="Update"/>
                    </td>
                     </form>
                    <!-- xoa o day ne-->
                    <td>
                        <a href="MainController?search=<%= search%>&action=Delete&userID=<%= user.getEmployee_ID()%>">Delete</a>     
                    </td>
                     <td>
                        <a href="MainController?&action=Send_Notification&userID=<%= user.getEmployee_ID()%>">Send Notification</a>     
                    </td>
              
            </tr>
        
            <% }
            }  %>


    </tbody>
    
</table>
       
            <br>
        
  
<a href="MainController?action=CreatePage">Create Acount</a>
<br>
<a href="MainController?action=logout">LOG OUT</a>
<br>
<br>

   <%
            String error = (String) request.getAttribute("ERROR");
            if (error == null) {
                error = "";
            }
        %>
       
        <h2><%= error%></h2>



</html>
