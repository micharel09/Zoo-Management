<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Page</title>
   
</head>
<body>
        
    
    
        <h2>Login Page</h2>
        <form action="MainController" method="POST">
                <label for="userID">User ID:</label>
                <input type="text" name="Employee_ID" id="userID" required/>
                <label for="password">Password:</label>
                <input type="password" name="password" id="password" required/>
                <input type="submit" name="action" value="Login"/>
                
                <input type="reset" value="Reset"/>
        </form>
       
            <a href="MainController?action=CreatePage">Sign Up</a>
        
        <%
            String error = (String) request.getAttribute("ERROR");
            if (error == null) {
                error = "";
            }
        %>
       
            <%= error%>
        
    
</body>
</html>
