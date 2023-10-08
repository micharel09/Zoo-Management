<%-- Document : Cart Created on : Sep 27, 2023, 10:16:31 AM Author : Quan --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %> <%@taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    </style>
    <%@ include file="components/header.html"%> <%@ include
    file="components/breadcrumb.html" %>
  </head>

  <body>
    <div class="w-[1500] mx-auto bg-green-100">
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
      <!-- tickets select-->

      <!-- end ticket select -->

      <!-- cart -->
      <section class="bg-gray-100 text-gray-600 antialiased" x-data="app">
        <div class="flex flex-col">
          <!-- Table -->
          <div
            class="w-[1500] border border-gray-200 rounded-b- bg-white shadow-sm"
          >
            <header
              class="border-b border-gray-100 px-5 py-4 flex justify-center"
            >
              <div class="font-semibold text-3xl text-gray-800">
                Manage Carts
              </div>
            </header>
            <div class="overflow-x-auto p-3">
              <table class="w-full table-auto">
                <thead
                  class="bg-gray-50 text-xs font-semibold uppercase text-gray-400"
                >
                  <tr>
                    <th></th>
                    <th class="p-2">
                      <div class="text-left font-semibold">Product Name</div>
                    </th>

                    <th class="p-2">
                      <div class="text-left font-semibold">Quantity</div>
                    </th>
                    <th class="p-2">
                      <div class="text-left font-semibold">Đơn giá</div>
                    </th>
                    <th class="p-2">
                      <div class="text-left font-semibold">Total</div>
                    </th>
                    <th class="p-2">
                      <div class="text-center font-semibold">Action</div>
                    </th>
                  </tr>
                </thead>

                <tbody class="divide-y divide-gray-100 text-sm">
                  <!-- record 1 -->

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
                        <div class="text-left"></div>
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
                        <div class="flex justify-center">
                          <form action="process" method="post">
                            <input
                              type="hidden"
                              name="id"
                              value="${i.product.tid}"
                            />
                            <input type="submit" value="delete" />
                          </form>
                        </div>
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

            <!-- Confirm -->
            <div
              class="flex justify-end pt-4 mb-4 mr-4 border-t border-gray-100"
            >
              <button
                class="text-base leading-none py-5 px-14 rounded-lg bg-gray-800 border-gray-800 border focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-800 text-white dark:hover:bg-gray-700"
              >
                <a href="shop">Back</a>
              </button>
            </div>
            <form></form>
            <div
              class="flex justify-end pt-4 mb-4 mr-4 border-t border-gray-100"
            >
              <form action="./checkout.jsp" method="post">
                <input
                  type="submit"
                  value="checkout"
                  class="text-base leading-none py-5 px-14 rounded-lg bg-gray-800 border-gray-800 border focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-800 text-white dark:hover:bg-gray-700"
                />
              </form>
            </div>
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
