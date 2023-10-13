<%-- Document : update_anime Created on : Oct 6, 2023, 9:57:04 AM Author : ADMIN
--%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@page
contentType="text/html" pageEncoding="UTF-8"%>
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
<<<<<<< HEAD
    <title>Update Animal</title>
  </head>
  <body class="bg-green-300">
    <div class="flex justify-center items-center w-full h-full">
      <section class="p-10 mx-auto bg-white rounded-md shadow-md mt-20 w-1/2">
        <header class="border-b border-gray-100 px-10 flex items-center">
          <!-- main -->
          <!-- back button -->
          <div class="ml-0">
            <!-- Căn chỉnh vị trí sang trái -->
            <a
              href="animalcontroller"
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

          <div class="text-gray-800 mx-auto pr-20 pb-4">
            <h1 class="font-semibold text-5xl">Update Animal</h1>
          </div>
        </header>

        <div class="mx-auto w-full max-w-8xl">
          <form
            action="updateanimal"
            method="post"
            enctype="multipart/form-data"
          >
            <input type="hidden" name="animalid" value="${aa.animal_id}" />
            <!-- Submit -->
            <div class="flex justify-end">
              <button
                type="submit"
                class="px-10 py-3 leading-5 ml-auto relative overflow-hidden bg-black text-white rounded-md shadow-2xl transition-all duration-200 before:absolute before:bottom-0 before:left-0 before:right-0 before:top-0 before:m-auto before:h-0 before:w-0 before:rounded-sm before:bg-green-400 before:duration-300 before:ease-out hover:text-white hover:shadow-bg-green-500 hover:before:h-40 hover:before:w-40 hover:before:opacity-80"
              >
                <p class="relative z-10 font-extralight text-2xl">Save</p>
              </button>
            </div>
            <!-- end submit -->
            <!-- name -->
            <div class="mb-5">
              <label
                for="guest"
                class="mb-3 block text-2xl font-medium text-[#07074D]"
              >
                Name
              </label>

=======
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
    <title>Update Animal</title>
  </head>
  <body class="bg-green-500">
    <div class="flex justify-center items-center w-full h-full">
      <section class="p-10 mx-auto bg-white rounded-md shadow-md mt-20 w-1/2">
        <header class="border-b border-gray-100 px-10 flex items-center">
          <!-- main -->
          <!-- back button -->
          <div class="ml-0">
            <!-- Căn chỉnh vị trí sang trái -->
            <a
              href="animalcontroller"
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

          <div class="text-gray-800 mx-auto pr-20 pb-4">
            <h1 class="font-semibold text-5xl">Update Animal</h1>
          </div>
        </header>

        <div class="mx-auto w-full max-w-8xl">
          <form
            action="updateanimal"
            method="post"
            enctype="multipart/form-data"
          >
            <input type="hidden" name="animalid" value="${aa.animal_id}" />
            <!-- Submit -->
            <div class="flex justify-end">
              <button
                type="submit"
                class="px-10 py-3 leading-5 ml-auto relative overflow-hidden bg-black text-white rounded-md shadow-2xl transition-all duration-200 before:absolute before:bottom-0 before:left-0 before:right-0 before:top-0 before:m-auto before:h-0 before:w-0 before:rounded-sm before:bg-green-400 before:duration-300 before:ease-out hover:text-white hover:shadow-bg-green-500 hover:before:h-40 hover:before:w-40 hover:before:opacity-80"
              >
                <p class="relative z-10 font-extralight text-2xl">Save</p>
              </button>
            </div>
            <!-- end submit -->
            <!-- name -->
            <div class="mb-5">
              <label
                for="guest"
                class="mb-3 block text-2xl font-medium text-[#07074D]"
              >
                Name
              </label>

>>>>>>> f561f539f21eda98d384ea3c955c05407fa5d35a
              <input
                class="w-full appearance-none rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-2xl font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
                type="text"
                name="name"
                value="${aa.name}"
              />
            </div>
            <!-- end name -->
            <div class="-mx-3 flex flex-wrap">
              <!-- date -->
              <div class="w-full px-3 sm:w-1/2">
                <div class="mb-5">
                  <label
                    for="date"
                    class="mb-3 block text-2xl font-medium text-[#07074D]"
                  >
                    Date
                  </label>
                  <input
                    class="w-full rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-2xl font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
                    type="date"
                    name="dayin"
                    value="${aa.dayin}"
                  />
                </div>
              </div>
              <!-- end date -->
              <!-- select -->
              <div class="w-full px-3 sm:w-1/2">
                <div class="mb-5">
                  <label
                    for="time"
                    class="mb-3 block text-2xl font-medium text-[#07074D]"
                  >
                    Cage_ID
                  </label>
                  <select
                    class="w-full rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-2xl font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
                    name="animalcageid"
                  >
                    <c:forEach items="${cage}" var="c">
                      <option>${c.animalcage_id}</option>
                    </c:forEach>
                  </select>
                </div>
              </div>
              <!-- end select -->
            </div>
            <!-- old id -->
            <div class="flex justify-center">
              <p class="text-2xl font-medium text-[#07074D] pr-2 mb-4">
                (Animal_Cage_ID Old:
              </p>
              <div class="text-2xl">
                <span style="color: red">${aa.animalcage_id} </span>)
              </div>
            </div>
            <!-- end old id -->
            <!-- photo -->
            <div
              class="container mx-auto h-full flex flex-col justify-center items-center"
            >
              <div id="images-container">
                <c:if test="${aa.photo != null}">
                  <img
                    src="./animal_picture/${aa.photo}"
                    width="80"
                    height="70"
                    id="current-photo"
                    class="flex justify-center mx-auto h-1/3 w-1/3 mb-2"
                  />
                </c:if>
              </div>

              <div class="flex w-full justify-center">
                <div
                  id="single-upload-button"
                  class="cursor-pointer bg-neutral-200 rounded-md px-12 py-4 text-2xl border-none text-neutral-600 hover:text-white hover:shadow-[inset_16rem_0_0_0] hover:shadow-blue-500 duration-[400ms,700ms] transition-[color,box-shadow]"
                >
                  Upload Photo
                </div>
              </div>
              <input
                type="file"
                class="hidden"
                name="photo"
                id="photoInput"
                placeholder="Enter photo"
              />
            </div>
            <!-- end photo -->

            <!-- script photo -->
            <script>
              const uploadButton = document.getElementById(
                "single-upload-button"
              );
              const photoInput = document.getElementById("photoInput");
              const currentPhoto = document.getElementById("current-photo");

              uploadButton.addEventListener("click", function () {
                photoInput.click(); // Kích hoạt sự kiện click của input file
              });

              photoInput.addEventListener("change", function (event) {
                // Xử lý khi người dùng chọn một tập tin ảnh
                if (photoInput.files.length > 0) {
                  const file = photoInput.files[0];
                  const reader = new FileReader();

                  reader.onload = function () {
                    // Xóa hình ảnh hiện tại
                    if (currentPhoto) {
                      currentPhoto.parentElement.removeChild(currentPhoto);
                    }

                    // Tạo hình ảnh mới và thêm vào container
                    const newImage = new Image();
                    newImage.src = reader.result;
                    newImage.width = 800;
                    newImage.height = 500;
                    newImage.id = "current-photo";
                    newImage.classList.add("rounded", "mb-2");
                    document
                      .getElementById("images-container")
                      .appendChild(newImage);
                  };

                  reader.readAsDataURL(file);
                }
              });
            </script>
            <!-- end script -->
          </form>
        </div>
      </section>
    </div>
  </body>
</html>
