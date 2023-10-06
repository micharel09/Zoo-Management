<%-- Document : animalcages Created on : Oct 6, 2023, 12:39:52 PM Author : Quan
--%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <title>Animal Cages</title>
    <%@ include file="header.html" %>
  </head>
  <body>
    <!-- main -->
    <!-- CRUD -->
    <div class="flex flex-col mt-8">
        <div class="py-2 -my-2 overflow-x-auto sm:-mx-6 sm:px-6 lg:-mx-8 lg:px-8">
          <div
            class="inline-block min-w-full overflow-hidden align-middle border-b border-gray-200 shadow sm:rounded-lg"
          >
          <div class="flex items-center justify-between pb-4 p-5">
            <form action="MainController" class="flex items-center">
              <label for="search" class="mr-2">Search AnimalCage_ID:</label>
              <input type="text" name="" id="" value="" />
              <input type="submit" name="action" value="" />
            </form>
          <!-- add button -->
          <a href="updateanimalcage.jsp" 
            class="flex animate-bounce items-center px-10 py-2.5 leading-5 text-white transition-colors duration-300 transform bg-gray-700 rounded-md hover:bg-green-400 focus:outline-none focus:bg-green-100">
              <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-5 h-5">
                  <path stroke-linecap="round" stroke-linejoin="round" d="M12 9v6m3-3H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z" />
              </svg>
              <span class="ml-1">Add</span>
          </a>
          </div>
    <!-- table -->
    <table class="min-w-full">
      <thead>
        <tr>
          <th
            class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
          >
            AnimalCage_ID
          </th>
          <th
            class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
          >
            Name
          </th>
          <th
            class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
          >
            Area_ID
          </th>
          <th
            class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
          >
            Employee_ID
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
          <td
            class="px-6 py-4 text-sm leading-5 text-gray-500 whitespace-no-wrap border-b border-gray-200"
          >
            .........
          </td>
          <td
            class="px-2 py-4 text-sm font-medium leading-5 whitespace-no-wrap border-b border-gray-200"
          >
            <div class="flex items-center">
              <!-- edit -->
              <button
                class="flex p-2.5 bg-green-500 rounded-xl hover:rounded-3xl hover:bg-red-500 transition-all duration-300 text-white"
              >
                <a href="updateanimalcage.jsp">
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
                </a>
              </button>
              <!-- delete -->
              <div class="pl-4">
                <button
                  class="flex p-2.5 bg-red-600 rounded-xl hover:rounded-3xl hover:bg-red-500 transition-all duration-300 text-white"
                >
                  <a href="#" class="" onclick="return confirmDelete();">
                    <i
                      fill="none"
                      viewBox="0 0 24 24"
                      stroke="currentColor"
                      stroke-width="2"
                      class="h-4 w-4 fas fa-trash-alt"
                    ></i>
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
            <!-- Button: Confirm-->
            <div class="flex justify-end mt-6">
                <div class="pr-2">
                  <button class="mb-2 px-6 py-2.5 leading-5 text-white transition-colors duration-300 transform bg-gray-700 rounded-md hover:bg-gray-600 focus:outline-none focus:bg-gray-600">
                    <input
                    type="submit"
                    name="action"
                    value="Confirm"
                    class="cursor-pointer"
                  />
                  </button>
                </div>
            </div>
            <!-- end button -->
  </body>
</html>
