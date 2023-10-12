<%-- Document : FeedbackForm Created on : Oct 5, 2023, 9:25:22 PM Author : Quan
--%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <title>Feedback</title>
    <%@ include file="components/header.html"%> <%@ include
    file="components/breadcrumb.html" %>
  </head>
  <body>
    <!-- main -->
    <div class="flex items-center bg-white mt-20">
      <div class="mx-auto w-full max-w-lg">
        <h1 class="text-4xl font-medium">Feedback Us</h1>
        <p class="mt-3">
          Please share your comments about our website. Please fill out your
          purpose the form below:
        </p>

        <form action="https://api.web3forms.com/submit" class="mt-10">
          <input type="hidden" name="access_key" value="YOUR_ACCESS_KEY_HERE" />
          <div class="grid gap-6 sm:grid-cols-2">
            <div class="relative z-0">
              <input
                type="text"
                name="name"
                class="peer block w-full appearance-none border-0 border-b border-gray-500 bg-transparent py-2.5 px-0 text-sm text-gray-900 focus:border-blue-600 focus:outline-none focus:ring-0"
                placeholder=" "
              />
              <label
                class="absolute top-3 -z-10 origin-[0] -translate-y-6 scale-75 transform text-sm text-gray-500 duration-300 peer-placeholder-shown:translate-y-0 peer-placeholder-shown:scale-100 peer-focus:left-0 peer-focus:-translate-y-6 peer-focus:scale-75 peer-focus:text-blue-600 peer-focus:dark:text-blue-500"
                >Employee_ID</label
              >
            </div>
            <div class="relative z-0">
              <input
                type="text"
                name="purpose"
                class="peer block w-full appearance-none border-0 border-b border-gray-500 bg-transparent py-2.5 px-0 text-sm text-gray-900 focus:border-blue-600 focus:outline-none focus:ring-0"
                placeholder=" "
              />
              <label
                class="absolute top-3 -z-10 origin-[0] -translate-y-6 scale-75 transform text-sm text-gray-500 duration-300 peer-placeholder-shown:translate-y-0 peer-placeholder-shown:scale-100 peer-focus:left-0 peer-focus:-translate-y-6 peer-focus:scale-75 peer-focus:text-blue-600 peer-focus:dark:text-blue-500"
                >Process Note</label
              >
            </div>
            <div class="relative z-0 col-span-2">
              <textarea
                name="message"
                rows="5"
                class="peer block w-full appearance-none border-0 border-b border-gray-500 bg-transparent py-2.5 px-0 text-sm text-gray-900 focus:border-blue-600 focus:outline-none focus:ring-0"
                placeholder=" "
              ></textarea>
              <label
                class="absolute top-3 -z-10 origin-[0] -translate-y-6 scale-75 transform text-sm text-gray-500 duration-300 peer-placeholder-shown:translate-y-0 peer-placeholder-shown:scale-100 peer-focus:left-0 peer-focus:-translate-y-6 peer-focus:scale-75 peer-focus:text-blue-600 peer-focus:dark:text-blue-500"
                >Purpose</label
              >
            </div>
            <div class="flex items-center mb-4">
              <label
                for="number"
                class="inline-block mr-6 text-right text-gray-600"
                >Type:</label
              >
              <select
                class="flex-1 py-2 border-b-2 border-gray-400 focus:border-green-400 text-gray-600 placeholder-gray-400 outline-none"
              >
                <option>Surabaya</option>
                <option>Jakarta</option>
                <option>bandung</option>
                <option>Tangerang</option>
              </select>
            </div>
          </div>
          <div class="flex items-center">
            <label
              for="number"
              class="inline-bloc mr-6 text-right text-gray-600"
              >Choose File:</label
            >
            <input
              type="file"
              id="file"
              name="file"
              placeholder="file"
              class="flex-1 py-2 border-b-2 border-gray-400 focus:border-green-400 text-gray-600 placeholder-gray-400 outline-none"
            />
          </div>
          <!-- DATE Input -->
          <div>
            <label for="release" class="block text-sm text-gray-500"
              >Date</label
            >

            <input
              name="release"
              type="date"
              required
              value="${release}"
              max="<%= java.time.LocalDate.now() %>"
              class="block mt-2 w-full rounded-lg border bg-white px-5 py-2.5"
            />

            <p class="mt-3 text-xs text-red-400"></p>
          </div>
          <button
            type="submit"
            class="mt-5 rounded-md bg-black px-10 py-2 text-white float-right"
          >
            Send Message
          </button>
        </form>
      </div>
    </div>
  </body>
</html>
