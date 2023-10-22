<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>FeedBack</title>
  </head>

  <!-- header -->
  <!-- prettier-ignore -->
  <%@ include file="components/headertrainer.jsp" %>
  <!-- end header -->

  <body class="w-screen overflow-x-hidden mx-auto">
    <div class="flex justify-center">
      <h1 class="text-5xl text-white">FeedBack Information</h1>
    </div>
    <!-- side bar -->
    <!-- prettier-ignore -->
    <%@ include file="components/sidebartrainer.html" %>

    <!-- end side bar -->
    <!-- component -->
    <main class="antialiased font-sans h-screen">
      <div class="container mx-auto px-4 sm:px-8">
        <div class="py-8 ml-28">
          <!-- search -->
          <div class="my-2 flex">
            <div class="flex">
              <div class="relative">
                <select
                  class="appearance-none h-full rounded-r border-t sm:rounded-r-none sm:border-r-0 border-r border-b block appearance-none w-full bg-white border-gray-400 text-gray-700 py-2 px-4 pr-8 leading-tight focus:outline-none focus:border-l focus:border-r focus:bg-white focus:border-gray-500"
                >
                  <option>All</option>
                  <option>Processing</option>
                  <option>Approved</option>
                  <option>Rejected</option>
                </select>
              </div>

              <div class="block relative">
                <span
                  class="h-full absolute inset-y-0 left-0 flex items-center pl-2"
                >
                  <svg
                    viewBox="0 0 24 24"
                    class="h-4 w-4 fill-current text-gray-500"
                  >
                    <path
                      d="M10 4a6 6 0 100 12 6 6 0 000-12zm-8 6a8 8 0 1114.32 4.906l5.387 5.387a1 1 0 01-1.414 1.414l-5.387-5.387A8 8 0 012 10z"
                    ></path>
                  </svg>
                </span>
                <input
                  placeholder="Search"
                  class="appearance-none rounded-r rounded-l sm:rounded-l-none border border-gray-400 border-b block pl-8 pr-6 py-2 w-full bg-white text-sm placeholder-gray-400 text-gray-700 focus:bg-white focus:placeholder-gray-600 focus:text-gray-700 focus:outline-none"
                />
              </div>
            </div>
            <!-- create -->
            <div class="ml-auto">
              <a
                href="createfeedback.jsp"
                class="flex animate-bounce items-center px-12 py-2.5 text-white transition-colors duration-300 transform bg-gray-700 rounded-md hover:bg-green-400 focus:outline-none focus:bg-green-100hover:transform hover:scale-105"
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
                <span class="ml-1 text-2xl">Create</span>
              </a>
            </div>
            <!-- end create -->
          </div>

          <div class="-mx-4 sm:-mx-8 px-4 sm:px-8 py-4 overflow-x-auto">
            <div
              class="inline-block min-w-full shadow rounded-lg overflow-hidden"
            >
              <!-- table -->

              <table class="min-w-full">
                <thead>
                  <tr>
                    <th
                      class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50 border-r"
                    >
                      Tiltle
                    </th>
                    <th
                      class="break-all px-6 py-3 text-xs font-medium leading-4 text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50 border-r"
                    >
                      Purpose
                    </th>
                    <th
                      class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50 border-r"
                    >
                      Date
                    </th>
                    <th
                      class="break-words px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50 border-r"
                    >
                      ProcessNote
                    </th>

                    <th
                      class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                    >
                      Status
                    </th>
                  </tr>
                </thead>
                <c:forEach var="f" items="${ListA}">
                  <tbody class="bg-white">
                    <tr>
                      <td
                        class="break-words text-xs px-6 py-4 border-b border-gray-200 border-r"
                      >
                        ${f.title}
                      </td>
                      <td
                        class="break-words text-xs px-6 py-4 border-b border-gray-200 border-r"
                      >
                        ${f.purpose}
                      </td>
                      <td
                        class="break-all px-6 py-4 text-sm leading-5 text-gray-500 whitespace-no-wrap border-b border-gray-200 border-r"
                      >
                        ${f.date}
                      </td>
                      <td
                        class="break-all text-xs px-6 py-4 border-b border-gray-200 border-r"
                      >
                        ${f.processnote}
                      </td>
                      <td
                        class="px-6 py-4 font-bold leading-5 text-green-500 border-b border-gray-200 border-r"
                      >
                        ${f.status}
                      </td>
                    </tr>
                  </tbody>
                </c:forEach>
              </table>
              <!-- component -->

              <div
                class="grid min-h-[140px] w-full place-items-center overflow-x-scroll rounded-lg p-6 lg:overflow-visible"
              >
                <nav>
                  <ul class="flex">
                    <c:forEach begin="1" end="${endP}" var="i">
                      <li>
                        <a
                          class="mx-1 flex h-9 w-9 items-center justify-center rounded-full border border-blue-gray-100 bg-transparent p-0 text-sm text-blue-gray-500 transition duration-150 ease-in-out hover:bg-light-300"
                          href="ListTrainerFeedback?index=${i}"
                          aria-label="Previous"
                        >
                          ${i}
                        </a>
                      </li>
                    </c:forEach>
                  </ul>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
  </body>
</html>
