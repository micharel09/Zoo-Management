<%-- Document : food_schedule Created on : Oct 20, 2023, 3:55:41 PM Author :
Quan --%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <title>Schedule List</title>
  </head>
  <!-- prettier-ignore -->
  <!-- <%@ include file="components/headertrainer.jsp" %> -->
  <!-- end header -->
  <body class="block overflow-x-hidden mx-auto">
    <!-- prettier-ignore -->
    <%@ include file="components/sidebartrainer.jsp" %>
    <!-- end side bar -->
    <main class="antialiased font-sans bg-white h-screen">
      <div class="container mx-auto px-4 sm:px-8">
        <div class="flex justify-center pb-2 pt-5 border-b boredr-gray-300">
          <h3 class="text-5xl font-medium text-gray-700">Food Schedule</h3>
        </div>
        <div class="py-8 ml-20">
          <div class="my-2 flex justify-between sm:flex-row">
            <!-- Search -->
            <form action="schedulesearch" method="get">
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
                  id="scheduleID"
                  name="scheduleID"
                  placeholder="Search schedule by ID"
                  class="text-2xl pl-12 rounded-3xl border border-gray-400 bg-white placeholder-gray-400 text-gray-700 focus:bg-white focus:placeholder-gray-600 focus:text-gray-700 focus:outline-none"
                />
                <input
                  class="text-2xl pl-2 cursor-pointer hover:text-green-500 transition-colors duration-300"
                  type="submit"
                  value="Search"
                />
              </div>
            </form>
            <!-- end search -->

            <!-- create -->
            <form action="createfoodschedule" method="get">
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
            <!-- end create -->
          </div>

          <!-- Import excel -->
          <form
            action="importexcelcontroller"
            method="post"
            enctype="multipart/form-data"
          >
            <div class="flex mb-2">
              <p class="mt-2">
                Choose Excel file(<span style="color: red">.xls</span>):
              </p>
              <input
                type="file"
                name="excelFile"
                class="flex w-1/4 ml-2 text-sm text-gray-900 border border-gray-300 rounded-lg cursor-pointer bg-gray-50 dark:text-gray-400 focus:outline-none dark:placeholder-gray-400"
              />
              <input
                class="middle none center rounded-lg py-3 px-3 text-xs uppercase transition-all hover:bg-green-500/10 active:bg-green-500/30 disabled:pointer-events-none disabled:opacity-50 disabled:shadow-none"
                data-ripple-dark="true"
                type="submit"
                value="Import"
              />
            </div>
          </form>
          <!-- end import -->

          <!-- main -->
          <div
            class="-mx-4 sm:-mx-8 px-4 sm:px-8 overflow-x-hidden overflow-y-hidden"
          >
            <c:choose>
              <c:when test="${fn:length(schedulelist)>0}">
                <table
                  class="min-w-full border-collapse border border-green-500"
                >
                  <thead class="bg-neutral-100">
                    <tr class="bg-green-500 text-white">
                      <th
                        class="mx-auto py-3 border-b-2 border-r text-2xl border-gray-300 text-center leading-4 tracking-wider"
                        style="width: 300px"
                      >
                        Schedule ID
                      </th>
                      <th
                        class="px-10 py-3 border-b-2 border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                        style="width: 200px"
                      >
                        Time
                      </th>
                      <th
                        class="mx-auto py-3 border-b-2 border-r text-2xl border-gray-300 text-center leading-4 tracking-wider"
                        style="width: 500px"
                      >
                        Animal Cage ID
                      </th>
                      <th
                        class="px-10 py-3 border-b-2 border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                        style="width: 300px"
                      >
                        Food ID
                      </th>
                      <th
                        class="px-6 py-3 border-b border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                        style="width: 200px"
                      >
                        Date
                      </th>
                      <th
                        class="px-6 py-3 border-b text-2xl text-center border-gray-300 text-left leading-4 tracking-wider"
                      >
                        Action
                      </th>
                    </tr>
                  </thead>
                  <c:forEach var="schedule" items="${schedulelist}">
                    <tbody
                      class="bg-white cursor-pointer hover:shadow-xl hover:transform hover:scale-105 hover:rounded-2xl duration-300 hover:bg-gray-100 hover:bg-gray-100 hover:border-gray-100"
                    >
                      <tr>
                        <td
                          class="text-green-500 pl-10 text-2xl px-6 border-b border-gray-200 border-r"
                        >
                          ${schedule.schedule_id}
                        </td>
                        <td
                          class="text-2xl px-6 border-b border-gray-200 border-r"
                        >
                          ${schedule.time}
                        </td>
                        <td
                          class="px-6 text-2xl leading-5 text-gray-500 whitespace-no-wrap border-b border-gray-200 border-r"
                        >
                          ${schedule.animalcage_id}
                        </td>
                        <td
                          class="px-6 text-2xl leading-5 text-gray-500 whitespace-no-wrap border-b border-gray-200 border-r"
                        >
                          ${schedule.food_id}
                        </td>
                        <td
                          class="px-6 text-2xl leading-5 text-gray-500 whitespace-no-wrap border-b border-gray-200 border-r"
                        >
                          ${schedule.date}
                        </td>
                        <td
                          class="py-2 text-sm font-medium leading-5 whitespace-no-wrap border-b border-gray-200"
                        >
                          <div class="flex justify-center items-center">
                            <!-- edit -->
                            <a
                              href="updateschedule?scheduleID=${schedule.schedule_id}"
                            >
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
                                </svg>
                              </button>
                            </a>
                            <!-- delete -->
                            <div class="pl-2">
                              <a
                                href="scheduledelete?scheduleID=${schedule.schedule_id}"
                                class=""
                                onclick="saveScrollPosition(); "
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
                                  ></i>
                                </button>
                              </a>
                            </div>

                            <script src="js/possitionload.js"></script>

                            <!-- end delete -->
                          </div>
                        </td>
                      </tr>
                    </tbody>
                  </c:forEach>
                </table>
              </c:when>
              <c:otherwise>
                <table
                  class="min-w-full border-collapse border border-green-500"
                >
                  <thead class="bg-neutral-100">
                    <tr class="bg-green-500 text-white">
                      <th
                        class="px-10 py-6 border-b-2 border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                      >
                        Schedule ID
                      </th>
                      <th
                        class="px-10 py-6 border-b-2 border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                        style="width: 200px"
                      >
                        Time
                      </th>
                      <th
                        class="px-14 py-6 border-b-2 border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                      >
                        Animal Cage ID
                      </th>
                      <th
                        class="px-10 py-6 border-b-2 border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                        style="width: 200px"
                      >
                        Food ID
                      </th>
                      <th
                        class="px-6 py-3 border-b border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                        style="width: 200px"
                      >
                        Date
                      </th>
                      <th
                        class="px-6 py-3 border-b text-2xl text-center border-gray-300 text-left leading-4 tracking-wider"
                      >
                        Action
                      </th>
                    </tr>
                  </thead>
                  <c:forEach var="schedule" items="${schedules}">
                    <tbody
                      class="bg-white cursor-pointer hover:shadow-xl hover:transform hover:scale-105 hover:rounded-2xl duration-300 hover:bg-gray-100 hover:bg-gray-100 hover:border-gray-100"
                    >
                      <tr>
                        <td
                          class="text-green-500 pl-10 text-2xl px-6 border-b border-gray-200 border-r"
                        >
                          ${schedule.schedule_id}
                        </td>
                        <td
                          class="text-2xl px-6 border-b border-gray-200 border-r"
                        >
                          ${schedule.time}
                        </td>
                        <td
                          class="px-6 text-2xl leading-5 text-gray-500 whitespace-no-wrap border-b border-gray-200 border-r"
                        >
                          ${schedule.animalcage_id}
                        </td>
                        <td
                          class="px-6 text-2xl leading-5 text-gray-500 whitespace-no-wrap border-b border-gray-200 border-r"
                        >
                          ${schedule.food_id}
                        </td>
                        <td
                          class="px-6 text-2xl leading-5 text-gray-500 whitespace-no-wrap border-b border-gray-200 border-r"
                        >
                          ${schedule.date}
                        </td>
                        <td
                          class="py-2 text-sm font-medium leading-5 whitespace-no-wrap border-b border-gray-200"
                        >
                          <div class="flex justify-center items-center">
                            <!-- edit -->
                            <a
                              href="updateschedule?scheduleID=${schedule.schedule_id}"
                            >
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
                                </svg>
                              </button>
                            </a>
                            <!-- delete -->
                            <div class="pl-2">
                              <a
                                href="scheduledelete?scheduleID=${schedule.schedule_id}"
                                class=""
                                onclick="saveScrollPosition(); "
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
                                  ></i>
                                </button>
                              </a>
                            </div>

                            <script src="js/possitionload.js"></script>

                            <!-- end delete -->
                          </div>
                        </td>
                      </tr>
                    </tbody>
                  </c:forEach>
                </table>
              </c:otherwise>
            </c:choose>
          </div>
        </div>
      </div>
    </main>
  </body>
</html>
