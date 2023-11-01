<%-- Document : headermanager Created on : Oct 19, 2023, 8:55:39 PM Author :
Quan --%> <%@page import="sample.user.UserDTO"%> <%@page contentType="text/html"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <!-- Gọi tệp head.html -->
    <link rel="import" href="components/headermanager.jsp" />
    <!-- Tailwind -->
    <script src="https://cdn-tailwindcss.vercel.app/"></script>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    />
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css"
      rel="stylesheet"
    />
    <link href="./css/tailwind.css" rel="stylesheet" />
    <link
      rel="stylesheet"
      href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css"
    />
    <script
      src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.js"
      defer
    ></script>
    <script
      src="https://kit.fontawesome.com/5b0b34b925.js"
      crossorigin="anonymous"
    ></script>
    <style>
      .header {
        background-image: url("../img/header.gif");
        background-repeat: no-repeat;
        background-size: cover;
      }
      .header:hover a {
        height: 100%;
      }

      .navbar-text {
        color: white;
      }

      /* Add any additional styles as needed */
    </style>
  </head>
  <% UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER"); if
  (loginUser == null || !"MANAGER".equals(loginUser.getRoleID())) {
  response.sendRedirect("login.html"); return; } String search =
  request.getParameter("search"); if (search == null) { search = ""; } %>
  <body>
    <div>
      <!-- header -->
      <nav class="header">
        <div class="flex justify-between items-center">
          <!-- logo -->
          <a href="trainer.jsp" class="flex items-center justify-center w-1/2">
            <div class="">
              <img src="img/logo2.png" class="h-20 text-xl" alt="Logo" />
            </div>
            <span
              class="self-center text-4xl font-extralight whitespace-nowrap dark:text-white"
              >Zoo Manager</span
            >
          </a>
          <!-- end logo -->

          <!-- user logo -->
          <div class="flex items-center w-1/4">
            <img
              src="https://placekitten.com/30/30"
              class="rounded-full mr-2"
            />
            <p class="text-2xl text-white"><%=loginUser.getFullname()%></p>

            <div class="cursor-pointer">
              <a href="login.jsp">
                <p class="pl-2 text-2xl text-white">- Logout</p>
              </a>
            </div>
          </div>
          <!-- end user -->
        </div>
      </nav>
      <!-- end header -->
    </div>
  </body>
</html>
