<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>Check Feedback </title>
  </head>
  <body class="bg-green-300">
    <div class="flex justify-center items-center w-full h-full">
      <section class="p-10 mx-auto bg-white rounded-md shadow-md mt-20 w-1/2">
        <header class="border-b border-gray-100 px-10 flex items-center">
          <!-- main -->
          <!-- back button -->
          <div class="">
            <!-- Căn chỉnh vị trí sang trái -->
            <a
              href="ListFeedback"
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

          <div class="text-gray-800 mx-auto pr-20 pb-4">
            <h1 class="font-bold text-5xl">Check Feedback</h1>
          </div>
        </header>

        <div class="mx-auto w-full max-w-8xl">
          <form
            action="update"
            method="post"
            
          >
            <input type="hidden" name="id" value="${feedback.feedback_id}" />
            <!-- Submit -->
            
            <!-- end submit -->
            <!-- name -->
            <div class="mb-5 ">
              <label
                for="guest"
                class="mb-3 block text-xl font-medium text-[#07074D]"
              >
                Title
              </label>

              <h1 class="break-all w-full appearance-none rounded-md borderpy-3 px-6 text-2xl font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md">
                ${feedback.title}</h1>

              <label
                for="guest"
                class=" mt-5 mb-3 block text-2xl font-medium text-[#07074D]"
              >
                Purpose:
              </label>

              <h1 class=" break-all w-full appearance-none rounded-md borderpy-3 px-6 text-2xl font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md">
                ${feedback.purpose}</h1>
            
                <label
                for="guest"
                class=" mt-5 mb-3 block text-xl font-medium text-[#07074D]"
              >
                ProcessNote
              </label>

              <input
                class="  w-full appearance-none rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-2xl font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
                type="text"
                name="processnote"
                value="${feedback.processnote}"
              />
            </div>
                <!-- end name -->
            <div class="-mx-3 mt-5 flex flex-wrap">
              <!-- date -->
              <div class="w-full px-3 sm:w-1/2">
                <div class="mb-5">
                  <label
                    for="date"
                    class="mb-3 block text-xl font-medium text-[#07074D]"
                  >
                    Date
                  </label>
                  <p class="w-full rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-2xl font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md">
                    ${feedback.date}</p>
                </div>
              </div>
              <!-- end date -->
              <!-- select -->
              <div class="w-full px-3 sm:w-1/2">
                <div class="mb-5">
                  <label
                    for="time"
                    class="mb-3 block text-xl font-medium text-[#07074D]"
                  >
                    Status
                  </label>
                  <select
                    class="w-full rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-2xl font-medium text-red-500 outline-none focus:border-[#6A64F1] focus:shadow-md"
                    name="status" value ="${feedback.status}" 
                  >
                    
                     
                      <option>APPROVED</option>
                      <option>REJECTED </option>
                    
                  </select>
                </div>
              </div>
              <!-- end select -->
            </div>

            
           
            <!-- SAVE -->
            <div class="flex justify-end">
              <button
                type="submit" value="submit"
                class="px-10 py-3 leading-5 ml-auto relative overflow-hidden bg-black text-white rounded-md shadow-2xl transition-all duration-200 before:absolute before:bottom-0 before:left-0 before:right-0 before:top-0 before:m-auto before:h-0 before:w-0 before:rounded-sm before:bg-green-400 before:duration-300 before:ease-out hover:text-white hover:shadow-bg-green-500 hover:before:h-40 hover:before:w-40 hover:before:opacity-80"
              >
                <p class="relative z-10 font-extralight text-2xl">Save</p>
              </button>
            </div>
            <!-- end photo -->

           
          </form>
        </div>
      </section>
    </div>
  </body>
</html>