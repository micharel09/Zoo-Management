<%-- Document : sidebarmanager.jsp Created on : Oct 19, 2023, 9:29:37 PM Author
: Quan --%> <%@page import="sample.user.UserDTO"%> <%@page
contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="import" href="components/sidebarmanager.jsp" />
  </head>
  <body>
    <!--SIDE BAR HERE-->
    <nav
      class="z-20 flex shrink-0 grow-0 justify-around gap-4 border-t border-gray-200 bg-white/50 p-2.5 shadow-lg backdrop-blur-lg fixed top-2/4 -translate-y-2/4 left-6 min-h-[auto] min-w-[64px] flex-col rounded-lg border"
    >
      <a
        href="managercontroller"
        class="flex aspect-square min-h-[32px] w-16 flex-col items-center justify-center gap-1 rounded-md p-1.5 text-gray-700 hover:bg-gray-100"
      >
        <!-- HeroIcon - User -->
        <i class="fa-regular fa-folder-open text-2xl"></i>

        <small class="text-center text-xs font-medium"> Area </small>
      </a>

      <a
        href="/ListFeedback"
        class="flex aspect-square min-h-[32px] w-16 flex-col items-center justify-center gap-1 rounded-md p-1.5 text-gray-700 hover:bg-gray-100"
      >
        <!-- HeroIcon - Chart Bar -->
        <i class="fa-regular fa-comment-dots text-3xl"></i>
        <small class="text-center text-xs font-medium"> Feedback </small>
      </a>

      <a
        href="/NewsControl"
        class="flex aspect-square min-h-[32px] w-16 flex-col items-center justify-center gap-1 rounded-md p-1.5 text-gray-700 hover:bg-gray-100"
      >
        <!-- HeroIcon - Cog-6-tooth -->
        <i class="fa-regular fa-newspaper text-2xl"></i>

        <small class="text-center text-xs font-medium"> News</small>
      </a>

      <a
        href="Schedule_Select_Area.jsp"
        class="flex aspect-square min-h-[32px] w-16 flex-col items-center justify-center gap-1 rounded-md p-1.5 text-gray-700 hover:bg-gray-100"
      >
        <!-- HeroIcon - Cog-6-tooth -->
        <i class="fa-solid fa-calendar-days text-2xl"></i>

        <small class="text-center text-xs font-medium"> Schedule</small>
      </a>

      <hr class="dark:border-gray-700/60" />

      <a
        href="updatemanager"
        class="flex h-16 w-16 flex-col items-center justify-center gap-1 text-fuchsia-900 dark:text-gray-500"
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
        <small className="text-xs font-medium">Profile</small>
      </a>
    </nav>
  </body>
</html>
