<!-- prettier-ignore -->
<%-- Document : area Created on : Sep 27, 2023, 10:10:35 PM Author : ADMIN --%>
  <%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <!-- loading -->
    <!-- <iframe
      id="loading-iframe"
      src="components/loading.html"
      frameborder="0"
      style="
        border: none;
        position: fixed;
        width: 100%;
        height: 100%;
        top: 0;
        left: 0;
        z-index: 999;
        background: transparent; /* Make the iframe background transparent */
        pointer-events: none; /* Allow interaction with elements behind the iframe */
        transition: opacity 1s;
      "
    ></iframe> -->

    <script>
      window.addEventListener("load", function () {
        // Code xử lý sau khi trang đã nạp hoàn toàn ở đây
        var iframe = document.getElementById("loading-iframe");
        if (iframe) {
          iframe.style.zIndex = 0;
          iframe.classList.add("hidden-iframe");
        }
      });
    </script>
    <style>
      .hidden-iframe {
        opacity: 0;
      }
    </style>
    <!-- end loading -->
    <title>Area</title>
  </head>
  <!-- prettier-ignore -->
  <%@ include file="components/headermanager.jsp" %>
  <!-- end header -->
  <body class="h-screen block overflow-x-hidden mx-auto bg-green-500">
    <!-- sidebar -->
    <!-- prettier-ignore -->
    <%@ include file="components/sidebarmanager.jsp" %>
    <!-- end sidebar -->
    <main class="antialiased font-sans bg-white">
      <div class="container mx-auto px-4 sm:px-8">
        <div class="flex justify-center pb-2 pt-5 border-b boredr-gray-300">
          <h3 class="text-5xl font-medium text-gray-700">Location Area</h3>
        </div>
        <div class="py-8 ml-20">
          <!-- main -->
          <div class="-mx-4 sm:-mx-8 px-4 sm:px-8 py-3 overflow-x-hidden">
            <table class="min-w-full border-collapse border border-green-500">
              <thead class="bg-green-500">
                <tr class="text-white">
                  <th
                    class="w-1/4 px-10 py-6 border-b-2 border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                  >
                    Animal Cage ID
                  </th>
                  <th
                    class="px-10 py-6 border-b-2 border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                    style="width: 100px"
                  >
                    Employee_ID
                  </th>
                  <th
                    class="px-10 py-6 border-b-2 border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                    style="width: 100px"
                  >
                    Name
                  </th>
                  <th
                    class="px-10 py-6 border-b-2 border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                    style="width: 100px"
                  >
                    Action
                  </th>
                </tr>
              </thead>
              <c:forEach items="${a}" var="o">
                <tbody
                  class="bg-white cursor-pointer hover:shadow-xl hover:transform hover:scale-105 hover:rounded-2xl duration-300 hover:bg-gray-100 hover:bg-gray-100 hover:border-gray-100"
                >
                  <tr>
                    <td
                      class="text-green-500 py-3 text-2xl px-6 py-3 border-b border-gray-200 border-r"
                    >
                      ${o.animalcage_id}
                    </td>
                    <td
                      class="pl-10 py-3 text-2xl px-6 py-3 border-b border-gray-200 border-r"
                    >
                      ${o.employee_id}
                    </td>

                    <td
                      class="py-3 text-2xl px-6 py-3 border-b border-gray-200 border-r"
                    >
                      <a
                        class="cursor-pointer duration-300 hover:text-green-600"
                        href="animalsearch?animalID=${o.animalcage_id}"
                        >${o.name}</a
                      >
                    </td>
                    <td
                      class="py-2 text-sm font-medium leading-5 whitespace-no-wrap border-b border-gray-200"
                    >
                      <div class="flex justify-center items-center">
                        <!-- edit -->
                        <c:url value="updateanimalcage" var="updateUrl">
                          <c:param
                            name="animalcageID"
                            value="${o.animalcage_id}"
                          />
                        </c:url>

                        <% session=request.getSession(true);
                        session.setAttribute("from", "areacontroller" ); %>

                        <a href="${updateUrl}" class="your-class-name">
                          <button
                            class="flex p-2.5 bg-green-400 rounded-xl hover:rounded-3xl hover:bg-green-500 transition-all duration-300 text-white"
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
                            </svg></button
                        ></a>
                        <!-- delete -->
                        <div class="pl-2">
                          <c:url value="deleteanimalcage" var="deleteUrl">
                            <c:param
                              name="animalcageID"
                              value="${o.animalcage_id}"
                            />
                            <c:param name="areaid" value="${o.area_id}" />
                          </c:url>

                          <% // Lấy hoặc tạo mới session
                          session=request.getSession(true); // Đặt giá trị
                          session.setAttribute("froms", "areacontroller" ); %>

                          <a
                            href="${deleteUrl}"
                            class="your-class-name"
                            onclick="return confirmDelete();"
                          >
                            <button
                              class="flex p-2.5 bg-red-400 rounded-xl hover:rounded-3xl hover:bg-red-500 transition-all duration-300 text-white"
                            >
                              <i
                                fill="none"
                                viewBox="0 0 24 24"
                                stroke="currentColor"
                                stroke-width="2"
                                class="h-4 w-4 fas fa-trash-alt"
                              ></i></button
                          ></a>
                        </div>
                      </div>
                    </td>
                    <script>
                      function confirmDelete() {
                        var result = confirm("Do you want to delete this?");
                        return result;
                      }
                    </script>
                  </tr>
                </tbody>
              </c:forEach>
            </table>
          </div>
        </div>
      </div>
    </main>
  </body>
</html>
