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
    <title>Choose ticket</title>
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
      .custom-bg {
        /* Đường dẫn của hình ảnh nền */
        background-image: url("img/checkoutbg.png");
        background-size: cover;
        background-repeat: no-repeat;
        background-color: green;
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

  <body>
    <div class="w-[1500] h-screen mx-auto bg-green-100 custom-bg">
      <!-- Progress Steps -->
      <div class="w-full">
        <div class="flex justify-center py-4 bg-gray-50 rounded-b-lg">
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

      <!-- manage cart -->
      <section class="w-2/3 text-gray-600 antialiased mx-auto" x-data="app">
        <div class="flex flex-col">
          <!-- Table -->
          <div
            class="border border-gray-200 rounded-md bg-white shadow-sm mt-14"
          >
            <header
              class="border-b border-gray-100 px-10 py-4 flex items-center"
            >
              <!-- back button -->
              <div>
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
              <div class="font-semibold text-4xl text-gray-800 mx-auto pr-20">
                <h1>Manage Carts</h1>
              </div>
            </header>

            <div class="overflow-x-auto p-3">
              <table class="w-full table-auto">
                <thead
                  class="bg-gray-50 text-xl font-semibold uppercase text-gray-400"
                >
                  <tr>
                    <th class="p-2">
                      <div class="text-left font-semibold">Product Name</div>
                    </th>

                    <th class="p-2">
                      <div class="text-left font-semibold">Quantity</div>
                    </th>
                    <th class="p-2">
                      <div class="text-left font-semibold">Sub Total</div>
                    </th>
                    <th class="p-2">
                      <div class="text-left font-semibold">Total</div>
                    </th>
                    <th class="p-2">
                      <div class="text-center font-semibold">Action</div>
                    </th>
                  </tr>
                </thead>

                <tbody class="divide-y divide-gray-100 text-xl">
                  <c:set var="o" value="${requestScope.cart}" />
                  <c:set var="tt" value="0" />
                  <c:forEach items="${o.items}" var="i">
                    <c:set var="tt" value="${tt+1}" />
                    <tr>
                      <td class="p-2">
                        <div>
                          <div class="font-medium text-gray-800">
                            ${i.product.type}
                          </div>
                        </div>
                      </td>
                      <td class="p-2">
                        <div class="text-left">
                          <button>
                            <a href="process?num=-1&id=${i.product.tid}">-</a>
                          </button>
                          ${i.quantity}
                          <button>
                            <a href="process?num=1&id=${i.product.tid}">+</a>
                          </button>
                        </div>
                      </td>
                      <td class="p-2">
                        <div class="text-left font-medium text-green-500">
                          $<fmt:formatNumber
                            pattern="##.#"
                            value="${i.price}"
                          />
                        </div>
                      </td>
                      <td class="p-2">
                        <div class="text-left font-medium text-green-500">
                          $<fmt:formatNumber
                            pattern="##.#"
                            value="${(i.price*i.quantity)}"
                          />
                        </div>
                      </td>
                      <td class="p-2">
                        <div class="flex justify-center items-center">
                          <form action="process" method="post">
                            <input
                              type="hidden"
                              name="id"
                              value="${i.product.tid}"
                            />
                            <button
                              class="flex p-3 bg-red-600 rounded-xl hover:rounded-3xl hover:bg-red-300 transition-all duration-300 text-white"
                              onclick="return confirmDelete();"
                            >
                              <i
                                fill="none"
                                viewBox="0 0 24 24"
                                stroke="currentColor"
                                stroke-width="2"
                                class="fas fa-trash-alt"
                              ></i>
                            </button>
                          </form>
                        </div>

                        <script>
                          function confirmDelete() {
                            var result = confirm("Do you want to delete this?");
                            return result;
                          }
                        </script>
                      </td>
                    </tr>
                  </c:forEach>
                </tbody>
              </table>
            </div>

            <!-- total amount -->
            <div
              class="flex justify-end space-x-4 border-t border-gray-100 px-5 pt-4 pb-2 text-2xl font-bold"
            >
              <div>Total</div>
              <div class="text-blue-600">$ ${o.totalMoney}</div>
            </div>
            <!-- end total -->

            <!-- Confirm -->
            <div
              class="flex justify-center pt-4 mb-4 mr-4 border-t border-gray-100"
            >
              <form action="./checkout.jsp" method="post">
                <button
                  class="bg-transparent rounded-md px-12 py-4 text-2xl border-black text-black border-2 hover:text-white hover:shadow-[inset_16rem_0_0_0] hover:shadow-green-500 duration-[200ms,400ms] transition-[color,box-shadow]"
                >
                  <input type="submit" value="Checkout" />
                </button>
              </form>
            </div>
            <!-- end confim -->
            <div class="flex justify-end">
              <!-- send this data to backend (note: use class 'hidden' to hide this input) -->
              <input
                type="hidden"
                class="border border-black bg-gray-50"
                x-model="selected"
              />
            </div>
          </div>
        </div>
      </section>
    </div>
  </body>
</html>
