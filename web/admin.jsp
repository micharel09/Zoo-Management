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
          <%@ include file="components/headeradmin.html" %>
          <main class="flex-1 overflow-x-hidden bg-gray-200">
            <% UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser == null || !"ADMIN".equals(loginUser.getRoleID())) {
            response.sendRedirect("login.html"); return; } String search =
            request.getParameter("search"); if (search == null) { search = ""; }
            %>
            <div class="flex justify-center mt-4">
              <h1 class="animate-charcter font-extralight text-5xl">
                Welcome Admin <%=loginUser.getFullname()%>
              </h1>
            </div>
            <div class="container px-6 py-8 mx-auto">
              <div class="flex justify-between pb-2 border-b border-gray-300">
                <h3 class="text-5xl font-medium text-gray-700">Dashboard</h3>
                <div>
                  <form action="MainController">
                    <div class="block relative">
                      <input
                        class="text-xl cursor-pointer hover:text-green-500 transition-colors duration-300"
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
                        <% for (UserDTO user : listUser1) { %>

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
                            <%=user.getPhoto()%>
                          </td>
                          <!-- form -->
                          <form action="MainController">
                            <td
                              class="py-2 text-sm font-medium leading-5 whitespace-no-wrap border-b border-gray-200"
                            >
                              <div class="flex justify-center items-center">
                                <!-- update -->
                                <div class="pl-2">
                                  <button
                                    class="flex p-2.5 bg-green-500 rounded-xl hover:rounded-3xl hover:bg-gray-400 transition-all duration-300 text-white"
                                  >
                                    <svg
                                      xmlns="http://www.w3.org/2000/svg"
                                      class="h-5 w-5"
                                      fill="none"
                                      viewBox="0 0 24 24"
                                      stroke="currentColor"
                                      stroke-width="2"
                                    >
                                      <path
                                        stroke-linecap="round"
                                        stroke-linejoin="round"
                                        d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z"
                                      />
                                    </svg>
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
                                      name="Dêpndent"
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
                                  </button>
                                </div>
                                <!-- update -->
                                <!-- delete -->
                                <div class="pl-2">
                                  <a
                                    class="flex p-2.5 bg-red-500 rounded-xl hover:rounded-3xl hover:bg-gray-400 transition-all duration-300 text-white"
                                    href="MainController?search=<%= search%>&action=Delete&userID=<%= user.getEmployee_id()%>"
                                  >
                                    <i
                                      fill="none"
                                      viewBox="0 0 24 24"
                                      stroke="currentColor"
                                      stroke-width="2"
                                      class="h-4 w-4 fas fa-trash-alt"
                                    ></i
                                  ></a>
                                </div>
                                <!-- end delete -->
                              </div>
                            </td>
                          </form>
                          <!-- end form -->
                          <!-- xoa o day ne-->
                        </tr>
                        <% } } %>
                      </tbody>
                    </table>
                    <% String error = (String) request.getAttribute("ERROR"); if
                    (error == null) { error = ""; } %>

                    <!-- error -->
                    <div>
                      <h2><%= error%></h2>
                    </div>
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
