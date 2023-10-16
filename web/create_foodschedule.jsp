<!-- prettier-ignore -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />

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
    <script>
      function convertTimeFormat(input) {
        var timeParts = input.split(":");
        var hours = parseInt(timeParts[0]);
        var minutes = timeParts[1];
        var formattedTime = hours + ":" + minutes;
        return formattedTime;
      }

      function update24HourTime() {
        var timeInput = document.getElementById("timeInput");
        var formattedTime = convertTimeFormat(timeInput.value);
        timeInput.value = formattedTime;
      }
      <title>Create Food Schedule</title>;
    </script>
  </head>
  <body class="bg-green-500">
    <div class="flex justify-center items-center w-full h-full">
      <!-- MAIN CONTENT -->
      <section class="p-10 pt-4 bg-white rounded-md shadow-md mt-20 w-1/2">
        <!-- back button -->
        <div class="flex ml-0">
          <a
            href="foodschedulecontroller"
            class="group flex items-center bg-transparent text-2xl font-thin tracking-widest text-white back-button"
          >
            <svg
              viewBox="0 0 46 16"
              height="15"
              width="35"
              xmlns="http://www.w3.org/2000/svg"
              id="arrow-horizontal"
              class="fill-slate-700 transition-all duration-300 ease-out group-hover:-translate-x-full group-hover:scale-x-105 group-hover:fill-white"
            >
              <path
                transform="scale(-1, 1) translate(-30)"
                d="M8,0,6.545,1.455l5.506,5.506H-30V9.039H12.052L6.545,14.545,8,16l8-8Z"
                data-name="Path 10"
                id="Path_10"
              ></path>
            </svg>
            <span
              class="ml-2 text-black after:transition-transform after:duration-500 after:ease-out after:absolute after:bottom-0 after:left-0 after:block after:h-[2px] after:w-full after:origin-bottom-right after:scale-x-0 after:bg-blue-500 after:content-[''] after:group-hover:origin-bottom-left after:group-hover:scale-x-100"
              >Back</span
            >
          </a>
        </div>
        <!-- end back -->

        <header class="border-b border-gray-100 px-10 flex items-center">
          <div class="text-gray-800 mx-auto pb-4">
            <h1 class="font-semibold text-5xl">Add Food Schedule</h1>
          </div>
        </header>

        <!-- main -->
        <div class="mx-auto w-full max-w-8xl">
          <form action="createfoodschedule" method="post">
            <!-- Submit -->
            <div class="flex justify-end">
              <button
                type="submit"
                class="px-8 py-3 leading-5 ml-auto relative overflow-hidden bg-gray-300 text-white rounded-md shadow-2xl transition-all duration-200 before:absolute before:bottom-0 before:left-0 before:right-0 before:top-0 before:m-auto before:h-0 before:w-0 before:rounded-sm before:bg-green-600 before:duration-300 before:ease-out hover:text-white hover:shadow-bg-green-500 hover:before:h-40 hover:before:w-40 hover:before:opacity-80"
              >
                <p class="relative z-10 font-extralight text-2xl">Save</p>
              </button>
            </div>
            <!-- end submit -->
            <label for="scheduleid">Schedule ID:</label>
            <input type="hidden" id="scheduleid" name="scheduleid" required />

            <!-- Div 1 -->

            <div class="-mx-3 flex flex-wrap">
              <!-- time -->
              <div class="w-full px-3 sm:w-1/2">
                <label
                  for="time"
                  class="mb-3 block text-2xl font-medium text-[#07074D]"
                  >Time:</label
                >
                <input
                  type="time"
                  id="timeInput"
                  name="time"
                  required
                  class="w-full rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-2xl font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
                />
              </div>
              <!-- end time -->
              <!-- AnimalCageiD -->
              <div class="w-full px-3 sm:w-1/2">
                <div class="mb-5">
                  <label
                    for="employee_id"
                    class="mb-3 block text-2xl font-medium text-[#07074D]"
                    >AnimalCage_ID</label
                  >
                  <select
                    name="animalcageid"
                    class="w-full rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-2xl font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
                  >
                    <c:forEach var="cage" items="${animalcage}">
                      <option>${cage.animalcage_id}</option>
                    </c:forEach>
                  </select>
                </div>
              </div>
              <!-- end animalcage id -->
            </div>
            <!-- end div 1 -->
            <!-- div 2 -->
            <div class="-mx-3 flex flex-wrap">
              <!-- food id -->
              <div class="w-full px-3 sm:w-1/2">
                <label
                  for="area_id"
                  class="mb-3 block text-2xl font-medium text-[#07074D]"
                  >Food ID</label
                >
                <select
                  class="w-full rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-2xl font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
                  name="foodid"
                >
                  <c:forEach var="f" items="${food}">
                    <option>${f.food_id}</option>
                  </c:forEach>
                </select>
              </div>
              <!-- end food id -->
              <!-- date -->
              <div class="w-full px-3 sm:w-1/2">
                <label
                  for="area_id"
                  class="mb-3 block text-2xl font-medium text-[#07074D]"
                  >Date</label
                >
                <input
                  type="date"
                  id="date"
                  name="date"
                  class="w-full rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-2xl font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
                  required
                />
              </div>
              <!-- end date -->
            </div>
            <!-- end div 2 -->
          </form>
        </div>
      </section>
    </div>
  </body>
</html>
