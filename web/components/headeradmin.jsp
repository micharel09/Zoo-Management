<%@page import="sample.user.UserDTO"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="import" href="components/headeradmin.html" />

    <title>Document</title>
  </head>
  <body>
    <header
      class="flex items-center justify-between px-6 py-4 bg-white border-b-4 border-green-600"
    >
      <% UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER"); if
      (loginUser == null || !"ADMIN".equals(loginUser.getRoleID())) {
      response.sendRedirect("login.html"); return; } String search =
      request.getParameter("search"); if (search == null) { search = ""; } %>

      <h1 class="animate-charcter font-extralight text-3xl mr-96">
        Welcome Admin <%=loginUser.getFullname()%>
      </h1>
    </header>
  </body>
</html>
