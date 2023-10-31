<%-- Document : news.jsp Created on : Oct 4, 2023, 1:20:17 PM Author : Quan --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@page
contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <!-- Gogole Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;1,100;1,200&display=swap"
      rel="stylesheet"
    />
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
      section {
        font-family: "Poppins", sans-serif;
      }
    </style>
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=FontName&display=swap"
      rel="stylesheet"
    />
    <title>News</title>
  </head>
  <!-- header -->
  <!-- prettier-ignore -->
  <%@ include file="components/headermanager.jsp" %>
  <!-- end header -->
  <body class="block overflow-x-hidden mx-auto">
    <!-- sidebar -->
    <!-- prettier-ignore -->
    <%@ include file="components/sidebarmanager.jsp" %>
    <!-- end sidebar -->
    <div class="container mx-auto px-4 sm:px-8 mt-2">
      <div class="flex justify-center pb-2 pt-5 border-b boredr-gray-300">
        <h3 class="text-5xl font-medium text-gray-700">News Information</h3>
      </div>
      <div class="py-8 ml-20">
        <!-- search -->
        <div class="my-2 flex sm:flex-row justify-between">
          <form action="searchnews" class="flex items-center">
            <div class="block relative">
              <input
                placeholder="Search.."
                class="text-xl rounded-xl border border-gray-400 bg-white placeholder-gray-400 text-gray-700 focus:bg-white focus:placeholder-gray-600 focus:text-gray-700 focus:outline-none"
                type="text"
                name="newsid"
                id="newsid"
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
          <!-- end search -->
          <!-- Create -->
          <form action="createnews" method="get">
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

        <!-- CRUD -->
        <div class="container mx-auto px-12 md:px-2">
          <div class="grid grid-cols-4 gap-4">
            <c:forEach items="${listN}" var="n">
              <!-- Article -->
              <article
                class="overflow-hidden border rounded-lg shadow-lg hover:shadow-xl hover:transform hover:scale-105 duration-300"
              >
                <!-- img -->
                <div class="bg-cover">
                <img class="w-[400px] h-[200px] " src="./news_picture/${n.photo}" alt="" />
                </div>
                <!-- end img -->
                <!-- footer -->
                <div class="py-auto px-auto pb-2">
                  <div class="ml-4 mt-2">
                    <h1
                      class="text-left text-xl md:text-lg font-bold leading-normal"
                    >
                      ${n.title}
                    </h1>
                    <div>
                      <p class="text-sm overflow-hidden truncate">
                        ${n.content}
                      </p>
                    </div>
                    <h1>Day: ${n.day}</h1>
                  </div>
                  <!-- update delete -->
                  <div class="flex mt-4">
                    <div class="flex mx-auto bottom-4">
                      <div>
                        <a href="updatenews?nid=${n.news_id}">
                          <button
                            class="py-2 mr-2 px-4 bg-transparent text-green-600 font-semibold border border-green-600 rounded hover:bg-green-600 hover:text-white hover:border-transparent transition ease-in duration-200 transform hover:-translate-y-1 active:translate-y-0"
                          >
                            Update
                          </button>
                        </a>
                      </div>
                      <div>
                        <a href="deletenews?newsid=${n.news_id}">
                          <button
                            class="py-2 mr-2 px-4 bg-transparent text-red-600 font-semibold border border-red-600 rounded hover:bg-red-600 hover:text-white hover:border-transparent transition ease-in duration-200 transform hover:-translate-y-1 active:translate-y-0"
                          >
                            Delete
                          </button>
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </article>
              <!-- END Article -->
            </c:forEach>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
