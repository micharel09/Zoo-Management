<%@page import="java.util.List"%>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title> Responsive Registration Form | CodingLab </title>
    <link rel="stylesheet" href="style.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <script src="https://cdn.tailwindcss.com"></script>
   </head>
   <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
body{
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 10px;
  background: linear-gradient(135deg, #52d789, #307964);
}
.container{
  max-width: 700px;
  width: 100%;
  background-color: #fff;
  padding: 25px 30px;
  border-radius: 5px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
}
.container .title{
  font-size: 25px;
  font-weight: 500;
  position: relative;
}
.container .title::before{
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 30px;
  border-radius: 5px;
  background: linear-gradient(135deg, #52d789, #307964);
}
.content form .user-details{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 20px 0 12px 0;
}
form .user-details .input-box{
  margin-bottom: 15px;
  width: calc(100% / 2 - 20px);
}
form .input-box span.details{
  display: block;
  font-weight: 500;
  margin-bottom: 5px;
}
.user-details .input-box input{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}
.user-details .input-box input:focus,
.user-details .input-box input:valid{
  border-color: #52d789;
}
 form .gender-details .gender-title{
  font-size: 20px;
  font-weight: 500;
 }
 form .category{
   display: flex;
   width: 80%;
   margin: 14px 0 ;
   justify-content: space-between;
 }
 form .category label{
   display: flex;
   align-items: center;
   cursor: pointer;
 }
 form .category label .dot{
  height: 18px;
  width: 18px;
  border-radius: 50%;
  margin-right: 10px;
  background: #d9d9d9;
  border: 5px solid transparent;
  transition: all 0.3s ease;
}
 #dot-1:checked ~ .category label .one,
 #dot-2:checked ~ .category label .two,
 #dot-3:checked ~ .category label .three{
   background: #52d789;
   border-color: #d9d9d9;
 }
 form input[type="radio"]{
   display: none;
 }
 form .button{
   height: 45px;
   margin: 35px 0
 }
 form .button input{
   height: 100%;
   width: 100%;
   border-radius: 5px;
   border: none;
   color: #fff;
   font-size: 18px;
   font-weight: 500;
   letter-spacing: 1px;
   cursor: pointer;
   transition: all 0.3s ease;
   background: linear-gradient(135deg, #52d789, #376d50);
 }
 form .button input:hover{
  /* transform: scale(0.99); */
  background: linear-gradient(-135deg, #52d789, #376d50);
  }
 @media(max-width: 584px){
 .container{
  max-width: 100%;
}
form .user-details .input-box{
    margin-bottom: 15px;
    width: 100%;
  }
  form .category{
    width: 100%;
  }
  .content form .user-details{
    max-height: 300px;
    overflow-y: scroll;
  }
  .user-details::-webkit-scrollbar{
    width: 5px;
  }
  }
  @media(max-width: 459px){
  .container .content .category{
    flex-direction: column;
  }
}
   </style>
<body>
  <div class="container">
    <div class="title">Update Account</div>
    <div class="content">
      <form action="MainController" method="POST">
        <%  
           UserDTO user =(UserDTO) session.getAttribute("EMPLOYEE_UPDATE");
        %>
        <div style="display: flex; align-items: center; margin-top: 4px">
  <h1 style="margin: 0;">EDIT ACCOUNT</h1>
  <h1 class="text-red-500" style="margin-left: 10px;"><%= user.getEmployee_id() %></h1>
</div>

        <div class="user-details">
            <input type="hidden" name="userID" id="userID" value="<%=user.getEmployee_id()%>"required="">
          <div class="input-box">
            
            <span class="details">Full Name</span>
            <input type="text" name="FullName" id="fullName" value="<%=user.getFullname()%>"required>
          </div>
          <div class="input-box">
            <span class="details">Email</span>
            <input type="email" name="Email" value="<%=user.getEmail()%>"id="Email" required>
          </div>
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="tel" name="Phone" value="<%=user.getPhone()%>" id="Phone" required pattern="[0-9]{10}" title="Số điện thoại phải có 10 chữ số">
          </div>
          <div class="input-box">
            <label class="font-medium" for="Gender">Gender :</label><br>
            <select name="Gender" id="Gender">
              <option value="Male" <%= user.getGender().equals("Male") ? "selected" : "" %>>Male</option>
              <option value="Female" <%= user.getGender().equals("Female") ? "selected" : "" %>>Female</option>
          </select><br> 
          </div>
          
        </div>
        <div class="gender-details">
          <input value="ADMIN" <%= user.getRoleID().equals("ADMIN") ? "selected" : "" %> type="radio" name="roleID"  id="dot-1">
          <input value="MANAGER" <%= user.getRoleID().equals("MANAGER") ? "selected" : "" %> type="radio" name="roleID" id="dot-2">
          <input value="TRAINER" <%= user.getRoleID().equals("TRAINER") ? "selected" : "" %> type="radio" name="roleID" id="dot-3">
          <span  class="gender-title">ROLE</span>
          
          <div class="category">
          <label  for="dot-1">
            <span class="dot one"></span>
            <span class="gender">ADMIN</span>
          </label>
          <label for="dot-2">
            <span class="dot two"></span>
            <span class="gender">MANAGER</span>
          </label>
          <label for="dot-3">
            <span class="dot three"></span>
            <span class="gender">TRAINER</span>
          </label>
          </div>
        </div>
        <div class="button">
          <input type="submit" name="action" value="Update_Acount">
          <a class="text-center mx-auto " href="MainController?action=BackAdminPage">Back</a>   
        </div>
      </form>
    </div>
  </div>

</body>
</html>