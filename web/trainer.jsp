<%-- Document : user Created on : May 31, 2023, 2:30:17 PM Author : HoangNQ --%>
<%@page import="java.util.List"%> <%@page import="sample.user.UserDTO"%> <%@page
contentType="text/html" pageEncoding="UTF-8"%> <%@taglib prefix="c"
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
    <link rel="stylesheet" href="area.css" />
    <link
      rel="stylesheet"
      href="https://horizon-tailwind-react-corporate-7s21b54hb-horizon-ui.vercel.app/static/css/main.d7f96858.css"
    />

    <title>Trainer</title>
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
      transform: translateY(10px);
      transition: opacity 0.5s ease, transform 0.5s ease;
    }

    .fade-in.active {
      opacity: 1;
      transform: translateY(0);
    }
    .fade-in-up {
      animation: fadeInUp 1s;
    }

    @keyframes fadeInUp {
      from {
        opacity: 0;
        transform: translateY(20px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    /* overlay */
    .overlay {
      position: fixed;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      background: rgba(0, 0, 0, 0.5);
      z-index: 999;
    }
    .content {
      position: relative;
      z-index: 1000;
    }
  </style>

  <!-- header -->
  <!-- prettier-ignore -->
  <%@ include file="components/headertrainer.jsp" %>
  <!-- end header -->
  <body
    class="bg-[url('img/grassy-field-with-trees-giraffes-walking-around-with-light-blue-sky-background.jpg')]"
  >
    <div class="overlay"></div>
    <div class="content">
      <div
        class="fade-in-up flex flex-col justify-center items-center h-[80vh]"
      >
        <div
          class="flex w-full flex-col rounded-3xl bg-green-600 px-[50px] py-[30px] md:px-[64px] md:py-[80px] max-w-[95%] xl:max-w-[900px] w-[95%]"
        >
          <div class="w-full">
            <h4 class="mb-[14px] text-5xl font-bold text-white md:text-4xl">
              Welcome back, <%=loginUser.getFullname()%>
            </h4>

            <p class="mb-[40px] text-xl font-medium text-[#E3DAFF] md:text-2xl">
              Enter in this creative world. Discover now the latest NFTs or
              start creating your own!
            </p>
            <div class="mt-[80px] flex items-center justify-center">
              <!--SIDE BAR HERE-->
              <nav
                class="z-20 flex justify-center items-center shrink-0 grow-0 gap-16 border-t border-gray-200 bg-white/50 p-6 shadow-lg backdrop-blur-lg dark:border-slate-600/60 dark:bg-slate-800/50 rounded-lg border"
              >
                <a
                  href="ListTrainerFeedback"
                  class="flex aspect-square min-h-[32px] w-16 flex-col items-center justify-center gap-1 rounded-md p-1.5 text-gray-700 hover:bg-gray-100 dark:text-gray-400 dark:hover:bg-slate-800"
                  style="transform: scale(2)"
                >
                  <!-- HeroIcon - Chart Bar -->
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="1.5"
                    stroke="currentColor"
                    class="w-6 h-6"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M7.5 8.25h9m-9 3H12m-9.75 1.51c0 1.6 1.123 2.994 2.707 3.227 1.129.166 2.27.293 3.423.379.35.026.67.21.865.501L12 21l2.755-4.133a1.14 1.14 0 01.865-.501 48.172 48.172 0 003.423-.379c1.584-.233 2.707-1.626 2.707-3.228V6.741c0-1.602-1.123-2.995-2.707-3.228A48.394 48.394 0 0012 3c-2.392 0-4.744.175-7.043.513C3.373 3.746 2.25 5.14 2.25 6.741v6.018z"
                    />
                  </svg>

                  <small class="text-center text-xs font-medium">
                    Feedback
                  </small>
                </a>

                <a
                  href="/foodschedulecontroller"
                  class="flex aspect-square min-h-[32px] w-16 flex-col items-center justify-center gap-1 rounded-md text-gray-700 hover:bg-gray-100 dark:text-gray-400 dark:hover:bg-slate-800"
                  style="transform: scale(2)"
                >
                  <!-- HeroIcon - Cog-6-tooth -->
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="1.5"
                    stroke="currentColor"
                    class="w-6 h-6"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M2.25 7.125C2.25 6.504 2.754 6 3.375 6h6c.621 0 1.125.504 1.125 1.125v3.75c0 .621-.504 1.125-1.125 1.125h-6a1.125 1.125 0 01-1.125-1.125v-3.75zM14.25 8.625c0-.621.504-1.125 1.125-1.125h5.25c.621 0 1.125.504 1.125 1.125v8.25c0 .621-.504 1.125-1.125 1.125h-5.25a1.125 1.125 0 01-1.125-1.125v-8.25zM3.75 16.125c0-.621.504-1.125 1.125-1.125h5.25c.621 0 1.125.504 1.125 1.125v2.25c0 .621-.504 1.125-1.125 1.125h-5.25a1.125 1.125 0 01-1.125-1.125v-2.25z"
                    />
                  </svg>

                  <small class="text-center text-xs font-medium">
                    Schedule
                  </small>
                </a>

                <a
                  href="login.html"
                  class="flex aspect-square min-h-[32px] w-16 flex-col items-center justify-center gap-1 rounded-md p-1.5 text-gray-700 hover:bg-gray-100 dark:text-gray-400 dark:hover:bg-slate-800"
                  style="transform: scale(2)"
                >
                  <!-- HeroIcon - Home Modern -->
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke-width="1.5"
                    stroke="currentColor"
                    class="w-6 h-6"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      d="M15 9h3.75M15 12h3.75M15 15h3.75M4.5 19.5h15a2.25 2.25 0 002.25-2.25V6.75A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25v10.5A2.25 2.25 0 004.5 19.5zm6-10.125a1.875 1.875 0 11-3.75 0 1.875 1.875 0 013.75 0zm1.294 6.336a6.721 6.721 0 01-3.17.789 6.721 6.721 0 01-3.168-.789 3.376 3.376 0 016.338 0z"
                    />
                  </svg>
                  <small className="text-xs font-medium">Profile</small></a
                >
              </nav>

              <!-- end sidebar -->
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
