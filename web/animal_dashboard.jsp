<%-- Document : animal_dashboard Created on : Nov 4, 2023, 11:13:14 AM Author :
ACER --%> <%@page import="sample.animal.AnimalDTO"%> <%@page
import="java.util.List"%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

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
      .role-id {
        color: black;
      }
      .role-id:contains("DEATH") {
        color: white;
        background-color: red;
      }
      .role-id:contains("SICK") {
        color: white;
        background-color: #3500BE;
      }
      .role-id:contains("NORMAL") {
        color: white;
        background-color: #119200;
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
          <%@ include file="components/headeradmin.jsp" %>
          <main class="flex-1 overflow-x-hidden bg-gray-200">
            <div class="container px-6 py-8 mx-auto">
              <main class="mx-auto">
                <!-- FORM TO -->
                <form action="view_animal_dashboard" method="post">
                  <div class="-mx-3 mt-5 flex flex-wrap">
                    <!-- div1 -->
                    <div class="w-full px-3 sm:w-1/4">
                      <div class="mb-5">
                        <label
                          for="date"
                          class="mb-3 block text-xl font-medium text-[#07074D]"
                        >
                          From
                        </label>

                        <input
                          class="w-full rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-xl text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
                          type="date"
                          name="start_day_in"
                          id="start_day_in"
                          placeholder="MM/YY"
                        />
                      </div>
                    </div>

                    <!-- div 2 -->
                    <div class="w-full px-3 sm:w-1/4">
                      <div class="mb-5">
                        <label
                          for="time"
                          class="mb-3 block text-xl font-medium text-[#07074D]"
                        >
                          To
                        </label>
                        <input
                          class="w-full rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-xl text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
                          type="date"
                          name="end_day_in"
                          id="end_day_in"
                          placeholder="MM/YY"
                        />
                      </div>
                    </div>
                    <input
                      class="disabled:pointer-events-none disabled:opacity-50 disabled:shadow-none text-2xl mt-4 cursor-pointer hover:text-green-500 transition-colors duration-300"
                      type="submit"
                      name="action"
                      value="Search_Order"
                    />
                  </div>
                </form>
                <%
            List<AnimalDTO> listAnimal = (List<AnimalDTO>) session.getAttribute("LIST_ANIMAL_DASHBOARD");
            if (listAnimal != null) {
             int TOTAL_SICK = (int) session.getAttribute("TOTAL_SICK");
            int TOTAL_NORMAL = (int) session.getAttribute("TOTAL_NORMAL");
            int TOTAL_DEATH = (int) session.getAttribute("TOTAL_DEATH");%>
            
               <div class="text-xl text-red-500 text-center mb-2"><h3> Have <%=TOTAL_SICK%> sick , <%=TOTAL_NORMAL%> normal and <%=TOTAL_DEATH%> died</h3></div>
               <%
                if (listAnimal.size() > 0) {
        %>

                <!-- main -->
                <div class="flex flex-col">
                  <div
                    class="-mx-4 sm:-mx-8 px-4 sm:px-8 overflow-x-hidden overflow-y-hidden"
                  >
                    <div
                      class="inline-block min-w-full overflow-hidden align-middle border-b border-gray-200 shadow sm:rounded-lg"
                    >
                      <table class="min-w-full">
                        <thead class="bg-neutral-100">
                          <tr class="bg-blue-500 text-white">
                            <th
                              class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                            >
                              Animal_id
                            </th>
                            <th
                              class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                            >
                              Animalcage_id
                            </th>
                            <th
                              class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                            >
                              Animal_id
                            </th>
                            <th
                              class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                            >
                              DAY IN
                            </th>
                            <th
                              class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                            >
                              NAME
                            </th>
                            <th
                              class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                            >
                              PHOTO
                            </th>
                            <th
                              class="px-3 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                            >
                              STATUS
                            </th>
                          </tr>
                        </thead>

                        <% int count = 1; for (AnimalDTO animal : listAnimal) {
                        %>
                        <tbody class="bg-white">
                          <tr>
                            <td
                              class="px-6 whitespace-no-wrap border-b border-gray-200"
                            >
                              <%=count++%>
                            </td>
                            <td
                              class="px-6  whitespace-no-wrap border-b border-gray-200"
                            >
                              <%=animal.getAnimal_id()%>
                            </td>
                            <td
                              class="px-6  whitespace-no-wrap border-b border-gray-200"
                            >
                              <%=animal.getAnimalcage_id()%>
                            </td>
                            <td
                              class="px-6  whitespace-no-wrap border-b border-gray-200"
                            >
                              <%=animal.getDayin()%>
                            </td>
                            <td
                              class="px-6  whitespace-no-wrap border-b border-gray-200"
                            >
                              <%=animal.getName()%>
                            </td>

                            <td>
                              <img
                                style="height: 100px; width: 100px"
                                src="<%=animal.getPhoto()%>"
                              />
                            </td>
                            <!-- xoa o day ne-->
                            <td >
                                <span class="role-id p-2 rounded"><%=animal.getStatus()%></span></td>
                          </tr>
                        </tbody>
                        <% } } } %>
                      </table>
                    </div>
                  </div>
                </div>
              </main>
            </div>
          </main>
        </div>
      </div>
    </div>
    <script>
        $(document).ready(function () {
          // Find all elements with the class "role-id" and text content "ADMIN"
          $('.role-id:contains("SICK")').css("color", "white");
          $('.role-id:contains("SICK")').css("background-color", "#3500BE");
          $('.role-id:contains("NORMAL")').css("color", "white");
          $('.role-id:contains("NORMAL")').css("background-color", "#119200");
          $('.role-id:contains("DEATH")').css("color", "white");
          $('.role-id:contains("DEATH")').css("background-color", "red");
        });
      </script>
  </body>
</html>
