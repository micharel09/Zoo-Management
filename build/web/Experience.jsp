<%-- Document : Experience Created on : Oct 6, 2023, 8:45:53 AM Author : Quan
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
    <title>Exlore Us</title>
    <%@ include file="components/header.html"%> 
    <%@ include file="components/breadcrumb.html" %>
  </head>
  <body>
    <!-- component -->
    <div
      class="hover:shadow-2xl transition duration-500 tran mt-6 px-4 bg-white border-2 mb-8 py-8 rounded-3xl mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-8"
    >
      <div
        class="flex flex-col items-center justify-between w-full mb-10 lg:flex-row"
      >
        <div class="mb-16 lg:mb-0 lg:max-w-lg lg:pr-5">
          <div class="max-w-xl mb-6">
            <h2
              class="font-sans text-3xl sm:mt-0 mt-6 font-medium tracking-tight text-black sm:text-4xl sm:leading-none max-w-lg mb-6"
            >
              Educational programs
            </h2>
            <p class="text-black text-base md:text-lg">
              Zoos often offer educational programs for both children and
              adults. These programs help enhance knowledge about animals and
              their habitats through interactive activities and educational
              presentations.
            </p>
          </div>
          <div className="space-x-4">
            <button
              class="text-neutral-800 text-lg font-medium inline-flex items-center"
            >
              <span> Get insights →</span>
            </button>
          </div>
        </div>
        <img
          alt="logo"
          width="420"
          height="120"
          src="
          https://plus.unsplash.com/premium_photo-1661964232020-0c713270409e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"
        />
      </div>
    </div>

    <div
      class="hover:shadow-2xl transition duration-500 px-4 bg-white border-2 mb-8 py-8 rounded-3xl mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-8"
    >
      <div
        class="flex flex-col items-center justify-between w-full mb-10 lg:flex-row"
      >
        <img
          alt="logo"
          width="420"
          height="120"
          src="https://images.unsplash.com/photo-1503919005314-30d93d07d823?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"
        />

        <div class="mb-16 lg:mb-0 lg:max-w-lg lg:pr-5">
          <div class="max-w-xl mb-6">
            <h2
              class="font-sans text-3xl sm:mt-0 mt-6 font-medium tracking-tight text-black sm:text-4xl sm:leading-none max-w-lg mb-6"
            >
              Interactive activities:
            </h2>
            <p class="text-black text-base md:text-lg">
              Some zoos offer interactive activities that allow visitors to have
              close encounters with certain animal species. This may involve
              opportunities for visitors to touch and learn how to care for
              small animals or participate in feeding and grooming activities.
            </p>
          </div>
          <div className="space-x-4">
            <button
              class="text-neutral-800 text-lg font-medium inline-flex items-center"
            >
              <span> See more →</span>
            </button>
          </div>
        </div>
      </div>
    </div>

    <div
      class="hover:shadow-2xl transition duration-500 px-4 bg-white border-2 mb-8 py-8 rounded-3xl mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-8"
    >
      <div
        class="flex flex-col items-center justify-between w-full mb-10 lg:flex-row"
      >
        <div class="mb-16 lg:mb-0 lg:max-w-lg lg:pr-5">
          <div class="max-w-xl mb-6">
            <h2
              class="font-sans text-3xl sm:mt-0 mt-6 font-medium tracking-tight text-black sm:text-4xl sm:leading-none max-w-lg mb-6"
            >
              Entertaining activities
            </h2>
            <p class="text-black text-base md:text-lg">
              Special shows or performances to showcase the natural skills and
              behaviors of animals. These can include seal, penguin, tiger,
              lion, or other animal shows.
            </p>
          </div>
          <div className="space-x-4">
            <button
              class="text-neutral-800 text-lg font-medium inline-flex items-center"
            >
              <span> get insights →</span>
            </button>
          </div>
        </div>
        <img alt="logo" width="420" height="120" src="img/giaitri.jpg" />
      </div>
    </div>
  </body>
</html>
