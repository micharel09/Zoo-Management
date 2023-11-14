<%-- 
    Document   : Schedule_Select_Trainer
    Created on : Oct 20, 2023, 4:43:58 PM
    Author     : ACER
--%>


<%@page import="sample.foodingschedule.AnimalCageDTO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        
         <%
        String NAME_AREA = (String) session.getAttribute("NAME_AREA");
         %>
         <title>Select Cages</title>
  <!-- prettier-ignore -->
  <%@ include file="components/headermanager.jsp" %>
  <!-- end header -->
    </head>
    <body class="overflow-x-auto mx-auto">
    <!-- prettier-ignore -->
    <%@ include file="components/sidebarmanager.jsp" %>
    <!-- end sidebar -->
    <div class="px-3 md:lg:xl:px-40 border-t py-10 bg-opacity-10">
      <div class="mx-auto border-b border-gray-300 text-center">
        <h3 class="text-5xl font-medium text-gray-700 mb-4">
        <%=NAME_AREA%>
        </h3>
      </div>
            <!-- import -->
            <div
            class="w-full bg-green-500 shadow shadow-green-200 py-10 px-20 flex  items-center"
          >
            <p class="text-white">
              <span class="text-2xl font-medium">Add new cages here:</span> <br />
              <span class="text-lg"
                >(Only <span style="color: red;">.xls</span> file are accepted!)
              </span>
            </p>
           <div class="flex mx-4">
            <form
            action="importexcel_feedingSchedule_controller"
            method="post"
            enctype="multipart/form-data"
          >
            <div class="flex">
              <input
                type="file"
                name="excelFile"
                class="text-xl text-gray-900 border border-gray-300 rounded-lg cursor-pointer bg-gray-50 focus:outline-none "
              />
              <input
                class="mr-2 hover:bg-green-400 cursor-pointer none text-white rounded-lg py-3 px-3 text-xl uppercase transition-all  disabled:pointer-events-none  disabled:shadow-none"
                data-ripple-dark="true"
                type="submit"
                value="Import"
              />
            </div>
          </form>
        </div>
          <!-- end import -->
          </div>
      <div
      class="grid grid-cols-1 md:lg:xl:grid-cols-3 group bg-white shadow-xl shadow-neutral-100 border mt-10"
    >
        <%
            List<AnimalCageDTO> listCage = (List<AnimalCageDTO>) session.getAttribute("LIST_ANIMAL_CAGE");;
            if (listCage != null && listCage.size() > 0) {
        %>

        <%!
        String[] animalIcons = {
          "🐾", "🐾", "🐾", "🐾", "🐾", "🐾", "🐾", "🐾", "🐾", "🐾", "🐾", "🐾", "🐾", "🐾", "🐾", "🐾", "🐾"  
        };
        String getRandomAnimalIcon() {
          int randomIndex = (int) (Math.random() * animalIcons.length);
          return animalIcons[randomIndex];
        }
        %>

            <%for (AnimalCageDTO Cage : listCage) {%>
            <form action="Foodingschedule_MainController">
          
                    <input type="hidden" name="ID_Animal_Cage" value="<%=Cage.getAnimalCage_ID()%>"/>
                    <input type="hidden" name="Name_Cage" value="<%=Cage.getName()%>"/>
                    <button 
                    type="submit" name="action" name="Select_Schecdule" value="Select_Schecdule"
                      class="w-full py-10 flex flex-col items-center text-center group md:lg:xl:border-r md:lg:xl:border-b hover:bg-slate-50 cursor-pointer"
                    >
                      <span
                        class="p-5 rounded-full bg-green-300 text-white shadow-lg"
                        style="font-size: 2em; width: 80px; height: 80px; line-height: 40px; text-align: center;"
                      >
                        <%= getRandomAnimalIcon() %>
                      </span>
                      <p class="text-4xl text-slate-700 mt-3">
                        <%= Cage.getName() %>
                      </p>
                      <p class="text-4xl text-slate-700 mt-3">
                        <%=Cage.getEmployee_ID()%>
                      </p>
                      <p class="mt-2 text-sm text-slate-500">
                        <input type="hidden" name="ID_Animal_Cage" value="<%= Cage.getAnimalCage_ID() %>" />
                        <input type="hidden" name="Name_Cage" value="<%= Cage.getName() %>" />
                      </p>
                    </button>
            </form>
          <% }%>
      </div>
      <%}%> 
    </div>
  </body>
</html>
