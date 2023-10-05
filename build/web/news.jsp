<%-- Document : news.jsp Created on : Oct 4, 2023, 1:20:17 PM Author : Quan --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

    <!-- AlpineJS -->
    <script
      defer
      src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"
    ></script>

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
    <title>News</title>
  </head>
  <body class="w-[1500px] block overflow-x-hidden mx-auto">
    <!-- header -->
    <nav class="border-gray-200 bg-green-600">
      <div class="flex p-1">
        <!-- logo -->
        <a href="homepage.jsp" class="flex items-center justify-center w-1/2">
          <div class="">
            <img src="img/logo2.png" class="h-20 text-xl" alt="Logo" />
          </div>
          <span
            class="self-center text-4xl font-extralight whitespace-nowrap dark:text-white"
            >Wild World Zoo</span
          >
        </a>
        <!-- end logo -->
        <!-- navbar -->
        <div
          class="items-center justify-between hidden w-full md:flex md:w-auto md:order-1 w-full"
          id="navbar-user"
        >
          <ul
            class="flex flex-col font-extralight md:p-0 mt-4 borderrounded-lg md:flex-row md:space-x-8 md:mt-0 md:border-0"
          >
            <li>
              <a
                href="homepage.jsp"
                class="navbar-text block py-4 pl-4 text-2xl text-gray-900 rounded before:ease relative h-18 w-24 overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700"
                aria-current="page"
                >HOME</a
              >
            </li>
            <li>
              <a
                href="#"
                class="navbar-text block py-4 pl-3 text-2xl text-gray-900 rounded before:ease relative h-18 w-24 overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700"
                >ABOUT</a
              >
            </li>
            <li>
              <a
                href="Animals.jsp"
                class="navbar-text block py-4 pr-4 pl-2 text-2xl text-gray-900 rounded before:ease relative h-18 w-24 overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700"
                >ANIMAL</a
              >
            </li>
            <li>
              <a
                href="#"
                class="navbar-text block py-4 pl-4 text-2xl text-gray-900 rounded before:ease relative h-18 w-24 overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700"
                >NEWS</a
              >
            </li>
            <li>
              <a
                href="Map.jsp"
                class="navbar-text block py-4 pl-6 text-2xl text-gray-900 rounded before:ease relative h-18 w-24 overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700"
                >MAP</a
              >
            </li>
          </ul>
        </div>
        <!-- end navbar -->
      </div>
    </nav>
    <!-- end header -->
    <!-- Breadcrumb -->
    <nav
      class="flex bg-gray-50 text-gray-700 py-3 px-5 dark:bg-gray-800 dark:border-gray-700"
      aria-label="Breadcrumb"
    >
      <ol class="inline-flex items-center space-x-1 md:space-x-3">
        <li class="inline-flex items-center">
          <a
            href="Homepage.html"
            class="text-sm text-gray-700 hover:text-gray-900 inline-flex items-center dark:text-gray-400 dark:hover:text-white"
          >
            <svg
              class="w-4 h-4 mr-2"
              fill="currentColor"
              viewBox="0 0 20 20"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path
                d="M10.707 2.293a1 1 0 00-1.414 0l-7 7a1 1 0 001.414 1.414L4 10.414V17a1 1 0 001 1h2a1 1 0 001-1v-2a1 1 0 011-1h2a1 1 0 011 1v2a1 1 0 001 1h2a1 1 0 001-1v-6.586l.293.293a1 1 0 001.414-1.414l-7-7z"
              ></path>
            </svg>
            Home
          </a>
        </li>
        <li aria-current="page">
          <div class="flex items-center">
            <svg
              class="w-6 h-6 text-gray-400"
              fill="currentColor"
              viewBox="0 0 20 20"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path
                fill-rule="evenodd"
                d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
                clip-rule="evenodd"
              ></path>
            </svg>
            <span
              class="text-gray-400 ml-1 md:ml-2 text-sm font-medium dark:text-gray-500"
              >News</span
            >
          </div>
        </li>
      </ol>
    </nav>
    <!-- end breadcrumb -->

    <!-- main -->
    <section class="bg-gray-50">
      <div class="container px-6 py-10 mx-auto">
        <h1 class="text-3xl font-semibold capitalize lg:text-4xl text-black">
          News
        </h1>

        <div class="grid grid-cols-1 gap-8 mt-8 md:mt-16 md:grid-cols-2">
          <div class="lg:flex">
            <img
              class="object-cover w-full h-56 rounded-lg lg:w-64"
              src="https://images.unsplash.com/photo-1581852017103-68ac65514cf7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2073&q=80"
              alt=""
            />

            <div
              class="flex flex-col justify-between py-6 lg:mx-6 bg-white rounded-md px-4"
            >
              <a
                href="#"
                class="text-xl font-semibold hover:underline text-black"
              >
                Discover the Fascinating World of Elephants
              </a>

              <span class="text-sm text-gray-500 dark:text-gray-300"
                >On: 20 October 2019</span
              >
            </div>
          </div>

          <div class="lg:flex">
            <img
              class="object-cover w-full h-56 rounded-lg lg:w-64"
              src="https://images.unsplash.com/photo-1615963244664-5b845b2025ee?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80"
              alt=""
            />

            <div
              class="flex flex-col justify-between py-6 lg:mx-6 bg-white rounded-md px-4"
            >
              <a
                href="#"
                class="text-xl font-semibold hover:underline text-black"
              >
                The Secret Lives of Tigers: Unveiling Their Mysteries
              </a>

              <span class="text-sm text-gray-500 dark:text-gray-300"
                >On: 20 October 2019</span
              >
            </div>
          </div>

          <div class="lg:flex">
            <img
              class="object-cover w-full h-56 rounded-lg lg:w-64"
              src="https://images.unsplash.com/photo-1649340873599-4d1461808554?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"
              alt=""
            />

            <div
              class="flex flex-col justify-between py-6 lg:mx-6 bg-white rounded-md px-4"
            >
              <a
                href="#"
                class="text-xl font-semibold hover:underline text-black"
              >
                Morning Birds: A Glimpse into Their Unique Songs
              </a>

              <span class="text-sm text-gray-500 dark:text-gray-300"
                >On: 25 November 2020</span
              >
            </div>
          </div>

          <div class="lg:flex">
            <img
              class="object-cover w-full h-56 rounded-lg lg:w-64"
              src="https://images.unsplash.com/photo-1526336179256-1347bdb255ee?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1976&q=80"
              alt=""
            />

            <div
              class="flex flex-col justify-between py-6 lg:mx-6 bg-white rounded-md px-4"
            >
              <a
                href="#"
                class="text-xl font-semibold hover:underline text-black"
              >
                The Marvelous World of Butterflies: Colors and Patterns
              </a>

              <span class="text-sm text-gray-500 dark:text-gray-300"
                >On: 30 September 2020</span
              >
            </div>
          </div>

          <div class="lg:flex">
            <img
              class="object-cover w-full h-56 rounded-lg lg:w-64"
              src="https://plus.unsplash.com/premium_photo-1664298136378-ee0a66ee154b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"
              alt=""
            />

            <div
              class="flex flex-col justify-between py-6 lg:mx-6 bg-white rounded-md px-4"
            >
              <a
                href="#"
                class="text-xl font-semibold hover:underline text-black"
              >
                A Dive into the Deep: Discovering the Ocean's Wonders
              </a>

              <span class="text-sm text-gray-500 dark:text-gray-300"
                >On: 20 October 2019</span
              >
            </div>
          </div>

          <div class="lg:flex">
            <img
              class="object-cover w-full h-56 rounded-lg lg:w-64"
              src="https://images.unsplash.com/photo-1524538813-1d2e4e975e1c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1935&q=80"
              alt=""
            />

            <div
              class="flex flex-col justify-between py-6 lg:mx-6 bg-white rounded-md px-4"
            >
              <a
                href="#"
                class="text-xl font-semibold hover:underline text-black"
              >
                The World of Amphibians: Exploring Their Habitats
              </a>

              <span class="text-sm text-gray-500 dark:text-gray-300"
                >On: 20 October 2019</span
              >
            </div>
          </div>
        </div>
      </div>
      <!-- component -->
      <div class="flex justify-center pb-4">
        <nav aria-label="Page navigation example">
          <ul class="flex list-style-none">
            <li class="page-item disabled">
              <a
                class="page-link relative block py-1.5 px-3 rounded border-0 bg-transparent outline-none transition-all duration-300 rounded text-gray-500 pointer-events-none focus:shadow-none"
                href="#"
                tabindex="-1"
                aria-disabled="true"
                >Previous</a
              >
            </li>
            <li class="page-item">
              <a
                class="page-link relative block py-1.5 px-3 rounded border-0 bg-blue-600 outline-none transition-all duration-300 rounded text-white hover:text-white hover:bg-blue-600 shadow-md focus:shadow-md"
                href="#"
                >1</a
              >
            </li>
            <li class="page-item active">
              <a
                class="page-link relative block py-1.5 px-3 rounded border-0 bg-transparent outline-none transition-all duration-300 rounded text-gray-800 hover:text-gray-800 hover:bg-gray-200 focus:shadow-none"
                href="#"
                >2 <span class="visually-hidden"></span
              ></a>
            </li>
            <li class="page-item">
              <a
                class="page-link relative block py-1.5 px-3 rounded border-0 bg-transparent outline-none transition-all duration-300 rounded text-gray-800 hover:text-gray-800 hover:bg-gray-200 focus:shadow-none"
                href="#"
                >3</a
              >
            </li>
            <li class="page-item">
              <a
                class="page-link relative block py-1.5 px-3 rounded border-0 bg-transparent outline-none transition-all duration-300 rounded text-gray-800 hover:text-gray-800 hover:bg-gray-200 focus:shadow-none"
                href="#"
                >Next</a
              >
            </li>
          </ul>
        </nav>
      </div>
    </section>
    <!-- end main -->

    <!-- CRUD -->
    <div class="flex flex-col mt-8">
      <div class="py-2 -my-2 overflow-x-auto sm:-mx-6 sm:px-6 lg:-mx-8 lg:px-8">
        <div
          class="inline-block min-w-full overflow-hidden align-middle border-b border-gray-200 shadow sm:rounded-lg"
        >
        <div class="flex items-center justify-between pb-4">
          <form action="MainController" class="flex items-center">
            <label for="search" class="mr-2">Search News_ID:</label>
            <input type="text" name="" id="" value="" />
            <input type="submit" name="action" value="" />
          </form>
        
          <div class="ml-2 ">
            <a href="CreateNews.jsp">
              <button class="px-6 py-2.5 leading-5 text-white transition-colors duration-300 transform bg-gray-700 rounded-md hover:bg-green-400 focus:outline-none focus:bg-green-100">
                Add +
              </button>
            </a>
          </div>
        </div>
