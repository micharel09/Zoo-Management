<%-- Document : user Created on : May 31, 2023, 2:30:17 PM Author : HoangNQ --%>
<%@page import="sample.user.UserDTO"%> 
<!-- prettier-ignore -->
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="area.css" />
    <title>Area</title>
  </head>
  <style>
    .h-60 {
      height: 14rem;
    }

    .w-128 {
      width: 32rem;
    }
    button {
      z-index: 1;
    }

    button::after {
      content: "";
      z-index: -1;
      position: absolute;
      width: 100%;
      height: 100%;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      transform: translateX(-100%);
      transition: transform 600ms cubic-bezier(0, 0.7, 0.6, 1);
    }

    button:hover::after {
      transform: translateX(0);
    }

    .fade-in {
      opacity: 1;
      animation-name: fadeInOpacity;
      animation-iteration-count: 1;
      animation-timing-function: ease-in;
      animation-duration: 2s;
    }

    @keyframes fadeInOpacity {
      0% {
        opacity: 0;
      }
      100% {
        opacity: 1;
      }
    }

    /* Define the initial state of the element */
    .fade-in {
      opacity: 0;
      transform: translateY(
        10px
      ); /* Optional: Add a slight vertical translation */
      transition: opacity 0.5s ease, transform 0.5s ease; /* Add the transition */
    }

    /* Define the state when the element is visible */
    .fade-in.active {
      opacity: 1;
      transform: translateY(0); /* Reset the vertical translation */
    }

    /* modal */
    .overlay {
      position: fixed;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      background: rgba(0, 0, 0, 0.5);
    }

    .modal {
      position: fixed;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
    }
    /* Fade in */
    @keyframes fadeIn {
      from {
        opacity: 0;
      }
      to {
        opacity: 1;
      }
    }

    /* Fade out */
    @keyframes fadeOut {
      from {
        opacity: 1;
      }
      to {
        opacity: 0;
      }
    }

    .modal {
      animation: fadeIn 0.5s, fadeOut 0.5s 2s forwards;
    }
    .overlay {
      animation: fadeIn 0.5s, fadeOut 0.5s 2s forwards;
    }
  </style>

  <!-- header -->
  <!-- prettier-ignore -->
  <%@ include file="components/headermanager.jsp" %>
  <!-- end header -->
  <!-- modal -->
  <div class="overlay"></div>

  <div class="modal">
    <h4 class="mb-[14px] text-5xl font-bold text-white md:text-4xl">
      Welcome back, <%=loginUser.getFullname()%>
    </h4>
  </div>
  <!-- end modal -->
  <body
    class="bg-[url('img/grassy-field-with-trees-giraffes-walking-around-with-light-blue-sky-background.jpg')]"
    style="width: 100%"
  >
    <!-- sidebar -->
    <!-- prettier-ignore -->
    <%@ include file="components/sidebarmanager.jsp" %>
    <!-- end sidebar -->

    <!--Area List here-->
    <!--area A B-->

    <div class="fade-in container mx-auto px-4 md:px-12 mt-2">
      <div class="grid grid-cols-2 gap-4">
        <c:forEach items="${a}" var="o">
          <div class="mt-10 fade-in">
            <div id="app" class="fade-in bg-white h-60 rounded shadow-md flex card text-grey-darkest">
                   <img class="w-1/2 h-full rounded-l-sm" src="/img/a.png" alt="Room Image">
                    <div class="w-full flex flex-col">
                        <div class="p-4 pb-0 flex-1">
                            <h3 class="font-normal mb-7 text-grey-darkest">Location ${o.arealocation}</h3>
                            <span class="text-5xl text-grey-darkest">${o.genre}</span>
                        </div>
                        <button class="relative overflow-hidden rounded shadow-inner px-2 py-3 font-sans uppercase ring-sky-500 transition-all after:bg-green-400 active:shadow-md active:ring-2">
                            <p class="transition-all group-active:scale-90"><a href="/areacontroller?areaid=${o.area_id}">View <i class="ml-36 fas fa-chevron-right"></i> </a> </p>
                        </button>
                    </div>    
                </div>
          </div>
        </c:forEach>
      </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
      $(document).ready(function () {
        $(".fade-in").addClass("active");
      });
    </script>
  </body>
</html>
