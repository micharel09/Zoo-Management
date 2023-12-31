<!-- prettier-ignore -->
<%@page import="java.util.List" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
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
    ></iframe>

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
    </style> -->
    <!-- end loading -->
    <style>
      /* Image Popup */
      .image-popup {
        display: none;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.7);
        z-index: 999;
        overflow: auto;
      }
      .image-popup-content {
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100%;
      }
      .enlarged-image {
        max-width: 80%;
        max-height: 80%;
      }
    </style>

    <title>Animal Cage List</title>
    <!-- prettier-ignore -->
    <!-- header -->
    <%@ include file="components/headermanager.jsp" %>
    <!-- end header -->
  </head>

  <body class="block overflow-x-hidden mx-auto">
    <!-- prettier-ignore -->
    <!-- sidebar-->
    <%@ include file="components/sidebarmanager.jsp" %>
    <!-- end sidebar -->
    <main class="antialiased font-sans bg-white h-screen">
      <div class="container mx-auto px-4 sm:px-8">
        <!-- header -->
        <div class="flex justify-between pb-2 pt-5 border-b border-gray-300">
          <div class="mx-auto pl-64 text-center">
            <h3 class="text-5xl font-medium text-gray-700">
              Animal Cages List
            </h3>
          </div>
          <div class="">
            <a
              href="animalcontroller"
              class="cursor-pointer group flex items-center bg-transparent p-2 px-6 text-xl tracking-widest"
            >
              <span
                class="hover:text-green-400 duration-300 pr-4 text-green-500 after:transition-transform after:duration-500 after:ease-out after:absolute after:bottom-0 after:left-0 after:block after:h-[2px] after:w-full after:origin-bottom-right after:scale-x-0 after:bg-green-500 after:content-[''] after:group-hover:origin-bottom-left after:group-hover:scale-x-100 transition-font"
              >
                Head To Animals
              </span>
              <svg
                viewBox="0 0 46 16"
                height="10"
                width="30"
                xmlns="http://www.w3.org/2000/svg"
                id="arrow-horizontal"
                class="-translate-x-2 fill-green-500 transition-all duration-300 ease-out group-hover:translate-x-1 group-hover:scale-x-105 group-hover:fill-green-400"
              >
                <path
                  transform="translate(30)"
                  d="M8,0,6.545,1.455l5.506,5.506H-30V9.039H12.052L6.545,14.545,8,16l8-8Z"
                  data-name="Path 10"
                  id="Path_10"
                ></path>
              </svg>
            </a>
          </div>
        </div>

        <div class="py-8 ml-20">
          <div class="my-2 flex justify-between sm:flex-row">
            <!-- Search -->
            <form action="animalcagesearch" method="get">
              <div class="block relative">
                <span
                  class="h-full absolute inset-y-0 left-0 flex items-center pl-4 cursor-pointer"
                >
                  <svg
                    viewBox="0 0 24 24"
                    class="h-6 w-6 fill-current text-gray-500"
                  >
                    <path
                      d="M10 4a6 6 0 100 12 6 6 0 000-12zm-8 6a8 8 0 1114.32 4.906l5.387 5.387a1 1 0 01-1.414 1.414l-5.387-5.387A8 8 0 012 10z"
                    ></path>
                  </svg>
                </span>
                <input
                  type="text"
                  id="animalcageID"
                  name="animalcageID"
                  placeholder="Search"
                  class="text-2xl pl-12 rounded-3xl border border-gray-400 bg-white placeholder-gray-400 text-gray-700 focus:bg-white focus:placeholder-gray-600 focus:text-gray-700 focus:outline-none"
                />
                <input
                  class="text-2xl pl-2 cursor-pointer hover:text-green-500 transition-colors duration-300"
                  type="submit"
                  value="Search"
                  placeholder="Search Animal by ID"
                />
              </div>
            </form>
            <!-- end Search -->
            <!-- Create  -->
            <form class="ml-auto" action="createanimalcage" method="get">
              <button
                type="submit"
                class="flex animate-bounce items-center px-12 py-3 leading-5 text-white transition-colors duration-300 transform bg-gray-700 rounded-md hover:bg-green-400 focus:outline-none focus:bg-green-100hover:transform hover:scale-105"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke-width="1.5"
                  stroke="currentColor"
                  class="w-5 h-5"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    d="M12 9v6m3-3H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z"
                  ></path>
                </svg>
                <span class="ml-1 text-2xl">Add</span>
              </button>
            </form>
          </div>
          <!-- end Create -->

          <!-- Error message -->
          <p style="color: red">${errorMessage}</p>

          <script>
            const link = document.getElementById("link");
            if (errorMessage.trim() !== "") {
              link.style.display = "inline";
            }
          </script>

          <!-- end message -->

          <!-- main -->
          <div
            class="-mx-4 sm:-mx-8 px-4 sm:px-8 overflow-x-hidden overflow-y-hidden"
          >
            <!-- table -->
            <c:choose>
              <c:when test="${fn:length(animalcagelist) > 0}">
                <table
                  class="min-w-full border-collapse border border-green-500"
                >
                  <thead class="bg-neutral-100">
                    <tr class="bg-green-500 text-white">
                      <th
                        class="mx-2 py-6 border-b-2 border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                      >
                        AnimalCage_ID
                      </th>
                      <th
                        class="px-6 py-3 border-b border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                      >
                        Area_ID
                      </th>
                      <th
                        class="mx-auto pl-8 py-6 border-b border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                      >
                        Employee_ID
                      </th>
                      <th
                        class="px-6 py-3 border-b border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                      >
                        Name
                      </th>
                      <th
                        class="px-6 py-3 border-b border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                      >
                        Photo
                      </th>
                      <th
                        class="px-6 py-3 border-b text-2xl text-center border-gray-300 text-left leading-4 tracking-wider"
                      >
                        Action
                      </th>
                    </tr>
                  </thead>
                  <c:forEach var="animalcage" items="${animalcagelist}">
                    <tbody
                      class="bg-white cursor-pointer hover:shadow-xl hover:transform hover:scale-105 hover:rounded-2xl duration-300 hover:bg-gray-100"
                    >
                      <tr>
                        <td
                          class="pl-10 py-4 text-2xl px-6 py-4 border-b border-gray-200 border-r"
                        >
                          ${animalcage.animalcage_id}
                        </td>

                        <td
                          class="px-6 py-4 text-2xl leading-5 text-gray-500 whitespace-no-wrap border-b border-gray-200 border-r"
                        >
                          ${animalcage.area_id}
                        </td>
                        <td
                          class="px-8 py-10 text-2xl leading-5 text-gray-500 border-b border-gray-200 border-r"
                        >
                          ${animalcage.employee_id}
                        </td>
                        <td
                          class="py-4 text-2xl px-6 py-4 border-b border-gray-200 border-r"
                        >
                          ${animalcage.name}
                        </td>
                        <td
                          class="py-4 text-2xl px-6 py-4 border-b border-gray-200 border-r"
                        >
                          <img
                            src="./animalcage_picture/${animalcage.photo}"
                            width="150"
                            height="140"
                          />
                        </td>
                        <td
                          class="py-2 text-sm font-medium leading-5 whitespace-no-wrap border-b border-gray-200"
                        >
                          <div class="flex justify-center items-center">
                            <!-- edit -->
                            <a
                              href="updateanimalcage?animalcageID=${animalcage.animalcage_id}"
                            >
                              <button
                                class="flex p-2.5 bg-green-500 rounded-xl hover:rounded-3xl hover:bg-green-200 transition-all duration-300 text-white"
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
                              <a
                                href="deleteanimalcage?animalcageID=${animalcage.animalcage_id}"
                                class=""
                                onclick="return confirmDelete();"
                                onclick="saveScrollPosition(); return confirmDelete();"
                              >
                                <button
                                  class="flex p-2.5 bg-red-500 rounded-xl hover:rounded-3xl hover:bg-red-200 transition-all duration-300 text-white"
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

                            <script src="js/possitionload.js"></script>
                            <!-- end delete -->
                          </div>
                        </td>
                      </tr>
                    </tbody>
                  </c:forEach>
                </table>
                <c:set
                  var="lastRowIndex"
                  value="${fn:length(animallist) - 1}"
                />
                <script>
                  window.addEventListener("load", function () {
                    // Assuming you want to highlight the last row of the first table
                    var table = document.querySelector("table"); // Change this selector if needed

                    if (table) {
                      var lastRowIndex = table.rows.length - 1;
                      if (lastRowIndex >= 0) {
                        table.rows[lastRowIndex].classList.add(
                          "bg-green-400",
                          "text-white",
                          "border-gray-100"
                        );
                      }
                    }
                  });
                </script>
              </c:when>
              <c:otherwise>
                <table
                  class="min-w-full border-collapse border border-green-500"
                >
                  <thead class="bg-neutral-50">
                    <tr class="bg-green-500 text-white">
                      <th
                        class="mx-auto py-6 border-b border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                        style="width: 100px"
                      >
                        AnimalCage_ID
                      </th>
                      <th
                        class="px-6 py-3 border-b border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                      >
                        Area_ID
                      </th>
                      <th
                        class="mx-auto py-6 border-b border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                        style="width: 100px"
                      >
                        Employee_ID
                      </th>
                      <th
                        class="px-6 py-3 border-b border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                      >
                        Name
                      </th>
                      <th
                        class="px-6 py-3 border-b border-r text-2xl text-center border-gray-300 text-left leading-4 tracking-wider"
                      >
                        Photo
                      </th>
                      <th
                        class="px-6 py-3 border-b border-r text-2xl text-center border-gray-300 text-left leading-4 tracking-wider"
                      >
                        Action
                      </th>
                    </tr>
                  </thead>
                  <c:forEach var="animalcage" items="${animalcage}">
                    <tbody
                      class="bg-white cursor-pointer hover:shadow-xl hover:transform hover:scale-105 hover:rounded-2xl duration-300 hover:bg-gray-100"
                    >
                      <tr>
                        <td
                          class="pl-10 py-4 text-2xl px-6 py-4 border-b border-gray-200 border-r"
                        >
                          ${animalcage.animalcage_id}
                        </td>
                        <td
                          class="px-6 py-4 text-2xl leading-5 text-gray-500 whitespace-no-wrap border-b border-gray-200 border-r"
                        >
                          ${animalcage.area_id}
                        </td>
                        <td
                          class="px-8 py-10 text-2xl leading-5 text-gray-500 border-b border-gray-200 border-r"
                        >
                          ${animalcage.employee_id}
                        </td>

                        <td
                          class="py-4 text-2xl px-6 py-4 border-b border-gray-200 border-r"
                        >
                          ${animalcage.name}
                        </td>
                        <td
                          class="py-4 text-2xl px-6 py-4 border-b border-gray-200 border-r"
                        >
                          <img
                            src="./animalcage_picture/${animalcage.photo}"
                            width="150"
                            height="140"
                          />
                        </td>
                        <td
                          class="py-2 text-sm font-medium leading-5 whitespace-no-wrap border-b border-gray-200"
                        >
                          <div class="flex justify-center items-center">
                            <!-- edit -->
                            <a
                              href="updateanimalcage?animalcageID=${animalcage.animalcage_id}"
                            >
                              <button
                                class="flex p-2.5 bg-green-500 rounded-xl hover:rounded-3xl hover:bg-green-200 transition-all duration-300 text-white"
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
                              <a
                                href="deleteanimalcage?animalcageID=${animalcage.animalcage_id}"
                                class=""
                                onclick="return confirmDelete();"
                                onclick="saveScrollPosition(); return confirmDelete();"
                              >
                                <button
                                  class="flex p-2.5 bg-red-500 rounded-xl hover:rounded-3xl hover:bg-red-200 transition-all duration-300 text-white"
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

                            <script src="js/possitionload.js"></script>
                            <!-- end delete -->
                          </div>
                        </td>
                      </tr>
                    </tbody>
                  </c:forEach>
                </table>
                <c:set
                  var="lastRowIndex"
                  value="${fn:length(animallist) - 1}"
                />
                <script>
                  window.addEventListener("load", function () {
                    // Assuming you want to highlight the last row of the first table
                    var table = document.querySelector("table"); // Change this selector if needed

                    if (table) {
                      var lastRowIndex = table.rows.length - 1;
                      if (lastRowIndex >= 0) {
                        table.rows[lastRowIndex].classList.add(
                          "bg-green-400",
                          "text-white",
                          "border-gray-100"
                        );
                      }
                    }
                  });
                </script>
              </c:otherwise>
            </c:choose>
            <!-- end -->
          </div>
        </div>
      </div>
    </main>
    <script>
      window.addEventListener("load", function () {
        // Assuming you want to highlight the last row of the first table
        var table = document.querySelector("table"); // Change this selector if needed

        if (table) {
          var lastRowIndex = table.rows.length - 1;
          if (lastRowIndex >= 0) {
            table.rows[lastRowIndex].scrollIntoView({ behavior: "smooth" });
          }
        }
      });
    </script>
  </body>
</html>
