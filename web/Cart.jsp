<%-- Document : Cart.jsp Created on : Oct 7, 2023, 4:30:39 PM Author : Quan --%>
<%@page contentType="text/html" pageEncoding="UTF-8" %> <%@taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %> <%@taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <link rel="stylesheet" href="css/cart.css" />
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
      .custom-bg {
        /* Đường dẫn của hình ảnh nền */
        background-image: url("img/checkoutbg.png");
        background-size: cover;
        background-repeat: no-repeat;
        background-color: green;
      }
    </style>
    <!-- end loading -->
    <title>Choose ticket</title>

    <%@ include file="components/header.html" %> <%@ include
    file="components/breadcrumb.html" %>
  </head>

  <body class="h-screen">
    <div class="w-[1500] mx-auto bg-gray-50 h-screen custom-bg">
      <!-- Progress Steps -->
      <div class="w-full">
        <div class="flex justify-center py-4 bg-white rounded-b-lg">
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
                  class="w-full bg-gray-200 rounded items-center align-middle align-center flex-1"
                >
                  <div
                    class="w-0 bg-gray-200 py-1 rounded"
                    style="width: 100%"
                  ></div>
                </div>
              </div>

              <div
                class="w-10 h-10 mx-auto bg-gray-300 rounded-full text-lg text-white flex items-center"
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
                  class="w-full bg-gray-200 rounded items-center align-middle align-center flex-1"
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
      <!-- main -->
      <div>
        <div class="flex flex-row justify-center space-x-8">
          <div class="relative flex flex-wrap mx-auto justify-center">
            <form name="f" action="" method="post">
              <div class="flex space-x-4">
                <c:forEach items="${requestScope.data}" var="p">
                  <c:set var="id" value="${p.tid}" />
                  <c:set var="ticketType" value="${p.type}" />
                  <!-- Thêm một thuộc tính ticketType -->

                  <article
                    class="rounded-xl bg-white p-3 mt-10 ml-40 shadow-lg hover:shadow-xl hover:transform hover:scale-105 duration-300"
                  >
                    <div class="ticket-wrapper">
                      <div
                        class="relative flex items-end overflow-hidden rounded-xl"
                      >
                        <img
                          class="h-80 rounded-2xl w-full object-cover"
                          src="${ticketType == 'Child' ? 'img/childticket.jpg' : 'img/adultticket.jpg'}"
                        />
                      </div>
                      <div class="mt-4 mb-2 flex justify-between items-center">
                        <div>
                          <p
                            class="text-2xl font-semibold text-gray-900 mb-0 pl-2"
                          >
                            ${p.type}
                          </p>
                          <p class="text-md text-gray-800 mt-0 pl-2">
                            <fmt:formatNumber
                              pattern="##.#"
                              value="${(p.price)}"
                            />
                          </p>
                        </div>
                        <!-- button select -->
                        <div class="flex items-center gap-4">
                          <!-- quantity -->
                          <div class="mx-auto ml-6">
                            <!-- - -->
                            <button
                              class="py-2 px-3 bg-transparent text-green-600 font-semibold border border-green-600 rounded-l-3xl hover:bg-green-600 hover:text-white hover:border-transparent transition ease-in duration-200 transform"
                              onclick="changeQuantity('${id}', -1)"
                              type="button"
                            >
                              -
                            </button>
                            <input
                              class="text-center w-10"
                              type="text"
                              name="num"
                              data-id="${id}"
                              value="0"
                              onchange="validateNumber(this)"
                            />
                            <!-- + -->
                            <button
                              class="py-2 px-3 bg-transparent text-green-600 font-semibold border border-green-600 rounded-r-3xl hover:bg-green-600 hover:text-white hover:border-transparent transition ease-in duration-200 transform"
                              onclick="changeQuantity('${id}', 1)"
                              type="button"
                            >
                              +
                            </button>
                          </div>
                          <script src="js/cart.js"></script>
                          <!-- end quantity -->
                          <!-- buy ticket -->
                          <input
                            id="addToCartButton"
                            type="button"
                            class="py-2 px-4 bg-transparent text-green-600 font-semibold border border-green-600 rounded hover:bg-green-600 hover:text-white hover:border-transparent transition ease-in duration-200 transform hover:-translate-y-1 active:translate-y-0"
                            onclick="buyTicket('${id}'), showToast"
                            value="Add To Cart"
                          />
                          <!-- end buy -->
                        </div>
                      </div>
                    </div>
                  </article>
                </c:forEach>
              </div>
            </form>
          </div>
          <!-- View -->
          <form action="show" method="post">
            <!-- Thêm trường nhập date1 vào biểu mẫu -->
            <div class="relative ml-6 mb-6 w-full group">
              <input
                type="date"
                name="date1"
                id="date-input"
                class="flex-shrink-0 block text-white py-2.5 px-0 text-xl bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-green-500 peer"
                placeholder="MM/YY"
                required
              />
            </div>
            <script>
              var currentDate = new Date();
              var formattedDate = currentDate.toISOString().split("T")[0];
              document
                .getElementById("date-input")
                .setAttribute("min", formattedDate);
            </script>

            <div class="flex m-6 pr-10">
              <a href="show">
                <button
                  class="bg-neutral-200 rounded-md px-5 py-2 text-xl text-neutral-600 hover:border-green-500 hover:text-white hover:shadow-[inset_16rem_0_0_0] hover:shadow-green-500 duration-[400ms,700ms] transition-[color,box-shadow]"
                >
                  View Cart
                </button>
              </a>
            </div>
          </form>

          <!-- end View -->
        </div>
        <!-- end main -->
      </div>
    </div>
  </body>
</html>
