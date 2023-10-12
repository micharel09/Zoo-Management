<%-- Document : Cart.jsp Created on : Oct 7, 2023, 4:30:39 PM Author : Quan --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@taglib prefix="c"
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
    <title>Choose ticket</title>
    <style>
      [x-cloak] {
        display: none;
      }
      .form-bg {
        background-image: url("img/checkoutbg.png"); /* Thay đổi đường dẫn hình ảnh của bạn */
        background-size: cover;
        background-position: center center;
        background-attachment: fixed; /* Để giữ ảnh nền tĩnh khi cuộn trang */
      }
    </style>
    <%@ include file="components/header.html"%> <%@ include
    file="components/breadcrumb.html" %>
  </head>
  <body>
    <div class="w-[1500] mx-auto bg-gray-50 h-screen .form-bg">
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
      <div class="flex flex-row justify-center space-x-8">
        <div class="relative m-3 flex flex-wrap mx-auto justify-center">
          <form name="f" action="" method="post">
            <hr />
            <div class="flex space-x-4">
              <!-- tickets select 1-->
              <article
                class="rounded-xl bg-white p-3 shadow-lg hover:shadow-xl hover:transform hover:scale-105 duration-300"
              >
                <c:forEach items="${requestScope.data}" var="p" begin="1">
                  <c:set var="id" value="${p.tid}" />
                  <div
                    class="relative flex items-end overflow-hidden rounded-xl"
                  >
                    <img
                      class="h-80 rounded-2xl w-full object-cover"
                      src="img/childticket.jpg"
                    />
                  </div>
                  <div class="mt-4 mb-2 flex justify-between items-center">
                    <div>
                      <p class="text-2xl font-semibold text-gray-900 mb-0 pl-2">
                        ${p.type}
                      </p>
                      <p class="text-md text-gray-800 mt-0 pl-2">
                        <fmt:formatNumber pattern="##.#" value="${(p.price)}" />
                      </p>
                    </div>
                    <!-- button select -->

                    <div class="flex items-center gap-4">
                      <!-- quantity -->
                      <div class="mx-auto ml-6">
                        <button
                          class="py-2 px-3 bg-transparent text-green-600 font-semibold border border-green-600 rounded-l-3xl hover:bg-green-600 hover:text-white hover:border-transparent transition ease-in duration-200 transform"
                          onclick="changeQuantityTicket1('${id}', -1)"
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
                          onchange="validateNumberTicket1(this)"
                        />
                        <button
                          class="py-2 px-3 bg-transparent text-green-600 font-semibold border border-green-600 rounded-r-3xl hover:bg-green-600 hover:text-white hover:border-transparent transition ease-in duration-200 transform"
                          onclick="changeQuantityTicket1('${id}', 1)"
                          type="button"
                        >
                          +
                        </button>
                      </div>

                      <!-- Thay đổi tên các hàm và thuộc tính cho Ticket 1 -->
                      <script>
                        var quantitiesTicket1 = {};

                        function validateNumberTicket1(input) {
                          var value = input.value;
                          var intValue = parseInt(value);
                          if (isNaN(intValue) || intValue < 0) {
                            input.value = 0;
                          }
                        }

                        function changeQuantityTicket1(id, delta) {
                          if (!quantitiesTicket1[id]) {
                            quantitiesTicket1[id] = 0;
                          }

                          var quantityInput = document.querySelector(
                            `[data-id="${id}"]`
                          );
                          var currentValue = parseInt(quantityInput.value);

                          quantitiesTicket1[id] = currentValue + delta;

                          if (quantitiesTicket1[id] >= 0) {
                            quantityInput.value = quantitiesTicket1[id];
                          }
                        }

                        function buyTicket1(id) {
                          var inputNum = document.querySelector(
                            'input[data-id="' + id + '"]'
                          );
                          var m = quantitiesTicket1[id];
                          document.f.action = "buy?id=" + id + "&num=" + m;
                          document.f.submit();
                        }
                      </script>

                      <!-- end quantity -->
                      <!-- buy ticket -->
                      <input
                        type="button"
                        class="py-2 px-4 bg-transparent text-green-600 font-semibold border border-green-600 rounded hover:bg-green-600 hover:text-white hover:border-transparent transition ease-in duration-200 transform hover:-translate-y-1 active:translate-y-0"
                        onclick="buy('${id}')"
                        value="Buy Ticket"
                      />
                      <!-- end buy -->
                    </div>
                  </div>
                </c:forEach>
              </article>

              <!-- tickets select 2-->
              <article
                class="rounded-xl bg-white p-3 shadow-lg hover:shadow-xl hover:transform hover:scale-105 duration-300"
              >
                <c:forEach items="${requestScope.data}" var="p" end="0">
                  <c:set var="id" value="${p.tid}" />
                  <div
                    class="relative flex items-end overflow-hidden rounded-xl"
                  >
                    <img
                      class="h-80 rounded-2xl w-full object-cover"
                      src="img/adultticket.jpg"
                    />
                  </div>
                  <div class="mt-4 mb-2 flex justify-between items-center">
                    <div>
                      <p class="text-2xl font-semibold text-gray-900 mb-0 pl-2">
                        ${p.type}
                      </p>
                      <p class="text-md text-gray-800 mt-0 pl-2">
                        <fmt:formatNumber pattern="##.#" value="${(p.price)}" />
                      </p>
                    </div>
                    <!-- button select -->
                    <div class="flex items-center gap-2">
                      <div class="mx-auto ml-1 mr-0">
                        <button
                          class="py-2 px-3 bg-transparent text-green-600 font-semibold border border-green-600 rounded-l-3xl hover:bg-green-600 hover:text-white hover:border-transparent transition ease-in duration-200 transform"
                          onclick="changeQuantityTicket2('${id}', -1)"
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
                          onchange="validateNumberTicket2(this)"
                        />
                        <button
                          class="py-2 px-3 bg-transparent text-green-600 font-semibold border border-green-600 rounded-r-3xl hover.bg-green-600 hover:text-white hover:border-transparent transition ease-in duration-200 transform"
                          onclick="changeQuantityTicket2('${id}', 1)"
                          type="button"
                        >
                          +
                        </button>
                      </div>
                      <script>
                        var quantitiesTicket2 = {};

                        function validateNumberTicket2(input) {
                          var value = input.value;
                          var intValue = parseInt(value);
                          if (isNaN(intValue) || intValue < 0) {
                            input.value = 0;
                          }
                        }

                        function changeQuantityTicket2(id, delta) {
                          if (!quantitiesTicket2[id]) {
                            quantitiesTicket2[id] = 0;
                          }

                          var quantityInput = document.querySelector(
                            `[data-id="${id}"]`
                          );
                          var currentValue = parseInt(quantityInput.value);

                          quantitiesTicket2[id] = currentValue + delta;

                          if (quantitiesTicket2[id] >= 0) {
                            quantityInput.value = quantitiesTicket2[id];
                          }
                        }

                        function buyTicket2(id) {
                          var inputNum = document.querySelector(
                            'input[data-id="' + id + '"]'
                          );
                          var m = quantitiesTicket2[id];
                          document.f.action = "buy?id=" + id + "&num=" + m;
                          document.f.submit();
                        }
                      </script>
                      <input
                        type="button"
                        class="py-2 px-4 bg-transparent text-green-600 font-semibold border border-green-600 rounded hover:bg-green-600 hover:text-white hover:border-transparent transition ease-in duration-200 transform hover:-translate-y-1 active:translate-y-0"
                        onclick="buy('${id}')"
                        value="Buy Ticket"
                      />
                    </div>
                    <!-- end button -->
                  </div>
                </c:forEach>
              </article>
              <!-- end ticket 2 -->
            </div>
          </form>
        </div>
      </div>
      <!-- end main -->

      <!-- View button -->
      <div class="mx-auto flex m-4 justify-center pb-4 mt-10">
        <a href="show">
          <button
            class="bg-neutral-200 rounded-md px-12 py-4 text-2xl border-none text-neutral-600 hover:text-white hover:shadow-[inset_16rem_0_0_0] hover:shadow-blue-500 duration-[400ms,700ms] transition-[color,box-shadow]"
          >
            View (${requestScope.size}) items
          </button>
        </a>
      </div>
      <!-- View button -->
      <!-- cart -->

      <!-- total amount -->
    </div>
  </body>
</html>
<script type="text/javascript">
  function buy(id) {
    var inputNum = document.querySelector('input[data-id="' + id + '"]');
    var m = inputNum.value;
    document.f.action = "buy?id=" + id + "&num=" + m;
    document.f.submit();
    s;
  }
</script>
