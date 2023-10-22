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
      .form-bg {
        background-image: url("img/checkoutbg.png");
        /* Thay đổi đường dẫn hình ảnh của bạn */
        background-size: cover;
        background-position: center center;
        background-attachment: fixed;
        /* Để giữ ảnh nền tĩnh khi cuộn trang */
      }
    </style>

    <title>Checkout</title>
    <!-- prettier-ignore -->
    <%@ include file="components/header.html"%> 
    <%@ include file="components/breadcrumb.html" %>
  </head>
  <body>
    <!-- Progress Steps -->
    <div class="w-full">
      <div class="flex justify-center py-4 bg-gray-50 border-b-1 border-black">
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
              class="w-10 h-10 mx-auto bg-white border-2 border-gray-200 rounded-full text-lg text-white flex items-center"
            >
              <span class="text-center text-gray-600 w-full">
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
      id="checkout-form"
      action="checkout"
      method="post"
      class="mx-auto bg-green-100 form-bg rounded-b-3xlf h-screen"
    >
      <div
        class="bg-gray-50 px-4 lg:mt-0 w-1/2 mx-auto rounded-b-3xl border-2 border-black shadow-2xl"
      >
        <!-- back button -->
        <div class="pt-2">
          <a
            href="shop"
            class="btn group flex items-center bg-transparent text-xl font-thin tracking-widest text-white back-button"
          >
            <svg
              viewBox="0 0 46 16"
              height="15"
              width="35"
              xmlns="http://www.w3.org/2000/svg"
              id="arrow-horizontal"
              class="-translate-x-2 fill-slate-700 transition-all duration-300 ease-out group-hover:-translate-x-full group-hover:scale-x-105 group-hover:fill-white"
            >
              <path
                transform="scale(-1, 1) translate(-30)"
                d="M8,0,6.545,1.455l5.506,5.506H-30V9.039H12.052L6.545,14.545,8,16l8-8Z"
                data-name="Path 10"
                id="Path_10"
              ></path>
            </svg>
            <span
              class="relative pb-1 text-black after:transition-transform after:duration-500 after:ease-out after:absolute after:bottom-0 after:left-0 after:block after:h-[2px] after:w-full after:origin-bottom-right after:scale-x-0 after:bg-blue-500 after:content-[''] after:group-hover:origin-bottom-left after:group-hover:scale-x-100"
              >Back</span
            >
          </a>
        </div>
        <!-- end back -->
        <div>
          <div class="text-center">
            <p class="text-5xl font-medium">Checkout Details</p>
            <p class="text-gray-400">
              Complete your order by providing your payment details.
            </p>
          </div>
          <!-- Name -->
          <div class="relative z-0 mb-6 w-full group">
            <input
              type="text"
              id="email"
              name="email"
              required
              class="block py-2.5 px-0 w-full text-xl bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:border-gray-600 dark:focus:border-green-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
              placeholder=" "
            />
            <label
              class="absolute text-xl text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-green-600 peer-focus:dark:text-green-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
              for="email"
              >Email</label
            >
            <div
              class="pointer-events-none absolute inset-y-0 left-0 inline-flex items-center px-3"
            ></div>
          </div>
          <!-- Email -->
          <div class="relative z-0 mb-6 w-full group">
            <input
              type="text"
              id="email"
              name="fullname"
              class="block py-2.5 px-0 w-full text-xl bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:border-gray-600 dark:focus:border-green-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
              placeholder=" "
              required
            /><label
              for="name"
              class="absolute text-xl text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-green-600 peer-focus:dark:text-green-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
              >Full Name
            </label>
            <div
              class="pointer-events-none absolute inset-y-0 left-0 inline-flex items-center px-3"
            ></div>
          </div>
          <!-- Phone -->
          <div class="flex">
            <div class="relative w-7/12 z-0 w-full group flex-shrink-0">
              <input
                type="phone"
                required
                id="phone"
                name="phone"
                class="block py-2.5 px-0 w-full text-xl bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:border-gray-600 dark:focus:border-green-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                placeholder=" "
              />
              <label
                for="phone"
                class="absolute text-xl text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-green-600 peer-focus:dark:text-green-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
                >Phone:
              </label>
              <div
                class="pointer-events-none absolute inset-y-0 left-0 inline-flex items-center px-3"
              ></div>
            </div>
            <!-- date -->
            <div class="relative z-0 mb-6 w-full group">
              <input
                type="date"
                name="date1"
                id="date-input"
                class="flex-shrink-0 block py-2.5 px-0 text-xl bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:border-gray-600 dark:focus:border-green-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                placeholder="MM/YY"
              />
            </div>
            <script>
              var currentDate = new Date();
              var formattedDate = currentDate.toISOString().split("T")[0];
              document
                .getElementById("date-input")
                .setAttribute("min", formattedDate);
            </script>
          </div>
          <!-- promotion -->
          <div class="relative z-0 mb-6 w-full group">
            <input
              type="text"
              name="promotion"
              placeholder=" "
              class="flex-shrink-2 block py-2.5 px-0 text-xl bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:border-gray-600 dark:focus:border-green-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
              placeholder="Promotion"
            />
            <label
              class="absolute text-xl text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-green-600 peer-focus:dark:text-green-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
              for="fullName"
              >Promotion</label
            >
          </div>
          <!-- Total -->
          <div class="mt-6 border-t border-b py-2">
            <div>
              <p class="text-sm font-medium text-gray-900">Total Amount</p>
              <p
                id="total-amount"
                class="text-2xl font-semibold text-gray-900"
              ></p>
            </div>
          </div>
          <div
            class="flex justify-center pt-4 mb-4 mr-4 border-t border-gray-100"
          >
            <button
              class="bg-transparent rounded-md px-12 py-4 text-2xl border-black text-black border-2 hover:text-white hover:shadow-[inset_16rem_0_0_0] hover:shadow-green-500 duration-[200ms,400ms] transition-[color,box-shadow]"
              onclick="showSuccessMessage()"
            >
              <input type="submit" value="FINISH" />
            </button>

            <!-- <div
              id="success-message"
              style="display: none"
              class="bg-green-100 p-4 my-4"
            >
              <p class="text-green-700 font-bold">Payment Success!</p>
              <p>Thank you, check your gmail for more information.</p>
            </div> -->
          </div>
        </div>
      </div>
    </form>
    <!-- end Main -->
    <!-- cart -->
  </body>
</html>
