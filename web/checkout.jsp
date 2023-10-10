<%-- Document : Cart Created on : Sep 27, 2023, 10:16:31 AM Author : Quan --%>
  <%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

        <!DOCTYPE html>
        <html>

        <head>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
          <script src="https://cdn.tailwindcss.com"></script>
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
          <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css" rel="stylesheet" />
          <link href="./css/tailwind.css" rel="stylesheet" />
          <link rel="stylesheet" href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" />
          <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.js" defer></script>
          <script src="https://kit.fontawesome.com/5b0b34b925.js" crossorigin="anonymous"></script>
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
          <%@ include file="components/header.html" %>
            <%@ include file="components/breadcrumb.html" %>
        </head>

        <body>
          <!-- Progress Steps -->
          <div class="w-full">
            <div class="flex justify-center py-4 bg-gray-50 border-b-1 border-black">
              <!-- Bước 1 -->
              <div class="w-1/6">
                <div class="relative mb-2">
                  <div class="w-10 h-10 mx-auto bg-green-500 rounded-full text-lg text-white flex items-center">
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
                  <div class="absolute flex align-center items-center align-middle content-center" style="
                width: calc(100% - 2.5rem - 1rem);
                top: 50%;
                transform: translate(-50%, -50%);
              ">
                    <div class="w-full bg-green-500 rounded items-center align-middle align-center flex-1">
                      <div class="w-0 bg-green-500 py-1 rounded" style="width: 100%"></div>
                    </div>
                  </div>

                  <div class="w-10 h-10 mx-auto bg-green-500 rounded-full text-lg text-white flex items-center">
                    <span class="text-center text-white w-full">
                      <svg class="w-full fill-current" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24"
                        height="24">
                        <path class="heroicon-ui"
                          d="M19 10h2a1 1 0 0 1 0 2h-2v2a1 1 0 0 1-2 0v-2h-2a1 1 0 0 1 0-2h2V8a1 1 0 0 1 2 0v2zM9 12A5 5 0 1 1 9 2a5 5 0 0 1 0 10zm0-2a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm8 11a1 1 0 0 1-2 0v-2a3 3 0 0 0-3-3H7a3 3 0 0 0-3 3v2a1 1 0 0 1-2 0v-2a5 5 0 0 1 5-5h5a5 5 0 0 1 5 5v2z">
                        </path>
                      </svg>
                    </span>
                  </div>
                </div>
                <div class="text-xs text-center md:text-base">Payment</div>
              </div>
              <!-- Bước 3 -->
              <div class="w-1/6">
                <div class="relative mb-2">
                  <div class="absolute flex align-center items-center align-middle content-center" style="
                width: calc(100% - 2.5rem - 1rem);
                top: 50%;
                transform: translate(-50%, -50%);
              ">
                    <div class="w-full bg-green-500 rounded items-center align-middle align-center flex-1">
                      <div class="w-0 bg-green-300 py-1 rounded" style="width: 0%"></div>
                    </div>
                  </div>

                  <div
                    class="w-10 h-10 mx-auto bg-white border-2 border-gray-200 rounded-full text-lg text-white flex items-center">
                    <span class="text-center text-gray-600 w-full">
                      <svg class="w-full fill-current" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24"
                        height="24">
                        <path class="heroicon-ui"
                          d="M12 22a10 10 0 1 1 0-20 10 10 0 0 1 0 20zm0-2a8 8 0 1 0 0-16 8 8 0 0 0 0 16zm-2.3-8.7l1.3 1.29 3.3-3.3a1 1 0 0 1 1.4 1.42l-4 4a1 1 0 0 1-1.4 0l-2-2a1 1 0 0 1 1.4-1.42z">
                        </path>
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
          <form action="checkout" method="post" class="mx-auto bg-green-100 form-bg rounded-b-3xlf h-screen">
            <div
              class="mt-10 bg-gray-50 px-4 pt-8 lg:mt-0 w-1/2 mx-auto rounded-b-3xl border-2 border-black shadow-2xl">
              <div>
                <div class="text-center">
                  <p class="text-xl font-medium">Checkout Details</p>
                  <p class="text-gray-400">
                    Complete your order by providing your payment details.
                  </p>
                </div>
                <div>
                  <label for="email" class="mt-4 mb-2 block text-sm font-medium">Email</label>
                  <div class="relative">
                    <input type="text" id="email" name="email"
                      class="w-full rounded-md border border-gray-200 px-4 py-3 pl-11 text-sm shadow-sm outline-none focus:z-10 focus:border-blue-500 focus:ring-blue-500"
                      placeholder="your.email@gmail.com" required />
                    <div class="pointer-events-none absolute inset-y-0 left-0 inline-flex items-center px-3">
                      <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 text-gray-400" fill="none"
                        viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                        <path stroke-linecap="round" stroke-linejoin="round"
                          d="M16 12a4 4 0 10-8 0 4 4 0 008 0zm0 0v1.5a2.5 2.5 0 005 0V12a9 9 0 10-9 9m4.5-1.206a8.959 8.959 0 01-4.5 1.207" />
                      </svg>
                    </div>
                  </div>
                  <label for="card-holder" class="mt-4 mb-2 block text-sm font-medium">Full Name:
                  </label>
                  <div class="relative">
                    <input type="text" id="card-holder" name="fullname"
                      class="w-full rounded-md border border-gray-200 px-4 py-3 pl-11 text-sm uppercase shadow-sm outline-none focus:z-10 focus:border-blue-500 focus:ring-blue-500"
                      placeholder="Your full name here" required />
                    <div class="pointer-events-none absolute inset-y-0 left-0 inline-flex items-center px-3">
                      <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 text-gray-400" fill="none"
                        viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                        <path stroke-linecap="round" stroke-linejoin="round"
                          d="M15 9h3.75M15 12h3.75M15 15h3.75M4.5 19.5h15a2.25 2.25 0 002.25-2.25V6.75A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25v10.5A2.25 2.25 0 004.5 19.5zm6-10.125a1.875 1.875 0 11-3.75 0 1.875 1.875 0 013.75 0zm1.294 6.336a6.721 6.721 0 01-3.17.789 6.721 6.721 0 01-3.168-.789 3.376 3.376 0 016.338 0z" />
                      </svg>
                    </div>
                  </div>
                  <label for="phone" class="mt-4 mb-2 block text-sm font-medium">Phone:
                  </label>
                  <div class="flex">
                    <div class="relative w-7/12 flex-shrink-0">
                      <input type="phone" id="phone" name="phone"
                        class="w-full rounded-md border border-gray-200 px-2 py-3 pl-11 text-sm shadow-sm outline-none focus:z-10 focus:border-blue-500 focus:ring-blue-500"
                        placeholder="Your Phone Number" />
                      <div class="pointer-events-none absolute inset-y-0 left-0 inline-flex items-center px-3">
                        <!-- Thay thế mã SVG ở đây -->
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 text-gray-400" fill="none"
                          viewBox="0 0 24 24" stroke="currentColor">
                          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M12 1c-1.95 0-3.61.78-4.89 2.05C6.78 3.39 6 5.05 6 7h.01M6 7c0 2.21.9 4.21 2.36 5.65L10 14l2.65-2.65A7.96 7.96 0 0014 7h-.01M6 7v13a2 2 0 002 2h8a2 2 0 002-2V7m0-6h8a4 4 0 014 4v13a4 4 0 01-4 4H6a4 4 0 01-4-4V5a4 4 0 014-4z" />
                        </svg>
                      </div>
                    </div>
                    <input type="date" name="date1" id="date-input"
                      class="w-full rounded-md border border-gray-200 px-2 py-3 text-sm shadow-sm outline-none focus:z-10 focus:border-blue-500 focus:ring-blue-500"
                      placeholder="MM/YY" />
                    <script>
                      // Lấy ngày hiện tại
                      var currentDate = new Date();

                      // Format ngày hiện tại thành chuỗi "YYYY-MM-DD" để sử dụng trong thuộc tính min
                      var formattedDate = currentDate.toISOString().split("T")[0];

                      // Gán giá trị thuộc tính min cho trường nhập ngày
                      document
                        .getElementById("date-input")
                        .setAttribute("min", formattedDate);
                    </script>
                    <input type="text" name="promotion"
                      class="w-1/6 flex-shrink-0 rounded-md border border-gray-200 px-2 py-3 text-sm shadow-sm outline-none focus:z-10 focus:border-blue-500 focus:ring-blue-500"
                      placeholder="Promotion" />
                  </div>
                  <!-- Total -->
                  <div class="mt-6 border-t border-b py-2">
                    <div>
                      <p class="text-sm font-medium text-gray-900">Total Amount</p>
                      <p id="total-amount" class="text-2xl font-semibold text-gray-900">

                      </p>
                    </div>
                  </div>
                </div>
                <button
                  class="mt-4 mb-8 w-1/3 mx-auto px-6 py-3 flex items-center justify-center relative h-12 w-40 overflow-hidden bg-black text-white rounded-md shadow-2xl transition-all duration-200 before:absolute before:bottom-0 before:left-0 before:right-0 before:top-0 before:m-auto before:h-0 before:w-0 before:rounded-sm before:bg-green-500 before:duration-300 before:ease-out hover:text-white hover:shadow-bg-green-500 hover:before:h-40 hover:before:w-40 hover:before:opacity-80">
                  <input type="submit" value="FINISH" class="relative z-10 font-extralight" />
                </button>
              </div>
            </div>
          </form>
          <!-- end Main -->
          <!-- cart -->
        </body>

        </html>