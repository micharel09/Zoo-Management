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
    <%@ include file="components/header.html"%> <%@ include
    file="components/breadcrumb.html" %>
  </head>
  <body>
    <!--SIDE BAR HERE-->
    <nav
      class="z-20 flex shrink-0 grow-0 justify-around gap-4 border-t border-gray-200 bg-white/50 p-2.5 shadow-lg backdrop-blur-lg dark:border-slate-600/60 dark:bg-slate-800/50 fixed top-2/4 -translate-y-2/4 left-6 min-h-[auto] min-w-[64px] flex-col rounded-lg border"
    >
      <a
        href="/managercontroller"
        class="flex aspect-square min-h-[32px] w-16 flex-col items-center justify-center gap-1 rounded-md p-1.5 text-gray-700 hover:bg-gray-100 dark:text-gray-400 dark:hover:bg-slate-800"
      >
        <!-- HeroIcon - User -->
        <i class="fa-regular fa-folder-open"></i>
        <small class="text-center text-xs font-medium"> Area </small>
      </a>

      <a
        href="/ListFeedback"
        class="flex aspect-square min-h-[32px] w-16 flex-col items-center justify-center gap-1 rounded-md p-1.5 text-gray-700 hover:bg-gray-100 dark:text-gray-400 dark:hover:bg-slate-800"
      >
        <!-- HeroIcon - Chart Bar -->
        <svg
          xmlns="http://www.w3.org/2000/svg"
          fill="none"
          viewBox="0 0 24 24"
          stroke-width="1.5"
          stroke="currentColor"
          class="w-6 h-6"
        >
          <path
            stroke-linecap="round"
            stroke-linejoin="round"
            d="M21 7.5l-9-5.25L3 7.5m18 0l-9 5.25m9-5.25v9l-9 5.25M3 7.5l9 5.25M3 7.5v9l9 5.25m0-9v9"
          />
        </svg>
        <small class="text-center text-xs font-medium"> Feedback </small>
      </a>

      <a
        href="/NewsControl"
        class="flex aspect-square min-h-[32px] w-16 flex-col items-center justify-center gap-1 rounded-md p-1.5 bg-indigo-50 text-indigo-600 dark:bg-sky-900 dark:text-sky-50"
      >
        <!-- HeroIcon - Cog-6-tooth -->
        <svg
          xmlns="http://www.w3.org/2000/svg"
          fill="none"
          viewBox="0 0 24 24"
          stroke-width="1.5"
          stroke="currentColor"
          class="w-6 h-6"
        >
          <path
            stroke-linecap="round"
            stroke-linejoin="round"
            d="M15 19.128a9.38 9.38 0 002.625.372 9.337 9.337 0 004.121-.952 4.125 4.125 0 00-7.533-2.493M15 19.128v-.003c0-1.113-.285-2.16-.786-3.07M15 19.128v.106A12.318 12.318 0 018.624 21c-2.331 0-4.512-.645-6.374-1.766l-.001-.109a6.375 6.375 0 0111.964-3.07M12 6.375a3.375 3.375 0 11-6.75 0 3.375 3.375 0 016.75 0zm8.25 2.25a2.625 2.625 0 11-5.25 0 2.625 2.625 0 015.25 0z"
          />
        </svg>
        <small class="text-center text-xs font-medium"> News</small>
      </a>

      <hr class="dark:border-gray-700/60" />

      <a
        href="/"
        class="flex h-16 w-16 flex-col items-center justify-center gap-1 text-fuchsia-900 dark:text-gray-400"
      >
        <!-- HeroIcon - Home Modern -->
        <svg
          xmlns="http://www.w3.org/2000/svg"
          fill="none"
          viewBox="0 0 24 24"
          stroke-width="1.5"
          stroke="currentColor"
          class="w-6 h-6"
        >
          <path
            stroke-linecap="round"
            stroke-linejoin="round"
            d="M15 9h3.75M15 12h3.75M15 15h3.75M4.5 19.5h15a2.25 2.25 0 002.25-2.25V6.75A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25v10.5A2.25 2.25 0 004.5 19.5zm6-10.125a1.875 1.875 0 11-3.75 0 1.875 1.875 0 013.75 0zm1.294 6.336a6.721 6.721 0 01-3.17.789 6.721 6.721 0 01-3.168-.789 3.376 3.376 0 016.338 0z"
          />
        </svg>
        <small className="text-xs font-medium">Profile</small>
      </a>
    </nav>
    <div class="flex justify-center mt-5">
      <h1 class="text-3xl">News Information</h1>
    </div>
    <div class="ml-36">
      <!-- search -->
      <div class="flex items-center justify-between pb-4 p-5">
        <form action="searchnews" class="flex items-center">
          <label for="search" class="mr-2">Search News_ID:</label>
          <input type="text" name="newsid" id="newsid" />
          <input type="submit" name="action" value="Search" />
        </form>
        <!-- end search -->
        <!-- Create -->
        <form action="createnews" method="get">
          <input type="submit" value="Create" />
        </form>
      </div>
      <!-- end create -->
      <!-- CRUD -->
      <div class="container my-12 mx-auto px-4 md:px-12">
        <div class="grid grid-cols-3 gap-4">
          <c:forEach items="${listN}" var="n">
            <!-- Article -->
            <article class="overflow-hidden rounded-lg shadow-lg">
              <!-- img -->
              <img
                class="block h-72 w-full"
                src="./news_picture/${n.photo}"
                alt=""
              />
              <!-- end img -->
              <!-- footer -->
              <div class="p-6">
                <h1
                  class="text-left text-xl md:text-lg font-bold leading-normal"
                >
                  ${n.title}
                </h1>
                <p class="text-sm overflow-hidden truncate">${n.content}</p>
                <h1>Day: ${n.day}</h1>
                <div class="flex mt-4">
                  <div class="flex mx-auto">
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
  </body>
</html>
