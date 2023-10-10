<%-- 
    Document   : updateanimalcage
    Created on : Oct 6, 2023, 1:41:44 PM
    Author     : Quan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link
            href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;1,100;1,200&display=swap"
            rel="stylesheet"
            />
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
        <title>Update Animal Cages</title>
    </head>
    <body class="bg-gray-500">
        <!-- MAIN CONTENT -->
        <section
            class="max-w-4xl p-6 mx-auto bg-white rounded-md shadow-md mt-12 "
            >
            <h3 class="font-bold text-3xl">Edit</h3>
            <form
                action="updateanimalcage"
                method="POST"
                >
                <div class="grid grid-cols-1 gap-6 mt-4 sm:grid-cols-2">
                    <!-- ID Input -->

                    <!-- Title -->
                    <input name="animalcage_id" type="hidden" value="${aa.animalcage_id}"/>
                    <div>
                        <label
                            for="name"
                            class="block text-sm text-gray-500 "
                            >Name</label
                        >

                        <div class="flex items-center mt-2">
                            <i class="fas fa-font absolute w-6 h-6 m-3 flex items-center justify-center"></i>

                            <input
                                name="name"
                                type="text"
                                value="${aa.name}"
                                placeholder="Enter name"
                                class="block w-full py-2.5 rounded-lg pl-11 pr-5 rtl:pr-11 rtl:pl-5"
                                required
                                />
                        </div>

                        <p class="mt-3 text-xs text-red-400">
                        </p>
                    </div>
                    <!-- Thumbnail URL Input -->
                    <div>
                        <label
                            for="area_id"
                            class="block text-sm text-gray-500"
                            >Area_ID</label
                        >





                        <span style="color: red;">Old ${aa.area_id}</span>
                        <br>
                        New
                        <select name="area_id">
                            <c:forEach var="o" items="${area}">
                                <option>
                                    ${o.area_id}
                                </option>
                            </c:forEach>
                        </select>



                        <p class="mt-3 text-xs text-red-400">
                        </p>
                    </div>

                    <!-- RELEASE DATE Input -->
                    <div>
                        <label
                            for="employee_id"
                            class="block text-sm text-gray-500"
                            >Employee_ID</label
                        >
                        <span style="color: red;">Old ${aa.employee_id}</span>
                        <br>
                        New
                        <select name="employee_id">
                            <c:forEach var="o" items="${user}">
                                <option>
                                    ${o.employee_id}
                                </option>
                            </c:forEach>
                        </select>
                        <p class="mt-3 text-xs text-red-400">
                        </p>
                    </div>
                </div>
                <!-- Button: Cancel and Save -->  
                <div class="flex justify-end mt-6">
                    <div class="pr-2">
                        <button class="px-6 py-2.5 leading-5 text-white transition-colors duration-300 transform bg-gray-700 rounded-md hover:bg-gray-600 focus:outline-none focus:bg-gray-600">
                            <a href="animalcagecontroller">Cancel</a>
                        </button>
                    </div>


                    <button class="px-8 py-2.5 leading-5 text-white transition-colors duration-300 transform bg-gray-700 rounded-md hover:bg-gray-600 focus:outline-none focus:bg-gray-600">
                        Save
                    </button>
                </div>
                <!-- end button -->
            </form>
        </section>
    </main>
</body>
</html>

