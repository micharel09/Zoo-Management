<%-- Document : map Created on : Nov 6, 2023, 10:07:02 AM Author : Quan --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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
    <title>Map</title>
    <style>
      [x-cloak] {
        display: none;
      }
      /* Styling for the confirmation popup */
      .popup-container {
        display: none;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.5);
        justify-content: center;
        align-items: center;
        z-index: 2;
      }

      .popup-box {
        background-color: white;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        text-align: center;
      }
      body {
        overflow: hidden;
      }
    </style>
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
    <%@ include file="components/header.html"%> <%@ include
    file="components/breadcrumb.html" %>
  </head>

  <body style="overflow-y: scroll">
    <div class="mx-auto">
      <!-- component -->
      <section class="bg-white dark:bg-gray-900">
        <div class="container px-6 py-10 mx-auto">
          <h1
            class="text-3xl font-semibold text-gray-800 capitalize lg:text-4xl dark:text-white"
          >
            Latest News
          </h1>

          <div class="grid grid-cols-1 gap-8 mt-8 md:mt-16 md:grid-cols-2">
            <div class="lg:flex">
              <img
                class="object-cover w-full h-56 rounded-lg lg:w-64"
                src="https://images.unsplash.com/photo-1462380178751-1f807dbf53ac?auto=format&fit=crop&q=80&w=1926&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"
                alt=""
              />

              <div class="flex flex-col justify-between py-6 lg:mx-6">
                <a
                  href="#"
                  class="text-xl font-semibold text-gray-800 hover:underline dark:text-white"
                >
                  Our Furry Friends - Introducing new animals at the zoo
                </a>

                <span class="text-sm text-gray-500 dark:text-gray-300"
                  >On: 20 October 2019</span
                >
              </div>
            </div>

            <div class="lg:flex">
              <img
                class="object-cover w-full h-56 rounded-lg lg:w-64"
                src="https://images.unsplash.com/photo-1612738332345-f196cccafd10?auto=format&fit=crop&q=80&w=1974&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"
                alt=""
              />

              <div class="flex flex-col justify-between py-6 lg:mx-6">
                <a
                  href="#"
                  class="text-xl font-semibold text-gray-800 hover:underline dark:text-white"
                >
                  Animal Kingdom - Profiles on animal species, habits, biology
                </a>

                <span class="text-sm text-gray-500 dark:text-gray-300"
                  >On: 20 October 2019</span
                >
              </div>
            </div>

            <div class="lg:flex">
              <img
                class="object-cover w-full h-56 rounded-lg lg:w-64"
                src="https://images.unsplash.com/photo-1605843383891-23483c16aaea?auto=format&fit=crop&q=80&w=1974&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"
                alt=""
              />

              <div class="flex flex-col justify-between py-6 lg:mx-6">
                <a
                  href="#"
                  class="text-xl font-semibold text-gray-800 hover:underline dark:text-white"
                >
                  Exploring the Wild - Articles on wildlife, habitats
                </a>

                <span class="text-sm text-gray-500 dark:text-gray-300"
                  >On: 25 November 2020</span
                >
              </div>
            </div>

            <div class="lg:flex">
              <img
                class="object-cover w-full h-56 rounded-lg lg:w-64"
                src="https://images.unsplash.com/photo-1546146020-f11a39e6c061?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&&fit=crop&w=1547&q=80"
                alt=""
              />

              <div class="flex flex-col justify-between py-6 lg:mx-6">
                <a
                  href="#"
                  class="text-xl font-semibold text-gray-800 hover:underline dark:text-white"
                >
                  Our Stories - Stories about notable zoo animals
                </a>

                <span class="text-sm text-gray-500 dark:text-gray-300"
                  >On: 30 September 2020</span
                >
              </div>
            </div>

            <div class="lg:flex">
              <img
                class="object-cover w-full h-56 rounded-lg lg:w-64"
                src="https://images.unsplash.com/photo-1576316379195-d7d2e06119c8?auto=format&fit=crop&q=80&w=2080&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&fit=crop&w=1484&q=80"
                alt=""
              />

              <div class="flex flex-col justify-between py-6 lg:mx-6">
                <a
                  href="#"
                  class="text-xl font-semibold text-gray-800 hover:underline dark:text-white"
                >
                  Behind the Scenes - Behind the scenes stories on animal care
                </a>

                <span class="text-sm text-gray-500 dark:text-gray-300"
                  >On: 13 October 2019</span
                >
              </div>
            </div>

            <div class="lg:flex">
              <img
                class="object-cover w-full h-56 rounded-lg lg:w-64"
                src="https://images.unsplash.com/photo-1519562990232-845beca99938?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format"
                alt=""
              />

              <div class="flex flex-col justify-between py-6 lg:mx-6">
                <a
                  href="#"
                  class="text-xl font-semibold text-gray-800 hover:underline dark:text-white"
                >
                  Did You Know? - Fun facts about animals
                </a>

                <span class="text-sm text-gray-500 dark:text-gray-300"
                  >On: 20 October 2019</span
                >
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  </body>
</html>
