<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    <title>View</title>
 
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
  
    <!-- header -->
  <!-- prettier-ignore -->
  <%@ include file="components/headermanager.jsp" %>
  <!-- end header -->
  <body class="block overflow-x-hidden mx-auto ">
    <!-- sidebar -->
  <!-- prettier-ignore -->
  <%@ include file="components/sidebarmanager.jsp" %>
  <!-- end sidebar -->
  <div class="flex justify-center pb-2 pt-5 border-b boredr-gray-300">
    <h3 class="text-5xl font-medium text-gray-700">Feedback Information</h3>
  </div>
      
    <!-- component -->
    <main class="antialiased font-sans bg-white rounded-2xl w-[1500]">
      <div class="container mx-auto px-4 sm:px-8">
        <div class="py-8 ml-20">
          <div></div>
          <div class="my-2 flex sm:flex-row flex-col">
            <div class="flex flex-row mb-1 sm:mb-0">
              <div class="relative">
                <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
                </div>
              </div>
              <div class="relative">
                <select class="appearance-none h-full rounded-r border-t sm:rounded-r-none sm:border-r-0 border-r border-b block appearance-none w-full bg-white border-gray-400 text-gray-700 py-2 px-4 pr-8 leading-tight focus:outline-none focus:border-l focus:border-r focus:bg-white focus:border-gray-500">
                  <option>All</option>
                  <option>Processing</option>
                  <option>Approved</option>
                  <option>Rejected</option>
                </select>
                <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
               
                </div>
              </div>
            </div>
            <div class="block relative">
              <span
                class="h-full absolute inset-y-0 left-0 flex items-center pl-2"
              >
                <svg
                  viewBox="0 0 24 24"
                  class="h-4 w-4 fill-current text-gray-500"
                >
                  <path
                    d="M10 4a6 6 0 100 12 6 6 0 000-12zm-8 6a8 8 0 1114.32 4.906l5.387 5.387a1 1 0 01-1.414 1.414l-5.387-5.387A8 8 0 012 10z"
                  ></path>
                </svg>
              </span>
              <input
                placeholder="Search"
                class="appearance-none rounded-r rounded-l sm:rounded-l-none border border-gray-400 border-b block pl-8 pr-6 py-2 w-full bg-white text-sm placeholder-gray-400 text-gray-700 focus:bg-white focus:placeholder-gray-600 focus:text-gray-700 focus:outline-none"
              />
            </div>
          </div>
          <div class="-mx-4 sm:-mx-8 px-4 sm:px-8 py-4 overflow-x-auto">
            <div
              class="inline-block min-w-full shadow rounded-lg overflow-hidden"
            >
             <!-- table -->

<table class="min-w-full">
  <thead>
    <tr>
      
      <th
        class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50 border-r"
      >
        Tiltle
      </th>
      <th
        class="break-all px-6 py-3 text-xs font-medium leading-4  text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50 border-r"
      >
        Purpose
      </th>
      <th
        class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50 border-r"
      >
        Date
      </th>
      <th
        class="break-all px-6 py-3 text-xs font-medium leading-4  text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50 border-r"
      >
        ProcessNote
      </th>
      <th
        class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50 border-r"
      >
        Employee_ID
      </th>
      <th
        class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
      >
        Status
      </th>
    </tr>
  </thead>
            <c:forEach var="f" items="${ListA}">
  <tbody class="bg-white">
    <tr>
     
      <td class="break-all text-xs px-6 py-4  border-b border-gray-200 border-r">
          ${f.title}
      </td>
      <td class="  break-words text-xs px-6 py-4 border-b border-gray-200 border-r">
          ${f.purpose}
      </td>
      <td class="break-all px-6 py-4 text-sm leading-5 text-gray-500 whitespace-no-wrap border-b border-gray-200 border-r">
        ${f.date}
      </td>
      <td class=" break-all text-xs px-6 py-4 border-b border-gray-200 border-r">
          ${f.processnote}
      </td>
      <td class="px-6 py-4 font-bold text-center leading-5 text-black  border-b border-gray-200 border-r">
        ${f.employee_id}
      </td>
      <td class="px-6 py-4 font-bold leading-5 text-green-500 border-b border-gray-200 border-r">
        ${f.status}
         
      <button class="btn group flex  bg-transparent  text-xl  tracking-widest text-white">
            <span class="relative pr-4 pb-1 text-white after:transition-transform after:duration-500 after:ease-out after:absolute after:bottom-0 after:left-0 after:block after:h-[2px] after:w-full after:origin-bottom-right after:scale-x-0 after:bg-blue-500 after:content-[''] after:group-hover:origin-bottom-left after:group-hover:scale-x-100"><a href="update?fid=${f.feedback_id}" class="text-red-500 "> CHECK</a></span>
            <svg viewBox="0 0 46 16" height="10" width="30" xmlns="http://www.w3.org/2000/svg" id="arrow-horizontal" class="-translate-x-2 fill-slate-700 transition-all duration-300 ease-out group-hover:translate-x-1 group-hover:scale-x-105 group-hover:fill-white">     
            </svg>
      </button>
  
      </td>
      
      <td>
          
      </td>
    </tr>
  </tbody>
   </c:forEach>

</table>
          
              
             <!-- component -->

        <div class="grid min-h-[140px] w-full place-items-center overflow-x-scroll rounded-lg p-6 lg:overflow-visible">
            <nav>
                <ul class="flex">
                     <c:forEach begin= "1" end = "${endP}" var="i">
                    <li>
                        <a class="mx-1 flex h-9 w-9 items-center justify-center rounded-full border border-blue-gray-100 bg-transparent p-0 text-sm text-blue-gray-500 transition duration-150 ease-in-out hover:bg-light-300" 
                           href="ListFeedback?index=${i}" aria-label="Previous">
                            ${i}
                        </a>
                    </li>
                   </c:forEach>
                </ul>
            </nav>
        
      </div>

                    
               
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
  </body>
</html>
