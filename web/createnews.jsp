<%-- Document : update_anime Created on : Oct 6, 2023, 9:57:04 AM Author : ADMIN
--%> <%@page contentType="text/html" pageEncoding="UTF-8"%> <%@ taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <script
      defer
      src="https://cdn.jsdelivr.net/npm/alpinejs@3.13.1/dist/cdn.min.js"
    ></script>

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
    <!-- modal  -->
    <style>
      .animated {
        -webkit-animation-duration: 1s;
        animation-duration: 1s;
        -webkit-animation-fill-mode: both;
        animation-fill-mode: both;
      }

      .animated.faster {
        -webkit-animation-duration: 500ms;
        animation-duration: 500ms;
      }

      .fadeIn {
        -webkit-animation-name: fadeIn;
        animation-name: fadeIn;
      }

      .fadeOut {
        -webkit-animation-name: fadeOut;
        animation-name: fadeOut;
      }

      @keyframes fadeIn {
        from {
          opacity: 0;
        }

        to {
          opacity: 1;
        }
      }

      @keyframes fadeOut {
        from {
          opacity: 1;
        }

        to {
          opacity: 0;
        }
      }
    </style>
    <!-- end loading -->
    <title>Create News</title>
  </head>
  <body class="bg-green-500">
    <div class="flex justify-center items-center w-full h-full">
      <section class="p-10 mx-auto bg-white rounded-md shadow-md mt-20 w-1/2">
        <!-- MAIN CONTENT -->
        <header class="border-b border-gray-100 px-10 flex items-center">
          <!-- back button -->
          <div class="ml-0">
            <a
              href="NewsControl"
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
            <h1 class="font-semibold text-5xl">Create Content</h1>
          </div>
        </header>

        <div class="mx-auto w-full max-w-8xl">
          <form action="createnews" method="POST" enctype="multipart/form-data">
            <input type="hidden" name="animalid" />
            <!-- Submit -->
            <div class="flex justify-end">
              <button
                type="submit"
                class="border hover:border-green-400 border-black px-5 py-2 leading-5 relative overflow-hidden text-black rounded-md shadow-2xl transition-all duration-200 before:absolute before:bottom-0 before:left-0 before:right-0 before:top-0 before:m-auto before:h-0 before:w-0 before:rounded-sm before:bg-green-600 before:duration-300 before:ease-out hover:text-white hover:shadow-bg-green-500 hover:before:h-40 hover:before:w-40 hover:before:opacity-100"
              >
                <p class="relative z-10 font-extralight text-xl">Save</p>
              </button>
            </div>
            <!-- end submit -->
            <!-- Title -->
            <div class="mb-5">
              <label
                for="movie-url"
                class="mb-3 block text-2xl font-medium text-[#07074D]"
              >
                Title
              </label>
              <input
                name="title"
                type="text"
                placeholder="enter tittle"
                min="0"
                class="w-full appearance-none rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-2xl font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
              />
            </div>
            <!-- end title -->

            <div class="-mx-3 flex flex-wrap">
              <!-- Content -->
              <div class="w-full px-3 sm:w-1/2">
                <div class="mb-5">
                  <label
                    for="content"
                    class="mb-3 block text-2xl font-medium text-[#07074D]"
                  >
                    Content:
                  </label>
                  <textarea
                    name="description"
                    placeholder="Enter your content..."
                    class="block mt-2 w-full rounded-lg border bg-white px-4 h-36 py-2.5"
                  ></textarea>
                </div>
              </div>
              <!-- end content -->
              <!-- date -->
              <div class="w-full px-3 sm:w-1/2">
                <div class="mb-5">
                  <label
                    for="release"
                    class="mb-3 block text-2xl font-medium text-[#07074D]"
                  >
                    Release Date
                  </label>
                  <input
                    name="day"
                    type="date"
                    required
                    max="<%= java.time.LocalDate.now() %>"
                    class="w-full rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-xl font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
                  />
                </div>
              </div>
              <!-- end date -->
            </div>

            <!-- photo -->
            <div class="w-full bg-white">
              <div
                class="container mx-auto h-full flex flex-col justify-center items-center"
              >
                <div id="images-container"></div>
                <div class="flex w-full justify-center">
                  <div
                    id="multi-upload-button"
                    class="bg-white rounded-md px-12 py-4 text-xl border text-neutral-600 hover:text-white hover:shadow-[inset_16rem_0_0_0] hover:shadow-green-500 duration-[400ms,700ms] transition-[color,box-shadow]"
                  >
                    Upload Photo
                  </div>
                  <div
                    class="border-gray-300 rounded-r-md flex items-center justify-between"
                  >
                    <span id="multi-upload-text" class="p-2 text-xl"></span>
                    <button
                      id="multi-upload-delete"
                      class="hidden"
                      onclick="removeMultiUpload()"
                    >
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        class="fill-current text-red-700 w-3 h-3"
                        viewBox="0 0 320 512"
                      >
                        <path
                          d="M310.6 361.4c12.5 12.5 12.5 32.75 0 45.25C304.4 412.9 296.2 416 288 416s-16.38-3.125-22.62-9.375L160 301.3L54.63 406.6C48.38 412.9 40.19 416 32 416S15.63 412.9 9.375 406.6c-12.5-12.5-12.5-32.75 0-45.25l105.4-105.4L9.375 150.6c-12.5-12.5-12.5-32.75 0-45.25s32.75-12.5 45.25 0L160 210.8l105.4-105.4c12.5-12.5 32.75-12.5 45.25 0s12.5 32.75 0 45.25l-105.4 105.4L310.6 361.4z"
                        />
                      </svg>
                    </button>
                  </div>
                </div>
                <input
                  type="file"
                  id="multi-upload-input"
                  class="hidden"
                  name="photo"
                  multiple
                />
              </div>
            </div>
            <script>
              multiUploadButton = document.getElementById(
                "multi-upload-button"
              );
              multiUploadInput = document.getElementById("multi-upload-input");
              imagesContainer = document.getElementById("images-container");
              multiUploadDisplayText =
                document.getElementById("multi-upload-text");
              multiUploadDeleteButton = document.getElementById(
                "multi-upload-delete"
              );

              multiUploadButton.onclick = function () {
                multiUploadInput.click(); // this will trigger the click event
              };

              multiUploadInput.addEventListener("change", function (event) {
                if (multiUploadInput.files) {
                  let files = multiUploadInput.files;

                  // show the text for the upload button text filed
                  multiUploadDisplayText.innerHTML =
                    files.length + " files selected";

                  // removes styles from the images wrapper container in case the user readd new images
                  imagesContainer.innerHTML = "";

                  // the delete button to delete all files
                  multiUploadDeleteButton.classList.remove("hidden");

                  Object.keys(files).forEach(function (key) {
                    let file = files[key];

                    // the FileReader object is needed to display the image
                    let reader = new FileReader();
                    reader.readAsDataURL(file);
                    reader.onload = function () {
                      // for each file we create a div to contain the image
                      let imageDiv = document.createElement("div");
                      imageDiv.classList.add(
                        "mb-4",
                        "ml-20",
                        "w-96",
                        "h-64",
                        "p-3",
                        "rounded-lg",
                        "bg-cover",
                        "bg-center"
                      );
                      imageDiv.style.backgroundImage =
                        "url(" + reader.result + ")";
                      imagesContainer.appendChild(imageDiv);
                    };
                  });
                }
              });

              function removeMultiUpload() {
                imagesContainer.innerHTML = "";
                multiUploadInput.value = "";
                multiUploadDisplayText.innerHTML = "";
                multiUploadDeleteButton.classList.add("hidden");
              }
            </script>
            <!-- end photo -->
          </form>
        </div>
      </section>
    </div>
  </body>
</html>
