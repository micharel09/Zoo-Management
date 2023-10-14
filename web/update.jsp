<%-- 
    Document   : edit
    Created on : Sep 29, 2023, 11:57:29 AM
    Author     : ACER
--%>

<%@page import="java.util.List"%>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    
    <form action="MainController" method="POST">
<!--        <label for="userID">Employee ID:</label>
        <input type="text" name="userID" id="userID" required><br>-->
        <%  
           UserDTO user =(UserDTO) session.getAttribute("EMPLOYEE_UPDATE");
        %>
       <h1>EDIT ACCOUNT <%=user.getEmployee_id()%></h1>
      <input type="hidden" name="userID" id="userID" value="<%=user.getEmployee_id()%>"required=""><br>
        <label for="fullName">Full Name:</label>
        <input type="text" name="FullName" id="fullName" value="<%=user.getFullname()%>"required=""><br>
        
        
        <label for="Phone">Phone :</label>
       <input type="tel" name="Phone" value="<%=user.getPhone()%>" id="Phone" required pattern="[0-9]{10}" title="Số điện thoại phải có 10 chữ số">



         <label for="Email">Email :</label>
        <input type="email" name="Email" value="<%=user.getEmail()%>"id="Email" required=""><br>
        
        
      <label for="Gender">Gender:</label>
<select name="Gender" id="Gender">
    <option value="Male" <%= user.getGender().equals("Male") ? "selected" : "" %>>Male</option>
    <option value="FeMale" <%= user.getGender().equals("FeMale") ? "selected" : "" %>>Female</option>
</select><br> 
       <label for="roleID">Role ID:</label>
<select name="roleID" id="roleID">
    <option value="ADMIN" <%= user.getRoleID().equals("ADMIN") ? "selected" : "" %>>ADMIN</option>
    <option value="MANAGER" <%= user.getRoleID().equals("MANAGER") ? "selected" : "" %>>MANAGER</option>
    <option value="TRAINER" <%= user.getRoleID().equals("TRAINER") ? "selected" : "" %>>TRAINER</option>
</select><br>

<!--
        <label for="password">Password:</label>
        <input type="password" name="password" id="password" required><br>

        <label for="confirm">Confirm:</label>       <input type="password" name="confirm" id="confirm" required><br>-->
        
       

        <input type="submit" name="action" value="Update_Acount">

        <input type="reset" value="Reset">
        <a href="MainController?action=BackAdminPage">Back</a>     
       
    </form>

</body>
</html>