<!-- table -->
          <table class="min-w-full">
            <thead>
              <tr>
                <th
                  class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                >
                  New_ID
                </th>
                <th
                  class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                >
                  Title
                </th>
                <th
                  class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                >
                  Content
                </th>
                <th
                  class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                >
                  Date
                </th>
                <th
                  class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                >
                  Photo
                </th>
                <th
                  class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                >
                  Action
                </th>
              </tr>
            </thead>

            <tbody class="bg-white">
              <tr>
                <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                  .........
                </td>
                <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                  ..........
                </td>
                <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                  .......
                </td>
                <td class="px-6 py-4 text-sm leading-5 text-gray-500 whitespace-no-wrap border-b border-gray-200">
                  ........
                </td>
                <td class="px-6 py-4 text-sm leading-5 text-gray-500 whitespace-no-wrap border-b border-gray-200">
                  .........
                </td>
                <td class="px-2 py-4 text-sm font-medium leading-5 whitespace-no-wrap border-b border-gray-200">
                  <div class="flex items-center">
                    <!-- edit -->
                    <button class="flex p-2.5 bg-green-500 rounded-xl hover:rounded-3xl hover:bg-red-500 transition-all duration-300 text-white">
                      <a href="updatenews.jsp">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                          <path stroke-linecap="round" stroke-linejoin="round" d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z" />
                        </svg>
                      </a>
                    </button>
                    <!-- delete -->
                    <div class="pl-4">
                    <button class="flex p-2.5 bg-red-600 rounded-xl hover:rounded-3xl hover:bg-red-500 transition-all duration-300 text-white">
                      <a href="#" class="" onclick="return confirmDelete();">
                        <i fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2" class="h-4 w-4  fas fa-trash-alt"></i>
                      </a>
                    </button>
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
          </table>
        </div>
        <!-- Button: Confirm or Add new -->
        <div class="flex justify-end mt-6">
          <div class="pr-2">
            <button class=" px-6 py-2.5 leading-5 text-white transition-colors duration-300 transform bg-gray-700 rounded-md hover:bg-gray-600 focus:outline-none focus:bg-gray-600">
              <input
              type="submit"
              name="action"
              value="Confirm"
              class="cursor-pointer"
            />
            </button>
          </div>
      </div>
    </div>
  </body>
</html>
