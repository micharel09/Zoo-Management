<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <title>FeedBack</title>
  </head>
  <style>
    .role-id {
      color: green; /* Default text color */
    }

    .role-id:contains("REJECTED") {
      color: red;
    }
  </style>
  <!-- header -->
  <!-- prettier-ignore -->
  <%@ include file="components/headertrainer.jsp" %>
  <!-- end header -->

  <body class="w-screen overflow-x-hidden mx-auto">
    <!-- side bar -->
    <!-- prettier-ignore -->
    <%@ include file="components/sidebartrainer.jsp" %>

    <!-- end side bar -->
    <!-- component -->
    <main class="antialiased font-sans bg-white h-screen">
      <div class="flex justify-center pb-2 pt-5 border-b boredr-gray-300">
        <h3 class="text-5xl font-medium text-gray-700">Animal Report</h3>
      </div>
      <div class="container mx-auto px-4 sm:px-8">
        <div class="py-8 ml-28">
          <!-- search -->
          <div class="my-2 flex">
            <form action="ListTrainerFeedback" method="post">
              <div class="flex">
                <div class="relative">
                  
                </div>

                <div class="block relative">
                  <span
                    class="h-full absolute inset-y-0 left-0 flex items-center pl-2"
                  >
                    
                  </span>
                 
                </div>
              </div>
            </form>
            <script>
              document.addEventListener("DOMContentLoaded", function () {
                const selectElement = document.querySelector(
                  "select[name='status']"
                );

                // Kiểm tra xem đã lưu giá trị vào localStorage chưa
                const storedValue = localStorage.getItem("selectedStatus");
                if (storedValue) {
                  selectElement.value = storedValue;
                }

                // Đặt sự kiện cho việc thay đổi giá trị trường select
                selectElement.addEventListener("change", function () {
                  const selectedValue = selectElement.value;
                  // Lưu giá trị vào localStorage
                  localStorage.setItem("selectedStatus", selectedValue);
                });

                // Đặt sự kiện cho việc gửi biểu mẫu
                document
                  .querySelector("form")
                  .addEventListener("submit", function (event) {
                    const selectedValue = selectElement.value;
                    // Lưu giá trị vào localStorage
                    localStorage.setItem("selectedStatus", selectedValue);
                  });
              });
            </script>
            
          </div>

          <div
            class="-mx-4 sm:-mx-8 px-20 sm:px-4 overflow-x-hidden overflow-y-hidden"
          >
            <!-- table -->

            <table class="min-w-full border-collapse border border-green-500">
              <thead class="bg-neutral-100">
                <tr class="bg-green-500 text-white">
                  <th
                    class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50 border-r"
                  >
                    Tiltle
                  </th>
                  <th
                    class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50 border-r"
                  >
                    Animal_ID
                  </th>
                  <th
                    class="break-all px-6 py-3 text-xs font-medium leading-4 text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50 border-r"
                  >
                    Purpose
                  </th>
                  <th
                    class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50 border-r"
                  >
                    Date
                  </th>
                 

                  
                </tr>
              </thead>
              <c:forEach var="f" items="${anifeedback}">
                <tbody
                  class="bg-white cursor-pointer hover:shadow-xl hover:transform hover:scale-105 hover:rounded-2xl duration-300 hover:bg-gray-100 hover:bg-gray-100 hover:border-gray-100"
                >
                  <tr>
                    <td
                      class="break-words text-xs px-6 py-4 border-b border-gray-200 border-r"
                    >
                      ${f.title}
                    </td>
                    <td
                      class="break-words text-xs px-6 py-4 border-b border-gray-200 border-r"
                    >
                      ${f.animal_id}
                    </td>
                    <td
                      class="break-words text-xs px-6 py-4 border-b border-gray-200 border-r"
                    >
                      ${f.purpose}
                    </td>
                    <td
                      class="break-all px-6 py-4 text-sm leading-5 text-gray-500 whitespace-no-wrap border-b border-gray-200 border-r"
                    >
                      ${f.date}
                    </td>
                    
                    </td>
                  </tr>
                </tbody>
              </c:forEach>
            </table>
            <!-- component -->

            <div
              class="grid min-h-[140px] w-full place-items-center overflow-x-scroll rounded-lg p-6 lg:overflow-visible"
            >
              <nav>
                <ul class="flex">
                  <c:forEach begin="1" end="${endP}" var="i">
                    <li>
                      <a
                        class="mx-1 flex h-9 w-9 items-center justify-center rounded-full border border-blue-gray-100 bg-transparent p-0 text-sm text-blue-gray-500 transition duration-150 ease-in-out hover:bg-light-300"
                        href="ListTrainerFeedback?index=${i}"
                        aria-label="Previous"
                      >
                        ${i}
                      </a>
                    </li>
                  </c:forEach>
                </ul>
              </nav>
            </div>
          </div>
        </div>
      </div>

      <script>
        $(document).ready(function () {
          $('.role-id:contains("REJECTED")').css("color", "red");
        });
      </script>
    </main>
  </body>
</html>
