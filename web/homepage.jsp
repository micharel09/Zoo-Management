<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://cdn.tailwindcss.com"></script>
    <script
      defer
      src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"
    ></script>

    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    />
    <script>
      document.documentElement.classList.add("js");
    </script>
    <script src="https://unpkg.com/taos@1.0.5/dist/taos.js"></script>
    <script
      src="https://kit.fontawesome.com/936766a5f7.js"
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="homepage.css" />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;1,100;1,200&display=swap"
      rel="stylesheet"
    />
    <script src="https://cdn-tailwindcss.vercel.app/"></script>
    <script
      src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.js"
      defer
    ></script>
    <script
      src="https://kit.fontawesome.com/5b0b34b925.js"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js"
      defer
    ></script>
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
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
    <link rel="stylesheet" href="css/homepage.css" />
    <!-- end loading -->
    <title>Home Page</title>
  </head>
  <body class="block overflow-x-hidden mx-auto bg-gray-300">
    <!-- header -->
    <div class="bg-green-600 leading-6 h-11">
      <div class="flex justify-end">
        <div class="mr-72">
          <i class="fa-brands fa-facebook-f mr-3 mt-4"></i>
          <i class="fa-brands fa-youtube mr-3 mt-4"></i>
          <i class="fa-brands fa-instagram mr-3 mt-4"></i>
        </div>
        <a href="login.html">
          <i class="fa-solid fa-arrow-right-to-bracket mr-4 mt-4 text-white">
            <span class="group">
              Login
              <div
                class="w-0 mt-1 group-hover:w-full h-0.5 bg-white ease-in-out duration-200"
              ></div>
            </span>
          </i>
        </a>
      </div>
    </div>
    <!-- end header -->
    <!-- navigation -->
    <nav class="bg-white border-gray-200 dark:bg-gray-900">
      <div
        class="shadow-2xl flex items-center justify-center mx-auto p-3 space-x-4 pl-40"
      >
        <div
          class="mr-10 items-center justify-between hidden md:flex md:w-auto md:order-1"
          id="navbar-user"
        >
          <ul
            class="flex flex-col font-medium p-4 md:p-0 mt-4 ml-30 border border-gray-100 bg-gray-50 md:flex-row md:space-x-8 md:mt-0 md:border-0 md:bg-white dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700"
          >
            <li>
              <a
                href="homepage"
                class="relative w-fit block after:block after:content-[''] after:absolute after:h-[3px] after:bg-green-600 after:w-full after:scale-x-0 after:hover:scale-x-100 after:transition after:duration-300 after:origin-center py-2 pl-3 pr-4 text-green-600 uppercase font-bold bg-green-700 rounded md:bg-transparent md:p-0 text-green"
                aria-current="page"
                >Home</a
              >
            </li>
            <li>
              <a
                href="about.jsp"
                class="relative w-fit block after:block after:content-[''] after:absolute after:h-[3px] after:bg-green-600 after:w-full after:scale-x-0 after:hover:scale-x-100 after:transition after:duration-300 after:origin-center py-2 pl-3 pr-4 text-green-600 uppercase font-bold bg-green-700 rounded md:bg-transparent md:p-0 text-green"
                aria-current="page"
                >About us</a
              >
            </li>
            <li>
              <a
                href="Experience.jsp"
                class="relative w-fit block after:block after:content-[''] after:absolute after:h-[3px] after:bg-green-600 after:w-full after:scale-x-0 after:hover:scale-x-100 after:transition after:duration-300 after:origin-center py-2 pl-3 pr-4 text-green-600 uppercase font-bold bg-green-700 rounded md:bg-transparent md:p-0 text-green"
                aria-current="page"
                >Experience</a
              >
            </li>
          </ul>
        </div>

        <div
          class="mr096 items-center justify-between hidden w-full md:flex md:w-auto md:order-1"
          id="navbar-user"
        >
          <ul
            class="ml-96 flex flex-col font-medium p-4 md:p-0 mt-4 mr-6 border border-gray-100 bg-gray-50 md:flex-row md:space-x-8 md:mt-0 md:border-0 md:bg-white dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700"
          >
            <li>
              <a
                href="animal.jsp"
                class="relative w-fit block after:block after:content-[''] after:absolute after:h-[3px] after:bg-green-600 after:w-full after:scale-x-0 after:hover:scale-x-100 after:transition after:duration-300 after:origin-center py-2 pl-3 pr-4 text-green-600 uppercase font-bold bg-green-700 rounded md:bg-transparent md:p-0 text-green"
                aria-current="page"
                >Animals</a
              >
            </li>
            <li>
              <a
                href="news.jsp"
                class="relative w-fit block after:block after:content-[''] after:absolute after:h-[3px] after:bg-green-600 after:w-full after:scale-x-0 after:hover:scale-x-100 after:transition after:duration-300 after:origin-center py-2 pl-3 pr-4 text-green-600 uppercase font-bold bg-green-700 rounded md:bg-transparent md:p-0 text-green"
                aria-current="page"
                >News</a
              >
            </li>
            <li>
              <a
                href="Map.html"
                class="relative w-fit block after:block after:content-[''] after:absolute after:h-[3px] after:bg-green-600 after:w-full after:scale-x-0 after:hover:scale-x-100 after:transition after:duration-300 after:origin-center py-2 pl-3 pr-4 text-green-600 uppercase font-bold bg-green-700 rounded md:bg-transparent md:p-0 text-green"
                aria-current="page"
                >Map</a
              >
            </li>
          </ul>
        </div>
        <!-- buy ticket button -->
        <div class="animate-bounce relative items-center md:order-2">
          <a
            href="/shop"
            class="bg-gradient-to-b w-max mx-auto text-green-500 font-semibold from-slate-50 to-green-100 px-5 py-1 rounded-2xl shadow-green-400 duration shadow-md border-b-4 hover border-b border-green-200 hover:shadow-sm transition-all duration-500"
            >Buy Ticket!
          </a>
        </div>
      </div>
    </nav>
    <!-- end header -->
    <!--LOGO HERE-->
    <div style="z-index: 99">
      <a href="homepage"
        ><img class="fsp-image" src="/img/FSP.png" alt="logo"
      /></a>
    </div>
    <!-- end navigation -->

    <!-- video SECTION -->
    <div>
      <div
        class="relative items-center justify-center w-full w-screen h-screen"
      >
        <div>
          <div class="inset-0 h-screen">
            <iframe
              class="object-cover w-full h-full"
              src="https://www.youtube.com/embed/TiEkGv-UszE?autoplay=1&playlist=TiEkGv-UszE&loop=1&mute=1"
              title="YouTube video player"
              frameborder="0"
              allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
              allowfullscreen
              id="youtube-video"
            ></iframe>
          </div>

          <div
            class="absolute inset-0 flex items-center justify-center h-screen w-full bg-gray-900 bg-opacity-50"
          ></div>

          <div
            data-aos="flip-down"
            class="absolute mt-4 inset-0 container flex flex-col items-center justify-center h-full max-w-6xl pl-0 mx-auto sm:pl-8 xl:pl-0 md:flex-row md:justify-between"
          ></div>
        </div>
      </div>
    </div>
    <!-- video SECTION END -->
    <!-- weather and realtime-->
    <aside
      class="overflow-hidden bg-[url(https://images.unsplash.com/photo-1583244697902-dccf09de6161?auto=format&fit=crop&q=80&w=1974&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D)] bg-center bg-no-repeat bg-cover"
    >
      <div class="bg-slate-900/50">
        <div class="py-10 text-center">
          <!-- time -->
          <div class="time-container px-10 rounded-xl">
            <div class="flex items-center justify-center space-x-4">
              <div class="text-4xl font-large text-gray-800">
                <span class="text-white">Open:</span>
                <span class="text-green-500">8:00 AM</span>
              </div>

              <div class="text-4xl font-large text-gray-800">
                <span class="text-4xl text-white">Close:</span>
                <span class="text-4xl text-green-500">10:00 PM</span>
              </div>
            </div>
          </div>
          <!-- end time -->
          <div id="clock">
            <h1
              id="date-time"
              class="text-5xl w-screen font-extrabold text-white"
            ></h1>
          </div>
        </div>
      </div>
    </aside>

    <!-- end time -->
    <!-- section 1 -->
    <aside
      class="overflow-hidden bg-[url(https://images.unsplash.com/photo-1504173010664-32509aeebb62?auto=format&fit=crop&q=80&w=2027&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D)] bg-center bg-no-repeat bg-cover"
    >
      <div class="p-8 md:p-12 lg:px-16 lg:py-24 bg-slate-900/50">
        <div class="max-w-lg text-center sm:text-left">
          <h2
            class="text-2xl font-extrabold text-white sm:text-3xl md:text-5xl mb-2"
          >
            Wild World Zoo is the largest wildlife park in the region!
          </h2>

          <p
            class="max-w-md text-white/90 md:mt-6 md:text-lg md:leading-relaxed md:block"
          >
            Home to over 100 rare and exotic animal species from around the
            globe, visitors will have the chance to admire endangered wild
            animals such as tigers, lions, bears, elephants, rhinos...
          </p>

          <div class="mt-4 sm:mt-8">
            <button
              class="btn group flex items-center bg-transparent p-2 px-6 text-xl font-thin tracking-widest text-white"
            >
              <span
                class="hover:text-green-400 duration-300 shadow-md pr-4 pb-1 text-white after:transition-transform after:duration-500 after:ease-out after:absolute after:bottom-0 after:left-0 after:block after:h-[2px] after:w-full after:origin-bottom-right after:scale-x-0 after:bg-green-500 after:content-[''] after:group-hover:origin-bottom-left after:group-hover:scale-x-100 transition-font"
              >
                Explore More
              </span>
              <svg
                viewBox="0 0 46 16"
                height="10"
                width="30"
                xmlns="http://www.w3.org/2000/svg"
                id="arrow-horizontal"
                class="-translate-x-2 fill-slate-700 transition-all duration-300 ease-out group-hover:translate-x-1 group-hover:scale-x-105 group-hover:fill-green-400"
              >
                <path
                  transform="translate(30)"
                  d="M8,0,6.545,1.455l5.506,5.506H-30V9.039H12.052L6.545,14.545,8,16l8-8Z"
                  data-name="Path 10"
                  id="Path_10"
                ></path>
              </svg>
            </button>
          </div>
        </div>
      </div>
    </aside>

    <!-- end section 1 -->
    <!-- section 2 -->
    <aside
      class="overflow-hidden bg-[url(https://images.unsplash.com/photo-1604605046985-3a8bacf389e2?auto=format&fit=crop&q=80&w=2072&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D)] bg-center bg-no-repeat bg-cover"
    >
      <div
        class="p-8 md:p-12 lg:px-16 lg:py-24 bg-slate-900/50 flex justify-end"
      >
        <div class="max-w-lg text-center sm:text-left">
          <h2
            class="text-2xl font-extrabold text-white sm:text-3xl md:text-5xl mb-2"
          >
            Fun Family Experiences!
          </h2>

          <p
            class="max-w-md text-white/90 md:mt-6 md:text-lg md:leading-relaxed md:block"
          >
            You'll embark on a walking safari to observe the animals in action.
            Experience our popular petting zoo where you can interact with
            friendly goats, sheep, ponies and more. Don't miss our world-class
            reptile house and aquarium exhibits too. We offer fun and
            educational shows daily.
          </p>

          <div class="mt-4 sm:mt-8">
            <a
              href=""
              class="btn group flex items-center bg-transparent p-2 px-6 text-xl font-thin tracking-widest text-white"
            >
              <span
                class="hover:text-green-400 duration-300 shadow-md pr-4 pb-1 text-white after:transition-transform after:duration-500 after:ease-out after:absolute after:bottom-0 after:left-0 after:block after:h-[2px] after:w-full after:origin-bottom-right after:scale-x-0 after:bg-green-500 after:content-[''] after:group-hover:origin-bottom-left after:group-hover:scale-x-100 transition-font"
              >
                Explore More
              </span>
              <svg
                viewBox="0 0 46 16"
                height="10"
                width="30"
                xmlns="http://www.w3.org/2000/svg"
                id="arrow-horizontal"
                class="-translate-x-2 fill-slate-700 transition-all duration-300 ease-out group-hover:translate-x-1 group-hover:scale-x-105 group-hover:fill-green-400"
              >
                <path
                  transform="translate(30)"
                  d="M8,0,6.545,1.455l5.506,5.506H-30V9.039H12.052L6.545,14.545,8,16l8-8Z"
                  data-name="Path 10"
                  id="Path_10"
                ></path>
              </svg>
            </a>
          </div>
        </div>
      </div>
    </aside>

    <!-- end section 2 -->
    <h1 style="background-color: #cfcdcc; color: #cfcdcc">h</h1>

    <!-- delay-[600ms] duration-[1500ms] taos:translate-y-[200px] taos:opacity-0 -->
    <div
      class="relative"
      style="
        background-image: url('/img/grassy-field-with-trees-giraffes-walking-around-with-light-blue-sky-background.jpg');
      "
    >
      <div
        class="flex justify-around delay-[600ms] duration-[1500ms] taos:translate-y-[200px] taos:opacity-0"
      >
        <c:forEach begin="0" end="2" items="${listH}" var="n">
          <div
            class="hover:bg-green-300 w-80 bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700"
          >
            <a href="#">
              <img
                class="w-72 h-[300px] mx-auto rounded-lg mt-3"
                src="./news_picture/${n.photo}"
                alt=""
              />
            </a>
            <div class="p-5">
              <a href="#">
                <h5
                  class="mb-2 text-2xl font-bold tracking-tight text-green-700 dark:text-white"
                >
                  ${n.title}
                </h5>
              </a>
              <p
                class="break-all line-clamp-4 mb-16 font-normal text-black dark:text-gray-400"
              >
                ${n.content}
              </p>
              <a
                href="#"
                class="inline-flex items-center px-3 py-2 ml-40 text-sm font-medium text-center text-white bg-green-700 rounded-lg hover:bg-green-800 focus:ring-4 focus:outline-none focus:ring-green-300 dark:bg-green-600 dark:hover:bg-green-700 dark:focus:ring-green-800"
              >
                Read more
                <svg
                  class="w-3.5 h-3.5 ml-2"
                  aria-hidden="true"
                  xmlns="http://www.w3.org/2000/svg"
                  fill="none"
                  viewBox="0 0 14 10"
                >
                  <path
                    stroke="currentColor"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M1 5h12m0 0L9 1m4 4L9 9"
                  />
                </svg>
              </a>
            </div>
          </div>
        </c:forEach>
      </div>

      <!--map&news-->

      <div class="mt-20 mb-20 flex justify-evenly">
        <div style="margin-left: 90px" class="container reveal fade-left">
          <h2 class="text-gray-800 text-7xl text-left font-bold mb-16">MAP</h2>
          <a href=""
            ><iframe
              src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3348.5820387864956!2d174.78170560776508!3d-41.319870449708326!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d38aff75cff6f49%3A0xc1639a1ffd228038!2sWellington%20Zoo!5e1!3m2!1svi!2s!4v1695206696761!5m2!1svi!2s"
              width="600"
              height="450"
              style="border: 0"
              allowfullscreen=""
              loading="lazy"
              referrerpolicy="no-referrer-when-downgrade"
            ></iframe
          ></a>
        </div>

        <div class="container reveal fade-right">
          <h2 class="text-gray-800 text-7xl text-left font-bold mb-24">NEWS</h2>
          <!--news here 1-->
           <c:forEach begin ='2' end='3' items="${listH}" var="n">
   <div class="max-w-sm w-full lg:max-w-full lg:flex mb-12">
        <div class="h-[200px] w-[300px] lg:h-auto  flex-none bg-cover rounded-t lg:rounded-t-none lg:rounded-l text-center overflow-hidden" style="background-image: url('./news_picture/${n.photo}')" title="Woman holding a mug"></div>
          <div class="border-r border-b border-l border-gray-400 lg:border-l-0 lg:border-t lg:border-gray-400 bg-white rounded-b lg:rounded-b-none lg:rounded-r p-4 flex flex-col justify-between leading-normal">
              <div class="mb-8">
                                
                <div class="text-gray-900 font-bold text-xl mb-2">${n.title}</div>
                <p class="text-gray-700 text-base line-clamp-2 w-32 text-left text-lightBlack capitalize">${n.content}</p>
              </div>
              <div class="flex items-center">
                <img class="w-10 h-10 rounded-full mr-4" src="./news_picture/${n.photo}" alt="Avatar of Jonathan Reinink">               
              </div>
            </div>
          </div>
   </c:forEach>           
        </div>
      </div>

      <!-- grid section -->
      <div class="container mx-auto p-4 fade">
        <div class="flex justify-center">
          <h2 class="text-gray-800 text-7xl text-left font-bold mb-16">
            Here is some photos on our land:
          </h2>
        </div>

        <div class="grid grid-cols-2 md:grid-cols-4 gap-4">
          <div class="grid gap-4">
            <div class="fade">
              <img
                class="h-auto max-w-full rounded-lg cursor-pointer cursor hover:shadow-xl hover:transform hover:scale-105 duration-300"
                src="https://images.unsplash.com/photo-1621185831466-5409499eec67?auto=format&fit=crop&q=80&w=1974&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&w=700&dpr=2.0"
                onclick="openLightbox(this)"
                alt=""
              />
            </div>
            <div>
              <img
                class="h-auto max-w-full rounded-lg cursor-pointer cursor hover:shadow-xl hover:transform hover:scale-105 duration-300"
                src="https://images.unsplash.com/photo-1503918756811-975bd3397178?auto=format&fit=crop&q=80&w=1974&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                alt=""
                onclick="openLightbox(this)"
              />
            </div>
            <div>
              <img
                class="h-auto max-w-full rounded-lg cursor-pointer cursor hover:shadow-xl hover:transform hover:scale-105 duration-300"
                src="https://images.unsplash.com/photo-1525152334085-d5f17f22d5c8?auto=format&fit=crop&q=80&w=1968&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                alt=""
                onclick="openLightbox(this)"
              />
            </div>
          </div>
          <div class="grid gap-4">
            <div>
              <img
                class="h-auto max-w-full rounded-lg cursor-pointer cursor hover:shadow-xl hover:transform hover:scale-105 duration-300"
                src="https://images.unsplash.com/photo-1532714845903-d7b2a053e92b?auto=format&fit=crop&q=80&w=1954&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                alt=""
                onclick="openLightbox(this)"
              />
            </div>
            <div>
              <img
                class="h-auto max-w-full rounded-lg cursor-pointer cursor hover:shadow-xl hover:transform hover:scale-105 duration-300"
                src="https://images.unsplash.com/photo-1581098031793-61531ade4318?auto=format&fit=crop&q=80&w=1974&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                alt=""
                onclick="openLightbox(this)"
              />
            </div>
            <div>
              <img
                class="h-auto max-w-full rounded-lg cursor-pointer cursor hover:shadow-xl hover:transform hover:scale-105 duration-300"
                src="https://images.unsplash.com/photo-1510272940641-589fcd43e485?auto=format&fit=crop&q=80&w=1974&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                alt=""
                onclick="openLightbox(this)"
              />
            </div>
          </div>
          <div class="grid gap-4">
            <div>
              <img
                class="h-auto max-w-full rounded-lg cursor-pointer cursor hover:shadow-xl hover:transform hover:scale-105 duration-300"
                src="https://images.unsplash.com/photo-1617258683488-df59909f25f0?auto=format&fit=crop&q=80&w=1998&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                alt=""
                onclick="openLightbox(this)"
              />
            </div>
            <div>
              <img
                class="h-auto max-w-full rounded-lg cursor-pointer cursor hover:shadow-xl hover:transform hover:scale-105 duration-300"
                src="https://images.unsplash.com/photo-1541804536-78217d100fb7?auto=format&fit=crop&q=80&w=1688&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                alt=""
                onclick="openLightbox(this)"
              />
            </div>
            <div>
              <img
                class="h-auto max-w-full rounded-lg cursor-pointer cursor hover:shadow-xl hover:transform hover:scale-105 duration-300"
                src="https://images.unsplash.com/photo-1527118732049-c88155f2107c?auto=format&fit=crop&q=80&w=1974&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                alt=""
                onclick="openLightbox(this)"
              />
            </div>
          </div>
          <div class="grid gap-4">
            <div>
              <img
                class="h-auto max-w-full rounded-lg cursor-pointer cursor hover:shadow-xl hover:transform hover:scale-105 duration-300"
                src="https://images.unsplash.com/photo-1601354458668-bc528609649e?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D?w=700&dpr=2.0"
                alt=""
                onclick="openLightbox(this)"
              />
            </div>
            <div>
              <img
                class="h-auto max-w-full rounded-lg cursor-pointer cursor hover:shadow-xl hover:transform hover:scale-105 duration-300"
                src="https://images.unsplash.com/photo-1417722009592-65fa261f5632?auto=format&fit=crop&q=80&w=1935&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                alt=""
                onclick="openLightbox(this)"
              />
            </div>
            <div>
              <img
                class="h-auto max-w-full rounded-lg cursor-pointer cursor hover:shadow-xl hover:transform hover:scale-105 duration-300"
                src="https://images.unsplash.com/photo-1617796606112-557e8061d58a?auto=format&fit=crop&q=80&w=1974&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                alt=""
                onclick="openLightbox(this)"
              />
            </div>
          </div>
        </div>
      </div>
      <script src="js/homepage.js"></script>

      <!-- end grid -->
    </div>

    <img
      class="animate-bounce w-10"
      src="/img/117081841_1166368890386793_6794595804250703572_n.jpg"
      alt=""
    />
    <!--Footer-->

    <footer class="backgroundimg">
      <div
        class="relative overflow-hidden p-12 text-center"
        style="background-image: url('/img/SWP Footer.gif'); height: 400px"
      >
        <div class="absolute h-full w-full overflow-hidden bg-fixed">
          <div class="flex h-full justify-evenly">
            <img
              class="w-max mb-40"
              src="/img/377487712_708998067736035_5705167264383840128_n.png"
              alt=""
            />
            <ul class="footer">
              <li>Home</li>
              <li>About Us</li>
              <li>Experience</li>
              <li>News</li>
              <li>Map</li>
              <li>Help</li>
              <li>Contact</li>
            </ul>
            <ul class="footer">
              <li class="uppercase font-bold leading-10">Contact</li>
              <li class="font-semibold">WorldWildZoo Ho Chi Minh</li>
              <li class="font-semibold">
                Adress: <small>213/21 Nơ Trang Long </small>
              </li>
              <li class="font-semibold">Hotline: <small>098765432</small></li>
              <li class="font-semibold">
                Email: <small>wowizoo@hcm.vn</small>
              </li>
            </ul>
          </div>
        </div>
        <div style="border-top: 2px solid white; margin-top: 300px"></div>
        <p class="text-start text-white">Copyright By WorldWildZoo</p>
      </div>
      <!-- Jumbotron -->
    </footer>
  </body>
</html>
