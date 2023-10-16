<!-- prettier-ignore -->
<%-- Document : area Created on : Sep 27, 2023, 10:10:35 PM Author : ADMIN --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <!-- loading -->
    <iframe
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
    </style>
    <!-- end loading -->
    <title>Area</title>
  </head>
  <body class="w-[1500px] block overflow-x-hidden mx-auto bg-green-500">
    <main class="antialiased font-sans bg-white">
      <div class="container mx-auto px-4 sm:px-8">
        <div class="flex justify-center">
          <h1 class="text-6xl mt-10 font-bold">Location Area</h1>
        </div>
        <div class="py-8 ml-20">
          <!-- main -->
          <div class="-mx-4 sm:-mx-8 px-4 sm:px-8 py-3 overflow-x-hidden">
            <table class="min-w-full border-collapse border border-blue-500">
              <thead class="bg-neutral-100">
                <tr class="bg-blue-500 text-white">
                  <th
                    class="w-1/4 px-10 py-6 border-b-2 border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                  >
                    Animal Cage ID
                  </th>
                  <th
                    class="px-10 py-6 border-b-2 border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                    style="width: 100px"
                  >
                    Employee_ID
                  </th>
                  <th
                    class="px-10 py-6 border-b-2 border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                    style="width: 100px"
                  >
                    Location
                  </th>
                  <th
                    class="px-6 py-3 border-b border-r text-2xl border-gray-300 text-left leading-4 tracking-wider"
                  >
                    Name
                  </th>
                </tr>
              </thead>
              <c:forEach items="${a}" var="o">
                <tbody
                  class="bg-white cursor-pointer hover:shadow-xl hover:transform hover:scale-105 hover:rounded-2xl duration-300 hover:bg-gray-100 hover:bg-gray-100 hover:border-gray-100"
                >
                  <tr>
                    <td
                      class="text-blue-500 py-3 text-2xl px-6 py-3 border-b border-gray-200 border-r"
                    >
                      <a href="animalcagesearch?animalcageID=${o.animalcage_id}"
                        >${o.animalcage_id}</a
                      >
                    </td>
                    <td
                      class="pl-10 py-3 text-2xl px-6 py-3 border-b border-gray-200 border-r"
                    >
                      ${o.employee_id}
                    </td>

                    <td
                      class="pl-10 py-3 text-2xl px-6 py-3 border-b border-gray-200 border-r"
                    >
                      ${o.area_id}
                    </td>

                    <td
                      class="py-3 text-2xl px-6 py-3 border-b border-gray-200 border-r"
                    >
                      <a
                        class="cursor-pointer duration-300 hover:text-blue-600"
                        href="animalsearch?animalID=${o.animalcage_id}"
                        >${o.name}</a
                      >
                    </td>
                  </tr>
                </tbody></c:forEach
              >
            </table>
          </div>
        </div>
      </div>
    </main>
  </body>
</html>
