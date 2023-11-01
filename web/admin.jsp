<%-- Document : admin Created on : Sep 29, 2023, 2:07:18 PM Author : ACER --%>
<!-- prettier-ignore -->

<%@page import="java.util.List"%>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
    <script
      src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js"
      defer
    ></script>
    <style>
      .animate-charcter {
        text-transform: uppercase;
        background-image: linear-gradient(
          -225deg,
          #7bff00 0%,
          #119200 29%,
          #005218 67%,
          #0000008c 100%
        );
        background-size: auto auto;
        background-clip: border-box;
        background-size: 200% auto;
        color: #fff;
        background-clip: text;
        text-fill-color: transparent;
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        animation: textclip 2s linear infinite;
        display: inline-block;
        font-size: 190px;
      }

      @keyframes textclip {
        to {
          background-position: 200% center;
        }
      }
    </style>
    <title>Admin</title>
  </head>
  <body>
    <div>
      <div x-data="{ sidebarOpen: false }" class="flex h-screen bg-gray-200">
        <!-- prettier-ignore -->
        <%@ include file="components/sidebaradmin.html" %>
        <div class="flex flex-col flex-1 overflow-hidden">
          <!-- header -->
          <!-- prettier-ignore -->
          <main class="flex-1 overflow-x-hidden bg-gray-200">
                        <% UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
                            if (loginUser == null || !"ADMIN".equals(loginUser.getRoleID())) {
                                response.sendRedirect("login.html");
                                return;
                            }
                            String search
                                    = request.getParameter("search");
                            if (search == null) {
                                search = "";
                            }
                        %>
                        <div class="flex justify-center mt-4">
                            <h1 class="animate-charcter font-extralight text-5xl">
                                Welcome Admin <%=loginUser.getFullname()%>
                            </h1>
                        </div>
                        <div class="container px-6 py-8 mx-auto">
                            <div class="flex justify-between pb-2 border-b border-gray-300">
                                <h3 class="text-5xl font-medium text-gray-700">Employee</h3>
                                <a href="MainController?action=CreatePage" class="relative rounded px-5 py-2.5 overflow-hidden group bg-green-500 relative hover:bg-gradient-to-r hover:from-green-500 hover:to-green-400 text-white hover:ring-2 hover:ring-offset-2 hover:ring-green-400 transition-all ease-out duration-300">
                                    <span class="absolute right-0 w-8 h-32 -mt-12 transition-all duration-1000 transform translate-x-12 bg-white opacity-10 rotate-12 group-hover:-translate-x-40 ease"></span>
                                    <span class="relative">Add Employee</span>
                                </a>

                                <div>
                                    <form action="MainController">
                                        <div class="block relative">
                                            <input
                                                class="hidden text-xl cursor-pointer hover:text-green-500 transition-colors duration-300"
                                                type="submit"
                                                name="action"
                                                value="Search"
                                                />
                                            <input
                                                class="text-xl rounded-3xl border border-gray-200 bg-white placeholder-gray-400 text-gray-700 focus:bg-white focus:placeholder-gray-600 focus:text-gray-700 focus:outline-none"
                                                type="text"
                                                name="search"
                                                placeholder="Search ID..."
                                                value="<%= search%>"
                                                />
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- main -->

                            <div class="flex flex-col mt-2">
                                <div
                                    class="-mx-4 sm:-mx-8 px-4 sm:px-8 overflow-x-hidden overflow-y-hidden"
                                    >
                                    <div
                                        class="inline-block min-w-full overflow-hidden align-middle border-b border-gray-200 shadow sm:rounded-lg"
                                        >
                                        <!-- <%
                        List<UserDTO> listUser1 = (List<UserDTO>) session.getAttribute("LIST_EMPLOYEE");
                        if (listUser1 != null && listUser1.size() > 0) { %>
                                        -->
                                        <% String error = (String) request.getAttribute("ERROR");
                       if (error == null) {
                           error = "";
                       }%>

                                        <!-- error -->
                                        <div>
                                            <h2 class="text-xl text-red-500 text-right mb-3"><%= error%></h2>
                                        </div>

                                        <!-- table -->
                                        <table class="min-w-full">
                                            <thead class="bg-neutral-100">
                                                <tr class="text-white">
                                                    <th
                                                        class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                                                        >
                                                        Employee_ID
                                                    </th>
                                                    <th
                                                        class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                                                        >
                                                        Full Name
                                                    </th>
                                                    <th
                                                        class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                                                        >
                                                        Role_ID
                                                    </th>

                                                    <th
                                                        class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                                                        >
                                                        Phone
                                                    </th>
                                                    <th
                                                        class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                                                        >
                                                        Email
                                                    </th>
                                                    <th
                                                        class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                                                        >
                                                        Gender
                                                    </th>
                                                    <th
                                                        class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                                                        >
                                                        Photo
                                                    </th>
                                                    <th
                                                        class="px-6 py-3 text-xs text-center font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                                                        >
                                                        Action
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody class="bg-white">
                                                <% for (UserDTO user : listUser1) {%>

                                                <tr>
                                                    <td
                                                        class="px-6 py-4 whitespace-no-wrap border-b border-gray-200"
                                                        >
                                                        <%=user.getEmployee_id()%>
                                                    </td>

                                                    <td
                                                        class="px-6 py-4 whitespace-no-wrap border-b border-gray-200"
                                                        >
                                                        <%=user.getFullname()%>
                                                    </td>
                                                    <td
                                                        class="px-6 py-4 whitespace-no-wrap border-b border-gray-200"
                                                        >
                                                        <%=user.getRoleID()%>
                                                    </td>

                                                    <td
                                                        class="px-6 py-4 whitespace-no-wrap border-b border-gray-200"
                                                        >
                                                        <%=user.getPhone()%>
                                                    </td>
                                                    <td
                                                        class="px-6 py-4 whitespace-no-wrap border-b border-gray-200"
                                                        >
                                                        <%=user.getEmail()%>
                                                    </td>
                                                    <td
                                                        class="px-6 py-4 whitespace-no-wrap border-b border-gray-200"
                                                        >
                                                        <%=user.getGender()%>
                                                    </td>
                                                    <td
                                                        class="px-6 py-4 whitespace-no-wrap border-b border-gray-200"
                                                        >
                                                        <img style="height: 100px;width: 100px" src="<%=user.getPhoto()%>">
                                                    </td>
                                                    <!-- form -->
                                            <form action="MainController">
                                                <td

                                                    >

                                                    <input
                                                        type="hidden"
                                                        name="userID"
                                                        value="<%=user.getEmployee_id()%>"
                                                        />
                                                    <input
                                                        type="hidden"
                                                        name="FullName"
                                                        value="<%=user.getFullname()%>"
                                                        />
                                                    <input
                                                        type="hidden"
                                                        name="RoleID"
                                                        value="<%=user.getRoleID()%>"
                                                        />
                                                    <input
                                                        type="hidden"
                                                        name="Phone"
                                                        value="<%=user.getPhone()%>"
                                                        />
                                                    <input
                                                        type="hidden"
                                                        name="Email"
                                                        value="<%=user.getEmail()%>"
                                                        />
                                                    <input
                                                        type="hidden"
                                                        name="Gender"
                                                        value="<%=user.getGender()%>"
                                                        />
                                                    <input
                                                        type="hidden"
                                                        name="photo"
                                                        value="<%=user.getPhoto()%>"
                                                        />

                                                    <input
                                                        type="hidden"
                                                        name="search"
                                                        value="<%=search%>"
                                                        />
                                                    <input
                                                        type="submit"
                                                        name="action"
                                                        name="Update"
                                                        value="Update"
                                                        />



                                                </td>
                                                <td>
                                                    <a href="MainController?search=<%= search%>&action=Delete&userID=<%= user.getEmployee_id()%>">Delete</a>     
                                                </td>
                                            </form>
                                            <!-- end form -->
                                            <!-- xoa o day ne-->
                                            </tr>
                                            <% }
                            }%>
                                            </tbody>
                                        </table>

                                        <!-- end error -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </main>
        </div>
      </div>
    </div>
  </body>
</html>
