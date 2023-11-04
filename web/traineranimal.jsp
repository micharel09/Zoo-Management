<%-- Document : animal Created on : Oct 4, 2023, 9:45:11 AM Author : dinhg --%>
<!-- prettier-ignore -->
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
   
    <style>
      .fixed-width {
        width: 32px;
      }

      .fixed-width div {
        white-space: normal;
      }
    </style>
    <title>Animal List</title>
    <!-- prettier-ignore -->
    <!-- header -->
    <%@ include file="components/headertrainer.jsp" %>
    <!-- end header -->
  </head>
  <body class="block overflow-x-hidden mx-auto">
    <!-- prettier-ignore -->
    <!-- sidebar-->
    <%@ include file="components/sidebartrainer.html" %>
    <!-- end sidebar -->
    <main class="antialiased font-sans bg-white h-screen">
      <div class="container mx-auto px-4 sm:px-8">
        <!-- header -->
        <div class="flex justify-between pb-2 pt-5 border-b border-gray-300">
          <div class="">
            <a
              href="animalcagecontroller"
              class="cursor-pointer group flex items-center bg-transparent p-2 px-6 text-xl tracking-widest"
            >
              <svg
                viewBox="0 0 46 16"
                height="10"
                width="30"
                xmlns="http://www.w3.org/2000/svg"
                id="arrow-horizontal"
                class="translate-x-[-2px] fill-green-500 transition-all duration-300 ease-out group-hover:translate-x-[-4px] group-hover:scale-x-105 group-hover:fill-green-400"
              >
                <path
                  transform="translate(30) scale(-1, 1)"
                  d="M8,0,6.545,1.455l5.506,5.506H-30V9.039H12.052L6.545,14.545,8,16l8-8Z"
                  data-name="Path 10"
                  id="Path_10"
                ></path>
              </svg>

              <span
                class="hover:text-green-400 duration-300 pr-4 text-green-500 after:transition-transform after:duration-500 after:ease-out after:absolute after:bottom-0 after:left-0 after:block after:h-[2px] after:w-full after:origin-bottom-right after:scale-x-0 after:bg-green-500 after:content-[''] after:group-hover:origin-bottom-left after:group-hover:scale-x-100 transition-font"
              >
                Head To Animal Cages List
              </span>
            </a>
          </div>
          <div class="mx-auto mr-auto pr-64 text-center">
            <h3 class="text-5xl font-medium text-gray-700">Animals List</h3>
          </div>
        </div>

        <div class="py-8 ml-20">
          <div class="my-2 flex justify-between sm:flex-row">
            <!-- Search -->
            <form action="animalsearch" method="get">
              <div class="block relative">
                <input
                  type="text"
                  id="animalID"
                  name="animalID"
                  placeholder="Search Animal by ID"
                  class="text-xl rounded-xl border border-gray-400 bg-white placeholder-gray-400 text-gray-700 focus:bg-white focus:placeholder-gray-600 focus:text-gray-700 focus:outline-none"
                />

                <!-- button search -->
                <button
                  type="submit"
                  class="inline-flex items-center py-3 px-3 ml-2 text-sm font-medium text-white bg-green-500 rounded-lg border border-green-700 hover:bg-green-400 focus:ring-4 focus:outline-none focus:ring-green-300"
                >
                  <svg
                    class="mr-2 -ml-1 w-5 h-5"
                    fill="none"
                    stroke="currentColor"
                    viewBox="0 0 24 24"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"
                    ></path>
                  </svg>
                  Search
                </button>

                <!-- end button -->
              </div>
            </form>
            <!-- end Search -->
            
          </div>
          <!-- main -->
          <div
            class="-mx-4 sm:-mx-8 px-20 sm:px-4 overflow-x-hidden overflow-y-hidden"
          >
            <!-- table -->
            <c:choose>
              <c:when test="${fn:length(animallist) > 2}">
                <table
                  class="min-w-full border-collapse border border-green-500"
                >
                  <thead class="bg-neutral-100">
                    <tr class="bg-green-500 text-white">
                      <th
                        class="mx-auto py-6 border-b-2 border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                      >
                        Animal_ID
                      </th>

                      <th
                        class="px-6 py-3 border-b border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                      >
                        Status
                      </th>
                      <th
                        class="fixed-width px-6 py-3 border-b border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                      >
                        <div class="w-32">Name</div>
                      </th>
                      <th
                        class="px-6 py-3 border-b border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                        style="width: 200px"
                      >
                        Date In
                      </th>
                      <th
                        class="mx-auto py-3 border-b border-r text-2xl border-gray-300 leading-4 tracking-wider"
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
                  <c:forEach
                    var="animal"
                    items="${animallist}"
                    varStatus="loop"
                  >
                    <tbody
                      class="bg-white cursor-pointer hover:shadow-xl hover:transform hover:scale-105 hover:rounded-2xl duration-300 hover:bg-gray-100 hover:bg-gray-100 hover:border-gray-100"
                    >
                      <tr id="lastRow">
                        <td
                          class="pl-10 text-2xl px-6 border-b border-gray-200 border-r"
                        >
                          #${animal.animal_id}
                        </td>

                        <td
                          class="px-6 text-2xl leading-5 text-gray-500 whitespace-no-wrap border-b border-gray-200 border-r"
                        >
                          ${animal.status}
                        </td>
                        <td
                          class="text-2xl px-6 border-b border-gray-200 border-r"
                        >
                          ${animal.name}
                        </td>

                        <td
                          class="px-6 text-2xl leading-5 text-gray-500 whitespace-no-wrap border-b border-gray-200 border-r"
                        >
                          ${animal.dayin}
                        </td>

                        <td
                          class="text-2xl px-6 border-b border-gray-200 border-r"
                          width="100"
                        >
                          <img
                            src="./animal_picture/${animal.photo}"
                            width="150"
                            height="140"
                          />
                        </td>
                        <td
                          class="py-2 text-sm font-medium leading-5 whitespace-no-wrap border-b border-gray-200"
                        >
                          <div class="flex justify-center items-center">
                            <!-- edit -->
                            <a href="TrainerUpdateAnimal?animalID=${animal.animal_id}">
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
                                </svg>
                              </button>
                            </a>
                            
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
                  <thead class="bg-neutral-100">
                    <tr class="bg-green-500 text-white">
                      <th
                        class="mx-auto py-6 border-b-2 border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                      >
                        Animal_ID
                      </th>

                      <th
                        class="px-6 py-3 border-b border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                      >
                        Status
                      </th>
                      <th
                        class="px-6 py-3 border-b border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                      >
                        Name
                      </th>
                      <th
                        class="px-6 py-3 border-b border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                      >
                        Date In
                      </th>
                      <th
                        class="mx-auto py-3 border-b border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
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
                  <c:forEach var="animal" items="${animals}" varStatus="loop">
                      <c:choose>
                      <c:when test="${animal.status ne 'DEATH'}">
                    <tbody
                      class="cursor-pointer hover:shadow-xl hover:transform hover:scale-105 hover:rounded-2xl duration-300 hover:bg-gray-100 border-gray-100"
                    >
                      <tr id="lastRow">
                        <td
                          class="pl-10 text-2xl px-6 border-b border-gray-200 border-r"
                        >
                          #${animal.animal_id}
                        </td>

                        <td
                          class="px-6 text-2xl leading-5 text-gray-500 whitespace-no-wrap border-b border-gray-200 border-r"
                        >
                          ${animal.status}
                        </td>
                        <td
                          class="text-2xl px-6 border-b border-gray-200 border-r"
                        >
                          ${animal.name}
                        </td>

                        <td
                          class="px-6 text-2xl leading-5 text-gray-500 whitespace-no-wrap border-b border-gray-200 border-r"
                        >
                          ${animal.dayin}
                        </td>

                        <td
                          class="text-2xl px-6 border-b border-gray-200 border-r"
                          width="100"
                        >
                          <img
                            src="./animal_picture/${animal.photo}"
                            width="80"
                            height="70"
                          />
                        </td>
                        
                        
                        <td
                          class="py-2 text-sm font-medium leading-5 whitespace-no-wrap border-b border-gray-200"
                        >
                          <div class="flex justify-center items-center">
                            <!-- edit -->
                            <a href="TrainerUpdateAnimal?animalID=${animal.animal_id}">
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
                                </svg>
                              </button>
                            </a>
                           
                          </div>
                        </td>
                      </tr>
                    </tbody>
                       </c:when>
                    </c:choose>
                  </c:forEach>          
                </table>
                <c:set var="lastRowIndex" value="${fn:length(animals) - 1}" />
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
            