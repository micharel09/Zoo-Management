<%-- 
    Document   : Schedule_Animal_Cage
    Created on : Oct 20, 2023, 9:58:24 AM
    Author     : ACER
--%>

<%@page import="sample.foodingschedule.ScheduleDTO"%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    <style>
        .present-text {
          color: green;
        }
      
        .absent-text {
          color: red; 
        }
        .notyet-text {
          color: black;
}
      </style>
        <title>foodingschedule</title>
    </head>
  <!-- prettier-ignore -->
  <%@ include file="components/headertrainer.jsp" %>
  <!-- end header -->
    <body class="overflow-y-hidden">
    <!-- prettier-ignore -->
    <%@ include file="components/sidebartrainer.html" %>
    <!-- end side bar -->
       <%
        String day = (String) session.getAttribute("DAY");
        String name_cage = (String) session.getAttribute("NAME_CAGE");
        String name_area = (String) session.getAttribute("NAME_AREA");
       %>
       <main class="antialiased font-sans bg-white h-screen">
        <div class="flex justify-center pb-2 pt-5 border-b bored-gray-300">
          <h3 class="text-5xl  text-gray-700">Schedule <%= name_cage %> Cage of <%= name_area %> Area</h3>
        </div>
       
        <div class="container mx-auto mt-10">
            <div class="text-gray-700">
              <!-- Component Start -->
              <div class="flex flex-grow w-full h-full overflow-auto">
                <div class="flex flex-col flex-grow">
                  <div class="flex items-center mt-4">
                    <div class="flex">
                        <form action="Foodingschedule_MainController">
                            <label for="Gender">Week</label>
                            <select name="Get_Day" id="Get_Day">
                                <option value="2023-10-16" <%=day.equals("2023-10-16") ? "selected" : ""%>>16-10 to 22-10</option>
                                <option value="2023-10-23" <%=day.equals("2023-10-23") ? "selected" : ""%>>23-10 to 29-10</option>
                                <option value="2023-10-30" <%=day.equals("2023-10-30") ? "selected" : ""%>>30-10 to 05-11</option>
                                <option value="2023-11-06" <%=day.equals("2023-11-06") ? "selected" : ""%>>06-11 to 12-11</option>
                                <option value="2023-11-13" <%=day.equals("2023-11-13") ? "selected" : ""%>>13-11 to 19-11</option>
                                <option value="2023-11-20" <%=day.equals("2023-11-20") ? "selected" : ""%>>20-11 to 26-11</option>
                            </select>
                            <input type="submit" name="action" name="Search" value="Search"/>
                        </form>
                    </div>
                </div>
                <div class="grid grid-cols-7 mt-4">
                  <div class="pl-1 text-xl">Mon</div>
                  <div class="pl-1 text-xl">Tue</div>
                  <div class="pl-1 text-xl">Wed</div>
                  <div class="pl-1 text-xl">Thu</div>
                  <div class="pl-1 text-xl">Fri</div>
                  <div class="pl-1 text-xl">Sat</div>
                  <div class="pl-1 text-xl">Sun</div>
                </div>
                <%
                List<ScheduleDTO> listSchedule = (List<ScheduleDTO>) session.getAttribute("LIST_SCHEDULE");
                if (listSchedule != null && listSchedule.size() > 0) {
            %>
                <div
                  class="grid flex-grow w-full h-full grid-cols-7  gap-px pt-px mt-1 bg-gray-200"
                >
                <%
                int i;
                  for (i = 0; i < 7; i++) {
                  ScheduleDTO schedule = listSchedule.get(i);
                  %>
                  <div class="relative flex flex-col bg-white group flex-grow">
                    <div class="flex flex-col px-1 py-1 overflow-auto">
                      <span class=" text-lg font-bold">Morning (<%=schedule.getDay_Feeding()%>)</span>
  
                      <span class="ml-2 text-xl leading-none truncate mb-2">Food: <%=schedule.getName_Food()%></span>
                       
                      <button
                        class="flex items-center flex-shrink-0 h-5 px-1 mb-4 hover:bg-gray-200"
                      >
                        <span
                          class="flex-shrink-0 w-2 h-2 border border-gray-500 rounded-full"
                        ></span>
                        <span class="ml-2 text-xl leading-none truncate"><%=schedule.getStart_Time()%> to <%=schedule.getEnd_Time()%></span>
                       
                      </button>
                      <%
                      String note = schedule.getNote();
                      String cssClass = "notyet-text";
                      if ("Absent".equals(note)) {
                        cssClass = "absent-text"; // Nếu trạng thái là "absent", sử dụng lớp "absent-text"
                      } else if ("Present".equals(note)) {
                          cssClass = "present-text";
                      } 
                      %>
                      <button class="flex items-center flex-shrink-0 h-5 px-1 mb-4 hover:bg-gray-200">
                        <span class="<%= cssClass %> ml-2 text-xl leading-none truncate"><%= note %></span>
                      </button>
                      
                      <td><img style="height: 100px;width: 210px" src="<%=schedule.getPhoto()%>"  /></td>                  </div>
                    
                    <form action="Foodingschedule_MainController">
                      <td>
                          <input type="hidden" name="Id_Schedule" value="<%=schedule.getID()%>"/>
                          
                          <input type="hidden" name="Day" value="<%=schedule.getDay_Feeding()%>"/>
                          <input type="hidden" name="StartTime" value="<%=schedule.getStart_Time()%>"/>
                          <input type="hidden" name="EndTime" value="<%=schedule.getEnd_Time()%>"/>
          
          
                          <button type="submit" name="action" name="Update_Picture_To_Attendance" value="Update_Picture_To_Attendance"
                      class="absolute bottom-0 right-0 flex items-center justify-center  w-6 h-6 mb-2 mr-2 text-white bg-gray-400 rounded group-hover:flex hover:bg-gray-500"
                    >
                      <svg
                        class="w-5 h-5"
                        viewBox="0 0 20 20"
                        fill="currentColor"
                        class="w-6 h-6 plus"
                      >
                        <path
                          fill-rule="evenodd"
                          d="M10 5a1 1 0 011 1v3h3a1 1 0 110 2h-3v3a1 1 0 11-2 0v-3H6a1 1 0 110-2h3V6a1 1 0 011-1z"
                          clip-rule="evenodd"
                        ></path>
                      </svg>
                    </button>
                      </td>
                  </form>         
                  </div>
                  <%
  }
  %>
                  <!-- afternoon -->
                  <%
                  for (i = 7; i < 14; i++) {
                      ScheduleDTO schedule = listSchedule.get(i);
                  %>
                  <div class="relative flex flex-col bg-white group flex-grow">
                    <span class="text-lg font-bold">Afternoon (<%=schedule.getDay_Feeding()%>)</span>
                    <div class="flex flex-col px-1 py-1 overflow-auto">
                      <span class="ml-2 text-xl leading-none truncate mb-2">Food: <%=schedule.getName_Food()%></span>
                       
                      <button
                        class="flex items-center flex-shrink-0 h-5 px-1 mb-4 hover:bg-gray-200"
                      >
                        <span
                          class="flex-shrink-0 w-2 h-2 border border-gray-500 rounded-full"
                        ></span>
                        <span class="ml-2 text-xl leading-none truncate"><%=schedule.getStart_Time()%> to <%=schedule.getEnd_Time()%></span>
                       
                      </button>
                      <%
                      String note = schedule.getNote();
                      String cssClass = "notyet-text";
                      if ("Absent".equals(note)) {
                        cssClass = "absent-text"; // Nếu trạng thái là "absent", sử dụng lớp "absent-text"
                      } else if ("Present".equals(note)) {
                          cssClass = "present-text";
                      } 
                      %>
                      <button class="flex items-center flex-shrink-0 h-5 px-1 mb-4 hover:bg-gray-200">
                        <span class="<%= cssClass %> ml-2 text-xl leading-none truncate"><%= note %></span>
                      </button>
                      <img style="height: 100px;width: 210px" src="<%=schedule.getPhoto()%>"  />
                    </div>
                    <form action="Foodingschedule_MainController">
                      <td>
                          <input type="hidden" name="Id_Schedule" value="<%=schedule.getID()%>"/>
                          
                          <input type="hidden" name="Day" value="<%=schedule.getDay_Feeding()%>"/>
                          <input type="hidden" name="StartTime" value="<%=schedule.getStart_Time()%>"/>
                          <input type="hidden" name="EndTime" value="<%=schedule.getEnd_Time()%>"/>
          
          
                          <button type="submit" name="action" name="Update_Picture_To_Attendance" value="Update_Picture_To_Attendance"
                      class="absolute bottom-0 right-0 flex items-center justify-center  w-6 h-6 mb-2 mr-2 text-white bg-gray-400 rounded group-hover:flex hover:bg-gray-500"
                    >
                      <svg
                        class="w-5 h-5"
                        viewBox="0 0 20 20"
                        fill="currentColor"
                        class="w-6 h-6 plus"
                      >
                        <path
                          fill-rule="evenodd"
                          d="M10 5a1 1 0 011 1v3h3a1 1 0 110 2h-3v3a1 1 0 11-2 0v-3H6a1 1 0 110-2h3V6a1 1 0 011-1z"
                          clip-rule="evenodd"
                        ></path>
                      </svg>
                    </button>
                      </td>
                  </form>       
                  </div>
                  <%
  }
  %>
                 
      <% 
  }  %>
</div>
</div>
</main>
    </body>
</html>
