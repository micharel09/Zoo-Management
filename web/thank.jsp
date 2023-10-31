<%-- Document : Cart Created on : Sep 27, 2023, 10:16:31 AM Author : Quan --%>
<!-- prettier-ignore -->
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <script src="https://cdn.tailwindcss.com"></script>
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
      .bg-gray-100 {
        background-image: url("img/checkoutbg.png");
      }
      body {
        overflow: hidden;
      }
    </style>

    <title>Checkout</title>
    <!-- header and breakcrumb -->
    <!-- prettier-ignore -->
    <%@ include file="components/header.html" %> 
    <%@ include file="components/breadcrumb.html" %>
    <!-- end header -->
  </head>
  <body>
    <div class="w-full h-screen relative form-bg">
      <!-- Progress Steps -->
      <div class="w-full">
        <div
          class="flex justify-center py-4 bg-gray-50 border-b-1 border-black"
        >
          <!-- Bước 1 -->
          <div class="w-1/6">
            <div class="relative mb-2">
              <div
                class="w-10 h-10 mx-auto bg-green-500 rounded-full text-lg text-white flex items-center"
              >
                <span class="text-center text-white w-full">
                  <i class="fa-solid fa-ticket"></i>
                </span>
              </div>
            </div>
            <div class="text-xs text-center md:text-base">Choose ticket</div>
          </div>

          <!-- Bước 2 -->
          <div class="w-1/6">
            <div class="relative mb-2">
              <div
                class="absolute flex align-center items-center align-middle content-center"
                style="
                  width: calc(100% - 2.5rem - 1rem);
                  top: 50%;
                  transform: translate(-50%, -50%);
                "
              >
                <div
                  class="w-full bg-green-500 rounded items-center align-middle align-center flex-1"
                >
                  <div
                    class="w-0 bg-green-500 py-1 rounded"
                    style="width: 100%"
                  ></div>
                </div>
              </div>

              <div
                class="w-10 h-10 mx-auto bg-green-500 rounded-full text-lg text-white flex items-center"
              >
                <span class="text-center text-white w-full">
                  <svg
                    class="w-full fill-current"
                    xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 24 24"
                    width="24"
                    height="24"
                  >
                    <path
                      class="heroicon-ui"
                      d="M19 10h2a1 1 0 0 1 0 2h-2v2a1 1 0 0 1-2 0v-2h-2a1 1 0 0 1 0-2h2V8a1 1 0 0 1 2 0v2zM9 12A5 5 0 1 1 9 2a5 5 0 0 1 0 10zm0-2a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm8 11a1 1 0 0 1-2 0v-2a3 3 0 0 0-3-3H7a3 3 0 0 0-3 3v2a1 1 0 0 1-2 0v-2a5 5 0 0 1 5-5h5a5 5 0 0 1 5 5v2z"
                    ></path>
                  </svg>
                </span>
              </div>
            </div>
            <div class="text-xs text-center md:text-base">Payment</div>
          </div>
          <!-- Bước 3 -->
          <div class="w-1/6">
            <div class="relative mb-2">
              <div
                class="absolute flex align-center items-center align-middle content-center"
                style="
                  width: calc(100% - 2.5rem - 1rem);
                  top: 50%;
                  transform: translate(-50%, -50%);
                "
              >
                <div
                  class="w-full bg-green-500 rounded items-center align-middle align-center flex-1"
                >
                  <div
                    class="w-0 bg-green-300 py-1 rounded"
                    style="width: 0%"
                  ></div>
                </div>
              </div>

              <div
                class="w-10 h-10 mx-auto bg-green-500 border-2 border-gray-200 rounded-full text-lg text-white flex items-center"
              >
                <span class="text-center text-white w-full">
                  <svg
                    class="w-full fill-current"
                    xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 24 24"
                    width="24"
                    height="24"
                  >
                    <path
                      class="heroicon-ui"
                      d="M12 22a10 10 0 1 1 0-20 10 10 0 0 1 0 20zm0-2a8 8 0 1 0 0-16 8 8 0 0 0 0 16zm-2.3-8.7l1.3 1.29 3.3-3.3a1 1 0 0 1 1.4 1.42l-4 4a1 1 0 0 1-1.4 0l-2-2a1 1 0 0 1 1.4-1.42z"
                    ></path>
                  </svg>
                </span>
              </div>
            </div>
            <div class="text-xs text-center md:text-base">Finished</div>
          </div>
        </div>
      </div>
      <!-- end Progress Steps -->
      <!-- Main -->
      <form
        action="checkout"
        method="post"
        class="mx-auto bg-gray-100 rounded-b-3xlf h-screen"
      >
        <div
          class="bg-white px-4 lg:mt-0 w-1/2 mx-auto rounded-b-3xl border-2 border-black shadow-2xl"
        >
          <div>
            <div class="mt-10 text-center">
              <p class="text-4xl font-medium">Thank for booking</p>
              <p class="text-gray-400">
                Please check your email to view your ticket(s).
              </p>
            </div>
            <img class="mx-auto" src="/img/7efs.gif" />
          </div>
        </div>
      </form>
      <!-- end Main -->
      <!-- cart -->
    </div>
  </body>
</html>
