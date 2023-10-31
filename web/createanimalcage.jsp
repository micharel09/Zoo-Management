<!-- prettier-ignore -->
<%-- Document : createanimalcage Created on : Oct 6, 2023, 1:56:03 PM Author :Quan --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        // Code xử lý sau khi trang đã nạp hoàn toàn ở đây
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
    <title>Create Page</title>
  </head>
  <body class="bg-green-500">
    <!-- MAIN CONTENT -->
    <div class="flex justify-center items-center w-full h-full">
      <section class="p-10 pt-4 bg-white rounded-md shadow-md mt-20 w-1/2">
        <!-- back button -->
        <div class="flex ml-0">
          <a
            href="animalcagecontroller"
            class="group flex items-center bg-transparent text-2xl font-thin tracking-widest text-white back-button"
          >
            <svg
              viewBox="0 0 46 16"
              height="15"
              width="35"
              xmlns="http://www.w3.org/2000/svg"
              id="arrow-horizontal"
              class="fill-slate-700 transition-all duration-300 ease-out group-hover:-translate-x-full group-hover:scale-x-105 group-hover:fill-white"
            >
              <path
                transform="scale(-1, 1) translate(-30)"
                d="M8,0,6.545,1.455l5.506,5.506H-30V9.039H12.052L6.545,14.545,8,16l8-8Z"
                data-name="Path 10"
                id="Path_10"
              ></path>
            </svg>
            <span
              class="ml-2 text-black after:transition-transform after:duration-500 after:ease-out after:absolute after:bottom-0 after:left-0 after:block after:h-[2px] after:w-full after:origin-bottom-right after:scale-x-0 after:bg-blue-500 after:content-[''] after:group-hover:origin-bottom-left after:group-hover:scale-x-100"
              >Back</span
            >
          </a>
        </div>
        <!-- end back -->
        <header class="border-b border-gray-100 px-10 flex items-center">
          <div class="text-gray-800 mx-auto pb-4">
            <h1 class="text-5xl font-medium text-gray-700">Add Animal Cage</h1>
          </div>
        </header>
        <div class="mx-auto w-full max-w-8xl">
          <form
            action="createanimalcage"
            method="POST"
            enctype="multipart/form-data"
          >
            <!-- Submit -->
            <div class="flex justify-end">
              <button
                type="submit"
                class="border hover:border-none border-black px-5 py-2 leading-5 relative overflow-hidden text-black rounded-md shadow-2xl transition-all duration-200 before:absolute before:bottom-0 before:left-0 before:right-0 before:top-0 before:m-auto before:h-0 before:w-0 before:rounded-sm before:bg-green-600 before:duration-300 before:ease-out hover:text-white hover:shadow-bg-green-500 hover:before:h-40 hover:before:w-40 hover:before:opacity-100"
              >
                <p class="relative z-10 font-extralight text-xl">Save</p>
              </button>
            </div>
            <!-- end submit -->
            <!-- Name-->
            <div class="relative z-0 mb-6 w-full group">
              <input
                type="text"
                placeholder=" "
                required
                name="name"
                placeholder="Enter Cage name"
                min="0"
                class="block py-2.5 px-0 w-full text-xl bg-transparent border-0 border-b-2 border-green-300 appearance-none dark:border-gray-600 dark:focus:border-green-400 focus:outline-none focus:ring-0 focus:border-green-600 peer"
              />
              <label
                class="absolute text-xl text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-green-600 peer-focus:dark:text-greeborder-green-400 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
                for="fullName"
                >Name:</label
              >
            </div>
            <p class="mt-3 text-xs text-red-400"></p>
            <!-- end name -->

            <!-- ID DIV -->
            <div class="-mx-3 flex flex-wrap">
              <!-- Area_ID -->
              <div class="w-full px-3 sm:w-1/2">
                <label
                  for="area_id"
                  class="mb-3 block text-xl font-medium text-[#07074D]"
                  >Area_ID</label
                >
                <select
                  name="area_id"
                  class="w-full rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-xl text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
                >
                  <c:forEach var="a" items="${listarea}">
                    <option>${a.area_id}</option>
                  </c:forEach>
                </select>
              </div>
              <!-- end area -->
              <!-- Employee ID -->
              <div class="w-full px-3 sm:w-1/2">
                <div class="mb-5">
                  <label
                    for="employee_id"
                    class="mb-3 block text-xl font-medium text-[#07074D]"
                    >Employee_ID</label
                  >
                  <select
                    name="employee_id"
                    class="w-full rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-xl text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
                  >
                    <c:forEach var="o" items="${listuser}">
                      <option>${o.employee_id}</option>
                    </c:forEach>
                  </select>
                </div>
              </div>
              <!-- end employee  -->
            </div>
            <!-- end ID -->

                     <!-- photo -->
            <div
              class="container mt-4 mx-auto h-full flex flex-col justify-center items-center"
            >
              <div id="images-container">
                <c:if test="${aa.photo != null}">
                  <img
                    src="./animalcage_picture/${aa.photo}"
                    width="80"
                    height="70"
                    id="current-photo"
                    class="flex justify-center mx-auto h-1/3 w-1/3 mb-2"
                  />
                </c:if>
              </div>

              <div class="flex w-full justify-center">
                <div
                  id="single-upload-button"
                  class="cursor-pointer bg-neutral-200 rounded-md px-12 py-4 text-xl border-none text-neutral-600 hover:text-white hover:shadow-[inset_16rem_0_0_0] hover:shadow-green-500 duration-[400ms,700ms] transition-[color,box-shadow]"
                >
                  Upload Photo
                </div>
              </div>
              <input
                type="file"
                class="hidden"
                name="photo"
                id="photoInput"
                placeholder="Enter photo"
              />
            </div>
            <!-- end photo -->

            <!-- script photo -->
            <script src="js/updatephoto.js"></script>
            <!-- end photo -->
          </form>
        </div>
      </section>
    </div>
  </body>
</html>
