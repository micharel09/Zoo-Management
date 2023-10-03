<%--
    Document   : user
    Created on : May 31, 2023, 2:30:17 PM
    Author     : HoangNQ
--%>

<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <script>document.documentElement.classList.add('js')</script>
    <script src="https://unpkg.com/taos@1.0.5/dist/taos.js"></script>
    <script src="https://kit.fontawesome.com/936766a5f7.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="area.css">
    <title>Area</title>
</head>
<style>
    
.h-60{
  height: 14rem;
}

.w-128{
  width: 32rem;
}
    button {
        z-index: 1;
    }

    button::after {
        content: '';
        z-index: -1;
        position: absolute;
        width: 100%;
        height: 100%;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        transform: translateX(-100%);
        transition: transform 600ms cubic-bezier(0, .70, .60, 1);
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
</style>
<body class="bg-[url('img/grassy-field-with-trees-giraffes-walking-around-with-light-blue-sky-background.jpg')]" style="width: 100%;" >
    <!--header-->
    
    <div class="backgroundimg" style="width: 100%;">
        <div class="  overflow-hidden p-12 text-center bg-center mr7  " style="background-image: url('img/3045dfeefd5628087147.jpg'); height: 100px; width: 100%;">
        <img style="bottom: 635px; left: 300px;" class="absolute w-44  " src="/img//377487712_708998067736035_5705167264383840128_n.png" alt="">   
        <h1 class="uppercase font-bold text-2xl text-green-300 ml-96">Login as: </h1>
    </div>
      
    <!--Sidebar-->    

 <nav class="z-20 flex shrink-0 grow-0 justify-around gap-4 border-t border-gray-200 bg-white/50 p-2.5 shadow-lg backdrop-blur-lg dark:border-slate-600/60 dark:bg-slate-800/50 fixed top-2/4 -translate-y-2/4 left-6 min-h-[auto] min-w-[64px] flex-col rounded-lg border">
    <a href="#profile" class="flex aspect-square min-h-[32px] w-16 flex-col items-center justify-center gap-1 rounded-md p-1.5 bg-indigo-50 text-indigo-600 dark:bg-sky-900 dark:text-sky-50">
        <!-- HeroIcon - User -->
        <i class="fa-regular fa-folder-open"></i>
        <small class="text-center text-xs font-medium"> Area </small>
    </a>

    <a href="#analytics"class="flex aspect-square min-h-[32px] w-16 flex-col items-center justify-center gap-1 rounded-md p-1.5 text-gray-700 hover:bg-gray-100 dark:text-gray-400 dark:hover:bg-slate-800">
        <!-- HeroIcon - Chart Bar -->
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
            <path stroke-linecap="round" stroke-linejoin="round" d="M21 7.5l-9-5.25L3 7.5m18 0l-9 5.25m9-5.25v9l-9 5.25M3 7.5l9 5.25M3 7.5v9l9 5.25m0-9v9" />
          </svg>
          

        <small class="text-center text-xs font-medium"> Feedback </small>
    </a>

    <a
        href="#settings"
        class="flex aspect-square min-h-[32px] w-16 flex-col items-center justify-center gap-1 rounded-md p-1.5 text-gray-700 hover:bg-gray-100 dark:text-gray-400 dark:hover:bg-slate-800"
    >
    <!-- HeroIcon - Cog-6-tooth -->
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
        <path stroke-linecap="round" stroke-linejoin="round" d="M15 19.128a9.38 9.38 0 002.625.372 9.337 9.337 0 004.121-.952 4.125 4.125 0 00-7.533-2.493M15 19.128v-.003c0-1.113-.285-2.16-.786-3.07M15 19.128v.106A12.318 12.318 0 018.624 21c-2.331 0-4.512-.645-6.374-1.766l-.001-.109a6.375 6.375 0 0111.964-3.07M12 6.375a3.375 3.375 0 11-6.75 0 3.375 3.375 0 016.75 0zm8.25 2.25a2.625 2.625 0 11-5.25 0 2.625 2.625 0 015.25 0z" />
      </svg>
      
        <small class="text-center text-xs font-medium"> Zoo Trainer</small>
    </a>

    <hr class="dark:border-gray-700/60" />

    <a
        href="/"
        class="flex h-16 w-16 flex-col items-center justify-center gap-1 text-fuchsia-900 dark:text-gray-400"
    >
    <!-- HeroIcon - Home Modern -->
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
        <path stroke-linecap="round" stroke-linejoin="round" d="M15 9h3.75M15 12h3.75M15 15h3.75M4.5 19.5h15a2.25 2.25 0 002.25-2.25V6.75A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25v10.5A2.25 2.25 0 004.5 19.5zm6-10.125a1.875 1.875 0 11-3.75 0 1.875 1.875 0 013.75 0zm1.294 6.336a6.721 6.721 0 01-3.17.789 6.721 6.721 0 01-3.168-.789 3.376 3.376 0 016.338 0z" />
      </svg>
        <small className="text-xs font-medium">Profile</small>
    </a>
    </nav>

<!--Area List here-->
  <!--area A B-->
  <form action="ManagerController" method="POST">
  <c:forEach begin="0" end="3" items="${a}" var="o">
<div class="ml-36 mt-10 ">
    <div id="app" class="bg-white w-128 h-60 rounded shadow-md flex card text-grey-darkest ">            
      <img class="w-1/2 h-full rounded-l-sm" src="/img/a.png" alt="Room Image">
        <div class="w-full flex flex-col">
            <div class="p-4 pb-0 flex-1">
                <h3 class="font-normal mb-7 text-grey-darkest">Location ${o.arealocation}</h3>                   
                <span class=" text-5xl text-grey-darkest">${o.genre}</span>
            </div>
            <button class=" relative overflow-hidden rounded shadow-inner px-2 py-3 font-sans uppercase  ring-sky-500 transition-all after:bg-green-400 active:shadow-md active:ring-2">
                <p class=" transition-all group-active:scale-90"><a href="/cagecontroller?area=${o.arealocation}&areaid=${o.area_id}">View</a> <i class=" ml-36 fas fa-chevron-right"></i></p>                                  
            </button>
            <button class=" relative overflow-hidden rounded shadow-inner px-2 py-3 font-sans uppercase  ring-sky-500 transition-all after:bg-yellow-400 active:shadow-md active:ring-2">
                <p class=" transition-all group-active:scale-90">Manage <i class=" ml-28 fas fa-chevron-right"></i></p>                        
            </button>
        </div>
    </div>
  
</c:forEach> 

 
          
   </div>       
     </form>   

</body>
</html>