<%-- Document : Schedule_Select_Area Created on : Oct 20, 2023, 4:59:58 PM
Author : ACER --%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="sample.foodingschedule.AnimalCageDTO"%> <%@page
import="java.util.List"%>
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
    <title>Select Areas</title>
  </head>
  <!-- prettier-ignore -->
  <%@ include file="components/headermanager.jsp" %>
  <!-- end header -->
  <body class="overflow-x-auto mx-auto">
    <!-- prettier-ignore -->
    <%@ include file="components/sidebarmanager.jsp" %>
    <!-- end sidebar -->
    <div class="px-3 md:lg:xl:px-40 border-t py-20 bg-opacity-10">
      <div class="mx-auto border-b border-gray-300 text-center">
        <h3 class="text-5xl font-medium text-gray-700 mb-4">Select Areas</h3>
      </div>
      <div
        class="grid grid-cols-1 md:lg:xl:grid-cols-3 group bg-white shadow-xl shadow-neutral-100 border mt-20"
      >
        <!-- Sử dụng vòng lặp để tạo thẻ div cho mỗi khu vực -->

        <form action="Foodingschedule_MainController">
          <button
            id="Area001"
            type="submit"
            name="action"
            value="Select_Area"
            class="w-full py-10 flex flex-col items-center text-center group md:lg:xl:border-r md:lg:xl:border-b hover:bg-slate-50 cursor-pointer"
          >
            <span
              class="p-5 rounded-full bg-green-300 text-white shadow-lg"
              style="
                font-size: 2em;
                width: 80px;
                height: 80px;
                line-height: 40px;
                text-align: center;
              "
            >
              🦁</span
            >
            <p class="text-4xl text-slate-700 mt-3">Carnivore Exhibit</p>
            <input type="hidden" name="Search_Area" value="Area001" />
          </button>
        </form>
        <form action="Foodingschedule_MainController">
          <button
            id="Area001"
            type="submit"
            name="action"
            value="Select_Area"
            class="w-full py-10 flex flex-col items-center text-center group md:lg:xl:border-r md:lg:xl:border-b hover:bg-slate-50 cursor-pointer"
          >
            <span
              class="p-5 rounded-full bg-green-300 text-white shadow-lg"
              style="
                font-size: 2em;
                width: 80px;
                height: 80px;
                line-height: 40px;
                text-align: center;
              "
            >
              🐍</span
            >
            <p class="text-4xl text-slate-700 mt-3">Reptilia</p>
            <input type="hidden" name="Search_Area" value="Area002" />
          </button>
        </form>
        <form action="Foodingschedule_MainController">
          <button
            id="Area001"
            type="submit"
            name="action"
            value="Select_Area"
            class="w-full py-10 flex flex-col items-center text-center group md:lg:xl:border-r md:lg:xl:border-b hover:bg-slate-50 cursor-pointer"
          >
            <span
              class="p-5 rounded-full bg-green-300 text-white shadow-lg"
              style="
                font-size: 2em;
                width: 80px;
                height: 80px;
                line-height: 40px;
                text-align: center;
              "
            >
              🦅</span
            >
            <p class="text-4xl text-slate-700 mt-3">Bird sanctuary</p>
            <input type="hidden" name="Search_Area" value="Area003" />
          </button>
        </form>
        <form action="Foodingschedule_MainController">
          <button
            id="Area001"
            type="submit"
            name="action"
            value="Select_Area"
            class="w-full py-10 flex flex-col items-center text-center group md:lg:xl:border-r md:lg:xl:border-b hover:bg-slate-50 cursor-pointer"
          >
            <span
              class="p-5 rounded-full bg-green-300 text-white shadow-lg"
              style="
                font-size: 2em;
                width: 80px;
                height: 80px;
                line-height: 40px;
                text-align: center;
              "
            >
              🐴</span
            >
            <p class="text-4xl text-slate-700 mt-3">herbivore exhibit</p>
            <input type="hidden" name="Search_Area" value="Area004" />
          </button>
        </form>
      </div>
    </div>
  </body>
</html>
