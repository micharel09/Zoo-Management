<%-- Document : createanimalcage Created on : Oct 6, 2023, 1:56:03 PM Author :
Quan --%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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
    <title>Create Page</title>
  </head>
  <body class="bg-gray-500">
    <!-- MAIN CONTENT -->
    <div class="flex justify-center items-center h-screen">
      <section class="p-10 mx-auto bg-white rounded-md shadow-md w-1/2">
        <div class="border-b-2 border-black flex justify-center">
          <h3 class="font-bold text-4xl">Create AnimalCage</h3>
        </div>
        <form action="" method="POST">
          <div class="grid grid-cols-1 gap-6 mt-4 sm:grid-cols-2">
            <!-- Area_ID -->
            <div class="flex items-center justify-center mt-4">
              <label for="area_id" class="block text-xl text-gray-500"
                >Area_ID</label
              >
              <select name="area_id" class="ml-4 teext-xl">
                <c:forEach var="a" items="${listarea}">
                  <option>${a.area_id}</option>
                </c:forEach>
              </select>
            </div>
            <!-- end area -->
            <!-- Employee ID -->
            <div class="flex items-center justify-center mt-4">
              <label for="employee_id" class="block text-xl text-gray-500"
                >Employee_ID</label
              >
              <select name="employee_id" class="ml-4 teext-xl">
                <c:forEach var="o" items="${listuser}">
                  <option>${o.employee_id}</option>
                </c:forEach>
              </select>
            </div>
            <!-- end employee  -->
          </div>

          <!-- Name-->
          <div>
            <label for="name" class="block text-2xl text-gray-500">Name</label>

            <div class="flex items-center mt-2">
              <i
                class="fas fa-font absolute w-6 h-6 m-3 flex items-center justify-center"
              ></i>

              <input
                name="name"
                type="text"
                value=""
                placeholder="Enter name"
                class="text-xl block w-full py-2.5 rounded-lg pl-11 pr-5 rtl:pr-11 rtl:pl-5"
                required
              />
            </div>

            <p class="mt-3 text-xs text-red-400"></p>
          </div>

          <!-- Button: Cancel and Save -->
          <div class="flex justify-center mt-6">
            <div class="pr-2">
              <button
                class="px-6 py-2.5 leading-5 flex items-center justify-center relative overflow-hidden bg-black text-white rounded-md shadow-2xl transition-all duration-200 before:absolute before:bottom-0 before:left-0 before:right-0 before:top-0 before:m-auto before:h-0 before:w-0 before:rounded-sm before:bg-red-500 before:duration-300 before:ease-out hover:text-white hover:shadow-bg-red-500 hover:before:h-40 hover:before:w-40 hover:before:opacity-80"
              >
                <a
                  href="animalcagecontroller"
                  class="relative z-10 font-extralight"
                  >Cancel</a
                >
              </button>
            </div>

            <button
              class="px-8 py-2.5 leading-5 flex items-center justify-center relative overflow-hidden bg-black text-white rounded-md shadow-2xl transition-all duration-200 before:absolute before:bottom-0 before:left-0 before:right-0 before:top-0 before:m-auto before:h-0 before:w-0 before:rounded-sm before:bg-green-500 before:duration-300 before:ease-out hover:text-white hover:shadow-bg-green-500 hover:before:h-40 hover:before:w-40 hover:before:opacity-80"
            >
              <a href="" class="relative z-10 font-extralight"> Save </a>
            </button>
          </div>
          <!-- end button -->
        </form>
      </section>
    </div>
  </body>
</html>
