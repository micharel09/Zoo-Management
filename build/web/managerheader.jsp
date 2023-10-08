
 <%
        UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
        if (loginUser == null || !"MANAGER".equals(loginUser.getRoleID())) {
            response.sendRedirect("login.html");
            return;
        }
        String search = request.getParameter("search");
        if (search == null) {
            search = "";
        }
    %>
<body class="bg-[url('img/grassy-field-with-trees-giraffes-walking-around-with-light-blue-sky-background.jpg')]" style="width: 100%;" >
   <!-- header -->
    <nav class="border-gray-200 bg-green-600">
      <div class="flex p-1">
        <!-- logo -->
        <a href="homepage.jsp" class="flex items-center justify-center w-1/2">
          <div class="">
            <img src="img/logo2.png" class="h-20 text-xl" alt="Logo" />
          </div>
          <span
            class="self-center text-4xl font-extralight whitespace-nowrap dark:text-white"
            >Wild World Zoo</span
          >
        </a>
        <!-- end logo -->
        <!-- navbar -->
        <div
          class="items-center justify-between hidden w-full md:flex md:w-auto md:order-1 w-full"
          id="navbar-user"
        >
          <ul
            class="flex flex-col md:p-0 mt-4 borderrounded-lg md:flex-row md:space-x-8 md:mt-0 md:border-0"
          >
               <li>
              <a href="#"class="navbar-text block py-4 pl-4 text-2xl text-gray-900 rounded before:ease relative h-18 w-full overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700" aria-current="page"
                >ZOO MANAGER  </a
              >
            </li>
            <li>
              <a
                href="homepage.jsp"
                class="navbar-text block py-4 pl-4 ml-52 text-2xl text-gray-900 rounded before:ease relative h-18 w-full overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700"
                aria-current="page"
                >Login as: <%=loginUser.getFullname()%>  </a
              >
            </li>
          </ul>
        </div>
        <!-- end navbar -->
      </div>
    </nav>
    <!-- end header --> 