
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
      <div class="flex items-center">
        <button
          @click="sidebarOpen = true"
          class="text-gray-500 focus:outline-none lg:hidden"
        >
          <svg
            class="w-6 h-6"
            viewBox="0 0 24 24"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              d="M4 6H20M4 12H20M4 18H11"
              stroke="currentColor"
              stroke-width="2"
              stroke-linecap="round"
              stroke-linejoin="round"
            ></path>
          </svg>
        </button>

        <div class="relative mx-4 lg:mx-0">
          <span class="absolute inset-y-0 left-0 flex items-center pl-3">
            <svg class="w-5 h-5 text-gray-500" viewBox="0 0 24 24" fill="none">
              <path
                d="M21 21L15 15M17 10C17 13.866 13.866 17 10 17C6.13401 17 3 13.866 3 10C3 6.13401 6.13401 3 10 3C13.866 3 17 6.13401 17 10Z"
                stroke="currentColor"
                stroke-width="2"
                stroke-linecap="round"
                stroke-linejoin="round"
              ></path>
            </svg>
          </span>

          <input
            class="w-32 pl-10 pr-4 rounded-md form-input sm:w-64 focus:border-indigo-600"
            type="text"
            placeholder="Search"
          />
        </div>
      </div>

     
          <% UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser == null || !"ADMIN".equals(loginUser.getRoleID())) {
            response.sendRedirect("login.html"); return; } String search =
            request.getParameter("search"); if (search == null) { search = ""; }
            %>
      
              <h1 class="animate-charcter font-extralight text-3xl mr-96">
                Welcome Admin <%=loginUser.getFullname()%>
              </h1>
          

        
  
    </header>
  </body>
</html>
