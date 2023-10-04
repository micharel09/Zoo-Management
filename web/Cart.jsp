<%-- 
    Document   : Cart
    Created on : Sep 27, 2023, 10:16:31 AM
    Author     : Quan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.tailwindcss.com"></script>
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
        <title>Choose ticket</title>
        <style>
            [x-cloak] {
                display: none;
            }
        </style>
    </head>
    <body class="w-[1500px] block overflow-x-hidden mx-auto">
        <!-- header -->
        <nav class="border-gray-200 bg-green-600">
            <div class="flex p-1">
                <!-- logo -->
                <a href="homepage.jsp" class="flex items-center justify-center w-1/2">
                    <div class="">
                        <img src="img/logo2.png" class="h-20 text-xl" alt="Logo" />
                    </div>
                    <span
                        class="self-center text-4xl font-extralight whitespace-nowrap dark:text-white"
                        >Wild World Zoo</span
                    >
                </a>
                <!-- end logo -->
                <!-- navbar -->
                <div
                    class="items-center justify-between hidden w-full md:flex md:w-auto md:order-1 w-full"
                    id="navbar-user"
                    >
                    <ul
                        class="flex flex-col font-extralight md:p-0 mt-4 borderrounded-lg md:flex-row md:space-x-8 md:mt-0 md:border-0"
                        >
                        <li>
                            <a
                                href="homepage.jsp"
                                class="navbar-text block py-4 pl-4 text-2xl text-gray-900 rounded before:ease relative h-18 w-24 overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700"
                                aria-current="page"
                                >HOME</a
                            >
                        </li>
                        <li>
                            <a
                                href="#"
                                class="navbar-text block py-4 pl-3 text-2xl text-gray-900 rounded before:ease relative h-18 w-24 overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700"
                                >ABOUT</a
                            >
                        </li>
                        <li>
                            <a
                                href="Animals.jsp"
                                class="navbar-text block py-4 pr-4 pl-2 text-2xl text-gray-900 rounded before:ease relative h-18 w-24 overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700"
                                >ANIMAL</a
                            >
                        </li>
                        <li>
                            <a
                                href="#"
                                class="navbar-text block py-4 pl-4 text-2xl text-gray-900 rounded before:ease relative h-18 w-24 overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700"
                                >NEWS</a
                            >
                        </li>
                        <li>
                            <a
                                href="Map.jsp"
                                class="navbar-text block py-4 pl-6 text-2xl text-gray-900 rounded before:ease relative h-18 w-24 overflow-hidden text-white transition-all before:absolute before:right-0 before:top-0 before:h-16 before:w-6 before:translate-x-8 before:fa-rotate-2 before:bg-green-300 before:opacity-4 before:duration-700 hover:shadow-xl hover:before:-translate-x-40 hover:bg-green-700"
                                >MAP</a
                            >
                        </li>
                    </ul>
                </div>
                <!-- end navbar -->
            </div>
        </nav>
        <!-- end header -->
        <!-- Breadcrumb -->
        <nav
            class="flex bg-gray-50 text-gray-700 py-3 px-5 dark:bg-gray-800 dark:border-gray-700"
            aria-label="Breadcrumb"
            >
            <ol class="inline-flex items-center space-x-1 md:space-x-3">
                <li class="inline-flex items-center">
                    <a
                        href="Homepage.html"
                        class="text-sm text-gray-700 hover:text-gray-900 inline-flex items-center dark:text-gray-400 dark:hover:text-white"
                        >
                        <svg
                            class="w-4 h-4 mr-2"
                            fill="currentColor"
                            viewBox="0 0 20 20"
                            xmlns="http://www.w3.org/2000/svg"
                            >
                        <path
                            d="M10.707 2.293a1 1 0 00-1.414 0l-7 7a1 1 0 001.414 1.414L4 10.414V17a1 1 0 001 1h2a1 1 0 001-1v-2a1 1 0 011-1h2a1 1 0 011 1v2a1 1 0 001 1h2a1 1 0 001-1v-6.586l.293.293a1 1 0 001.414-1.414l-7-7z"
                            ></path>
                        </svg>
                        Home
                    </a>
                </li>
                <li aria-current="page">
                    <div class="flex items-center">
                        <svg
                            class="w-6 h-6 text-gray-400"
                            fill="currentColor"
                            viewBox="0 0 20 20"
                            xmlns="http://www.w3.org/2000/svg"
                            >
                        <path
                            fill-rule="evenodd"
                            d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
                            clip-rule="evenodd"
                            ></path>
                        </svg>
                        <span
                            class="text-gray-400 ml-1 md:ml-2 text-sm font-medium dark:text-gray-500"
                            >Cart</span
                        >
                    </div>
                </li>
            </ol>
        </nav>
        <!-- end breadcrumb -->
        <div class="w-[1500] mx-auto bg-green-100">
            <!-- Progress Steps -->
            <div class="w-full">
                <div class="flex justify-center py-4 bg-gray-50 rounded-b-lg">
                    <!-- Bước 1 -->
                    <div class="w-1/6">
                        <div class="relative mb-2">
                            <div
                                class="w-10 h-10 mx-auto bg-green-500 rounded-full text-lg text-white flex items-center"
                                >
                                <span class="text-center text-white w-full">
                                    <i class="fa-solid fa-ticket"></i>
                                </span>
                            </div>
                        </div>
                        <div class="text-xs text-center md:text-base">Choose ticket</div>
                    </div>
                    <!-- Bước 2 -->
                    <div class="w-1/6">
                        <div class="relative mb-2">
                            <div
                                class="absolute flex align-center items-center align-middle content-center"
                                style="
                                width: calc(100% - 2.5rem - 1rem);
                                top: 50%;
                                transform: translate(-50%, -50%);
                                "
                                >
                                <div
                                    class="w-full bg-gray-200 rounded items-center align-middle align-center flex-1"
                                    >
                                    <div
                                        class="w-0 bg-gray-200 py-1 rounded"
                                        style="width: 100%"
                                        ></div>
                                </div>
                            </div>

                            <div
                                class="w-10 h-10 mx-auto bg-gray-300 rounded-full text-lg text-white flex items-center"
                                >
                                <span class="text-center text-white w-full">
                                    <svg
                                        class="w-full fill-current"
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 24 24"
                                        width="24"
                                        height="24"
                                        >
                                    <path
                                        class="heroicon-ui"
                                        d="M19 10h2a1 1 0 0 1 0 2h-2v2a1 1 0 0 1-2 0v-2h-2a1 1 0 0 1 0-2h2V8a1 1 0 0 1 2 0v2zM9 12A5 5 0 1 1 9 2a5 5 0 0 1 0 10zm0-2a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm8 11a1 1 0 0 1-2 0v-2a3 3 0 0 0-3-3H7a3 3 0 0 0-3 3v2a1 1 0 0 1-2 0v-2a5 5 0 0 1 5-5h5a5 5 0 0 1 5 5v2z"
                                        ></path>
                                    </svg>
                                </span>
                            </div>
                        </div>
                        <div class="text-xs text-center md:text-base">Payment</div>
                    </div>
                    <!-- Bước 3 -->
                    <div class="w-1/6">
                        <div class="relative mb-2">
                            <div
                                class="absolute flex align-center items-center align-middle content-center"
                                style="
                                width: calc(100% - 2.5rem - 1rem);
                                top: 50%;
                                transform: translate(-50%, -50%);
                                "
                                >
                                <div
                                    class="w-full bg-gray-200 rounded items-center align-middle align-center flex-1"
                                    >
                                    <div
                                        class="w-0 bg-green-300 py-1 rounded"
                                        style="width: 0%"
                                        ></div>
                                </div>
                            </div>

                            <div
                                class="w-10 h-10 mx-auto bg-white border-2 border-gray-200 rounded-full text-lg text-white flex items-center"
                                >
                                <span class="text-center text-gray-600 w-full">
                                    <svg
                                        class="w-full fill-current"
                                        xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 24 24"
                                        width="24"
                                        height="24"
                                        >
                                    <path
                                        class="heroicon-ui"
                                        d="M12 22a10 10 0 1 1 0-20 10 10 0 0 1 0 20zm0-2a8 8 0 1 0 0-16 8 8 0 0 0 0 16zm-2.3-8.7l1.3 1.29 3.3-3.3a1 1 0 0 1 1.4 1.42l-4 4a1 1 0 0 1-1.4 0l-2-2a1 1 0 0 1 1.4-1.42z"
                                        ></path>
                                    </svg>
                                </span>
                            </div>
                        </div>
                        <div class="text-xs text-center md:text-base">Finished</div>
                    </div>
                </div>
            </div>
            <!-- end Progress Steps -->
            <!-- tickets select-->
            <div class="flex flex-col justify-center space-x-8">
                <div class="relative m-3 flex flex-wrap mx-auto justify-center">
                    <form name="f" action="" method="post">

                        
                        <hr/>
                        <c:forEach items="${requestScope.data}" var="p">
                            <c:set var="id" value="${p.tid}"/>
                            <div
                                class="relative max-w-sm min-w-[340px] bg-white shadow-md rounded-3xl p-2 mx-1 my-3 cursor-pointer bg-green-300"
                                >
                                <div class="overflow-x-hidden rounded-2xl relative">
                                    <img
                                        class="h-40 rounded-2xl w-full object-cover"
                                        src="img/adultticket.jpg"
                                        />
                                </div>
                                <div class="mt-4 pl-2 mb-2 flex justify-between">
                                    <div>
                                        <p class="text-lg font-semibold text-gray-900 mb-0">
                                            ${p.type}
                                        </p>
                                        <p class="text-md text-gray-800 mt-0"><fmt:formatNumber pattern="##.#" value="${(p.price)}"/></p>
                                    </div>
                                    <!-- button select-->
                                    <div class="pt-2">


                                        <div class="flex items-center gap-1">
                                        <input style="text-align: center" type="number" name="num" data-id="${id}" value="1"/>

                                            <input
                                                type="button"
                                                class="inline-block px-6 py-2 pt-2 border-2 border-blue-600 text-blue-600 font-medium text-xs leading-tight uppercase rounded-full hover:bg-black hover:bg-opacity-5 focus:outline-none focus:ring-0 transition duration-150 ease-in-out"
                                                onclick="buy('${id}')" value="Buy item"/>


                                        </div>
                                    </div>
                                    <!-- end button -->
                                </div>
                            </div>
                        </c:forEach>

                    </form>

                </div>

            </div>
            <!-- end ticket select -->
            <a href="show">View(${requestScope.size}) items</a>

            <!-- images preview -->
            <div class="mx-auto container px-6 xl:px-0 py-12">
                <div class="flex flex-col">
                    <div class="flex flex-col justify-center">
                        <div class="relative">
                            <img
                                class="hidden sm:block w-full rounded-t-full"
                                src="img/ppenal3.jpg"
                                alt="sofa"
                                />
                            <img
                                class="sm:hidden w-full"
                                src="https://i.ibb.co/B6qwqPT/jason-wang-Nx-Awry-Abt-Iw-unsplash-1.png"
                                alt="sofa"
                                />
                        </div>
                    </div>
                    <!-- penal left -->
                    <div class="mt-10 grid lg:grid-cols-2 gap-x-8 gap-y-8 items-center">
                        <div
                            class="group group-hover:bg-opacity-60 transition duration-500 relative bg-gray-50 dark:bg-gray-800 dark:hover:bg-gray-700 flex justify-center items-center"
                            >
                            <img
                                class="group-hover:opacity-60 transition duration-500 w-full h-80 object-cover"
                                src="img/penal.png"
                                alt="sofa-2"
                                />
                        </div>
                        <!-- penal right -->
                        <div
                            class="group group-hover:bg-opacity-60 transition duration-500 relative bg-gray-50 dark:bg-gray-800 dark:hover:bg-gray-700 flex justify-center items-center"
                            >
                            <img
                                class="group-hover:opacity-60 transition duration-500 w-full h-80 object-cover"
                                src="img/97.jpg"
                                alt="sofa-2"
                                />
                        </div>
                    </div>
                </div>
            </div>
            <!-- end preview -->
            <!-- cart -->


                        <!-- total amount -->
           
        </div>
    </body>
</html>
<script type="text/javascript">
function buy(id) {
    var inputNum = document.querySelector('input[data-id="' + id + '"]');
    var m = inputNum.value;
    document.f.action = "buy?id=" + id + "&num=" + m;
    document.f.submit();
}


</script>


