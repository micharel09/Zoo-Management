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
      href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css"
      rel="stylesheet"
    />
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
    <%@ include file="header.html" %> <%@ include file="breadcrumb.html" %>
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
            <div class="flex">
              <!-- tickets select 1-->
              <c:forEach items="${requestScope.data}" var="p" begin="1">
                <c:set var="id" value="${p.tid}" />
                <div
                  class="relative max-w-sm min-w-[340px] bg-white shadow-md rounded-3xl p-2 mx-1 my-3 cursor-pointer bg-green-300"
                >
                  <div class="overflow-x-hidden rounded-2xl relative">
                    <img
                      class="h-40 rounded-2xl w-full object-cover"
                      src="img/childticket.jpg"
                    />
                  </div>
                  <div class="mt-4 pl-2 mb-2 flex justify-between">
                    <div>
                      <p class="text-lg font-semibold text-gray-900 mb-0">
                        ${p.type}
                      </p>
                      <p class="text-md text-gray-800 mt-0">
                        <fmt:formatNumber pattern="##.#" value="${(p.price)}" />
                      </p>
                    </div>
                    <!-- button select-->
                    <div class="pt-2">
                      <div class="flex items-center gap-1">
                        <input
                          style=""
                          type="number"
                          name="num"
                          data-id="${id}"
                          value="1"
                        />

                        <input
                          type="button"
                          class="inline-block px-6 py-2 pt-2 border-2 border-blue-600 text-blue-600 font-medium text-xs leading-tight uppercase rounded-full hover:bg-black hover:bg-opacity-5 focus:outline-none focus:ring-0 transition duration-150 ease-in-out"
                          onclick="buy('${id}')"
                          value="Buy item"
                        />
                      </div>
                    </div>
                  </div>
                </div>
              </c:forEach>

              <!-- tickets select 2-->
              <c:forEach items="${requestScope.data}" var="p" end="0">
                <c:set var="id" value="${p.tid}" />
                <div
                  class="relative max-w-sm min-w-[340px] bg-white shadow-md rounded-3xl p-2 mx-1 my-3 cursor-pointer bg-green-300"
                >
                  <div class="overflow-x-hidden rounded-2xl relative">
                    <img
                      class="h-40 rounded-2xl w-full object-cover w"
                      src="img/adultticket.jpg"
                    />
                  </div>
                  <div class="mt-4 pl-2 mb-2 flex justify-between">
                    <div>
                      <p class="text-lg font-semibold text-gray-900 mb-0">
                        ${p.type}
                      </p>
                      <p class="text-md text-gray-800 mt-0">
                        <fmt:formatNumber pattern="##.#" value="${(p.price)}" />
                      </p>
                    </div>
                    <!-- button select-->
                    <div class="pt-2">
                      <div class="flex items-center gap-1">
                        <input
                          style="text-align: center"
                          type="number"
                          name="num"
                          data-id="${id}"
                          value="1"
                        />

                        <input
                          type="button"
                          class="inline-block px-6 py-2 pt-2 border-2 border-blue-600 text-blue-600 font-medium text-xs leading-tight uppercase rounded-full hover:bg-black hover:bg-opacity-5 focus:outline-none focus:ring-0 transition duration-150 ease-in-out"
                          onclick="buy('${id}')"
                          value="Buy item"
                        />
                      </div>
                    </div>
                  </div>
                </div>
              </c:forEach>
              <!-- end ticket 2 -->
            </div>
          </form>
        </div>
      </div>
      <!-- end ticket select -->

      <!-- View button -->
      <a href="show">View(${requestScope.size}) items</a>
      <!-- View button -->

      <!-- images preview -->
      <div class="mx-auto container px-6 xl:px-0 py-12">
        <div class="flex flex-col">
          <div class="flex flex-col justify-center">
            <div class="relative">
              <img
                class="hidden sm:block w-full rounded-t-full"
                src="img/ppenal3.jpg"
                alt="sofa"
              />
              <img
                class="sm:hidden w-full"
                src="https://i.ibb.co/B6qwqPT/jason-wang-Nx-Awry-Abt-Iw-unsplash-1.png"
                alt="sofa"
              />
            </div>
          </div>
          <!-- penal left -->
          <div class="mt-10 grid lg:grid-cols-2 gap-x-8 gap-y-8 items-center">
            <div
              class="group group-hover:bg-opacity-60 transition duration-500 relative bg-gray-50 dark:bg-gray-800 dark:hover:bg-gray-700 flex justify-center items-center"
            >
              <img
                class="group-hover:opacity-60 transition duration-500 w-full h-80 object-cover"
                src="img/penal.png"
                alt="sofa-2"
              />
            </div>
            <!-- penal right -->
            <div
              class="group group-hover:bg-opacity-60 transition duration-500 relative bg-gray-50 dark:bg-gray-800 dark:hover:bg-gray-700 flex justify-center items-center"
            >
              <img
                class="group-hover:opacity-60 transition duration-500 w-full h-80 object-cover"
                src="img/97.jpg"
                alt="sofa-2"
              />
            </div>
          </div>
        </div>
      </div>
      <!-- end preview -->
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
  }
</script>
