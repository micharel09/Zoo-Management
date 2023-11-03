<%@page import="sample.foodingschedule.ScheduleDTO"%>
<!-- prettier-ignore -->
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
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
.tooltip {
  position: relative;
  z-index: 100;
}

.tooltip:before, 
.tooltip:after {
  position: absolute;
  opacity: 0;
  visibility: hidden;
  transition: all 0.5s;
  z-index: 100;

}

.tooltip:hover:before,
.tooltip:hover:after {
  opacity: 1;
  visibility: visible;
}

.tooltip-right:before, 
.tooltip-right:after {
  left: 100%;
}
.tooltip-right:after {
  content: attr(data-tip);
  padding: 4px 8px;
  border-radius: 5px;
  text-align: center;
  width: max-content;
  min-width: 100px;
  font-size: .75rem; 
  background: #333;
  color: #fff;
  bottom: 100%;
  left: 50%;
  transform: translateX(-50%); 
  transform: translateY(-130%); 
}
      </style>
  </head>
  <!-- prettier-ignore -->
  <%@ include file="components/headertrainer.jsp" %>
  <!-- end header -->
  <body class="overflow-y-hidden ">
    <!-- prettier-ignore -->
    <%@ include file="components/sidebartrainer.html" %>
    <!-- end side bar -->

    <% String day = (String) session.getAttribute("DAY"); String name_cage =
    (String) session.getAttribute("NAME_CAGE"); String name_area = (String)
    session.getAttribute("NAME_AREA"); %>
    <main class="antialiased font-sans bg-white h-screen w-[1500px] mx-auto">
      <div class="flex justify-center pb-2 pt-5 border-b bored-gray-300">
        <h3 class="text-5xl  text-gray-700">Food Schedule Of<%= name_cage %> In <%= name_area %> Area</h3>
      </div>
 
      <div class="container mx-auto mt-10">
        <div class="text-gray-700">
          <!-- Component Start -->
          <div class="flex flex-grow w-full h-full overflow-auto">
            <div class="flex flex-col flex-grow">
              <%
              String error = (String) request.getAttribute("MESSAGE");
              if (error == null) {
                  error = "";
              }
          %>
          <%
          List<ScheduleDTO> listSchedule = (List<ScheduleDTO>) session.getAttribute("LIST_SCHEDULE");
          if (listSchedule != null && listSchedule.size() > 0) {
      %>
              <div class="flex items-center mt-4">
                <div class="flex">
                  
                    <form class="flex" action="Foodingschedule_MainController">
                      
                      <label for="Gender" class="text-xl">Choose Week:</label>
                      <div class="mr-2">
                        <div>
                        <select                    
                        class="w-full rounded-md border border-[#e0e0e0] bg-white  px-6 text-xl text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
                        name="Get_Day" id="Get_Day">
                            <option  class="text-xl" value="2023-10-16" <%=day.equals("2023-10-16") ? "selected" : ""%>>16-10 to 22-10</option>
                            <option  class="text-xl" value="2023-10-23" <%=day.equals("2023-10-23") ? "selected" : ""%>>23-10 to 29-10</option>
                            <option  class="text-xl" value="2023-10-30" <%=day.equals("2023-10-30") ? "selected" : ""%>>30-10 to 05-11</option>
                            <option  class="text-xl" value="2023-11-06" <%=day.equals("2023-11-06") ? "selected" : ""%>>06-11 to 12-11</option>
                            <option  class="text-xl" value="2023-11-13" <%=day.equals("2023-11-13") ? "selected" : ""%>>13-11 to 19-11</option>
                            <option  class="text-xl" value="2023-11-20" <%=day.equals("2023-11-20") ? "selected" : ""%>>20-11 to 26-11</option>
                        </select>
                      </div>
                      
                      </div>
                <!-- button search -->
                <button
                type="submit" name="action" name="Search" value="Search"
                class="inline-flex items-center px-3 ml-2 text-sm text-white bg-green-500 rounded-lg border border-green-700 hover:bg-green-400 focus:ring-4 focus:outline-none focus:ring-green-300"
              >
                <svg
                  class="mr-2 -ml-1 w-5 h-5"
                  fill="none"
                  stroke="currentColor"
                  viewBox="0 0 24 24"
                  xmlns="http://www.w3.org/2000/svg"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"
                  ></path>
                </svg>
                Search
              </button>
                    </form>
                </div>
              </div>
         
    
          <h3 class="text-red-500"><%= error%></h3>
              <div class="grid grid-cols-7 mt-4">
                <div class="pl-1 text-xl">Mon</div>
                <div class="pl-1 text-xl">Tue</div>
                <div class="pl-1 text-xl">Wed</div>
                <div class="pl-1 text-xl">Thu</div>
                <div class="pl-1 text-xl">Fri</div>
                <div class="pl-1 text-xl">Sat</div>
                <div class="pl-1 text-xl">Sun</div>
              </div>
            
              <div
                class="grid flex-grow w-full h-full grid-cols-7  gap-px pt-px mt-1 bg-gray-200 overflow-x-hidden overflow-y-hidden"
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
                      <span class="ml-2 text-lg leading-none truncate bg-green-500 text-white px-2 rounded py-1"><%=schedule.getStart_Time()%> to <%=schedule.getEnd_Time()%></span>
                     
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
                 
                        <input type="hidden" name="Id_Schedule" value="<%=schedule.getID()%>"/>
                        
                        <input type="hidden" name="Day" value="<%=schedule.getDay_Feeding()%>"/>
                        <input type="hidden" name="StartTime" value="<%=schedule.getStart_Time()%>"/>
                        <input type="hidden" name="EndTime" value="<%=schedule.getEnd_Time()%>"/>
                  
                      <!-- photo -->
                        <div class="tooltip tooltip-right" data-tip="Click here to upload">
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
                        </div>
                </form>         
                </div>
                <%}%>
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
                    <span class="flex-shrink-0 w-2 h-2 bg-gray-500 rounded-full"></span>
                      <span class="ml-2 text-lg leading-none truncate bg-green-500 text-white px-2 rounded py-1"><%=schedule.getStart_Time()%> to <%=schedule.getEnd_Time()%></span>
                     
                    </button>
                    <%
                    String note = schedule.getNote();
                    String cssClass = "notyet-text";
                    if ("Absent".equals(note)) {
                      cssClass = "absent-text";
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
              
                        <input type="hidden" name="Id_Schedule" value="<%=schedule.getID()%>"/>
                        
                        <input type="hidden" name="Day" value="<%=schedule.getDay_Feeding()%>"/>
                        <input type="hidden" name="StartTime" value="<%=schedule.getStart_Time()%>"/>
                        <input type="hidden" name="EndTime" value="<%=schedule.getEnd_Time()%>"/>
                  <!-- photo -->
                <div class="tooltip tooltip-right" data-tip="Click here to upload">
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
                </div>
                </form>       
                </div>
                <%}%> 
          <!-- Component End  -->
        </div>
            <!-- footer -->
            <div class="mt-4 bg-white border-b">

              <h2 class="font-bold">More Note:</h2>
              <p class="pl-5 mb-2">
                <span class="text-green-500">&#8226;</span> (<span class="text-green-500">Present</span>): You had attended this activity
              </p>
              <p class="pl-5 mb-2">
                <span class="text-red-500">&#8226;</span> (<span class="text-red-500">Absent</span>): You had NOT attended this activity
              </p>
              <p class="pl-5 mb-2">
                <span class="text-black">&#8226;</span> (<span class="text-black">Not Yet</span>): No data was given
              </p>
            </div>
            <% } %>
            </div>
          </div>
        </div>
      </div>
    </main>
  </body>
</html>
