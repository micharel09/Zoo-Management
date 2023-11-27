<%-- Document : ticket_dasboard Created on : Oct 9, 2023, 10:47:51 PM Author :
ACER --%> <%@page import="sample.ticket.OrderDetailDTO"%> <%@page
    import="sample.ticket.OrdersDTO"%> <%@page import="java.util.List"%> <%@page
        import="java.util.List"%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                <link
                    rel="stylesheet"
                    href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"
                    />
                <link
                    href="https://fonts.googleapis.com/css?family=Merriweather:400,900,900i"
                    rel="stylesheet"
                    />

                <title>Ticket Dashboard</title>
            </head>
            <body>
                <div>
                    <div x-data="{ sidebarOpen: false }" class="flex h-screen bg-gray-200">
                        <!-- prettier-ignore -->
                        <%@ include file="components/sidebaradmin.html" %>
                        <div class="flex flex-col flex-1 overflow-hidden">
                            <!-- header -->
                            <!-- prettier-ignore -->
                            <%@ include file="components/headeradmin.jsp" %>
                            <main class="flex-1 overflow-x-hidden bg-gray-200">

                                <!--DASHBOARD-->
                                <% int Count_T01 = (int) session.getAttribute("TOTAL_TICKET_T01");
                                    int Count_T02 = (int) session.getAttribute("TOTAL_TICKET_T02");
                                    int Count_Ticket = (int) session.getAttribute("TOTAL_TICKET");
                                    Double Price_Total_Tmp = (Double) session.getAttribute("PRICE_TOTAL_TMP");

                                    int Count_T01_DASHBOARD = (int) session.getAttribute("TOTAL_TICKET_T01_DASHBOARD");
                                    int Count_T02_DASHBOARD = (int) session.getAttribute("TOTAL_TICKET_T02_DASHBOARD");
                                    int Count_Ticket_DASHBOARD = (int) session.getAttribute("TOTAL_TICKET_DASHBOARD");
                                    String Price_Total_Tmp_DASHBOARD = (String) session.getAttribute("PRICE_TOTAL_TMP_DASHBOARD");

                                %>





                                <div class="container px-6 py-8 mx-auto">
                                    <main class="mx-auto">


                                        <div class="grid grid-cols-12 gap-24">
                                            <div class="grid grid-cols-12 col-span-12 gap-6 xxl:col-span-9">
                                                <div class="col-span-12 ">
                                                    <div class="flex items-center h-10 intro-y">

                                                    </div>
                                                    <div class="grid grid-cols-12 gap-6 mt-5">
                                                        <a class="transform  hover:scale-105 transition duration-300 shadow-xl rounded-lg col-span-12 sm:col-span-6 xl:col-span-3 intro-y bg-white"
                                                           href="#">
                                                            <div class="p-5">
                                                                <div class="flex justify-between">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M6 6.878V6a2.25 2.25 0 012.25-2.25h7.5A2.25 2.25 0 0118 6v.878m-12 0c.235-.083.487-.128.75-.128h10.5c.263 0 .515.045.75.128m-12 0A2.25 2.25 0 004.5 9v.878m13.5-3A2.25 2.25 0 0119.5 9v.878m0 0a2.246 2.246 0 00-.75-.128H5.25c-.263 0-.515.045-.75.128m15 0A2.25 2.25 0 0121 12v6a2.25 2.25 0 01-2.25 2.25H5.25A2.25 2.25 0 013 18v-6c0-.98.626-1.813 1.5-2.122" />
                                                                    </svg>


                                                                    <div
                                                                        class="bg-green-500 rounded-full h-6 px-2 flex justify-items-center text-white font-semibold text-sm">
                                                                        <span class="flex items-center">30%</span>
                                                                    </div>
                                                                </div>
                                                                <div class="ml-2 w-full flex-1">
                                                                    <div>
                                                                        <div class="mt-3 text-3xl font-bold leading-8"><%=Count_Ticket_DASHBOARD%></div>

                                                                        <div class="mt-1 text-base text-gray-600">Total Ticket</div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <a class="transform  hover:scale-105 transition duration-300 shadow-xl rounded-lg col-span-12 sm:col-span-6 xl:col-span-3 intro-y bg-white"
                                                           href="#">
                                                            <div class="p-5">
                                                                <div class="flex justify-between">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M15.75 6a3.75 3.75 0 11-7.5 0 3.75 3.75 0 017.5 0zM4.501 20.118a7.5 7.5 0 0114.998 0A17.933 17.933 0 0112 21.75c-2.676 0-5.216-.584-7.499-1.632z" />
                                                                    </svg>

                                                                    <div
                                                                        class="bg-red-500 rounded-full h-6 px-2 flex justify-items-center text-white font-semibold text-sm">
                                                                        <span class="flex items-center">30%</span>
                                                                    </div>
                                                                </div>
                                                                <div class="ml-2 w-full flex-1">
                                                                    <div>
                                                                        <div class="mt-3 text-3xl font-bold leading-8"><%=Count_T01_DASHBOARD%></div>

                                                                        <div class="mt-1 text-base text-gray-600">Standard Ticket</div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <a class="transform  hover:scale-105 transition duration-300 shadow-xl rounded-lg col-span-12 sm:col-span-6 xl:col-span-3 intro-y bg-white"
                                                           href="#">
                                                            <div class="p-5">
                                                                <div class="flex justify-between">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                                                    <path stroke-linecap="round" stroke-linejoin="round" d="M15 19.128a9.38 9.38 0 002.625.372 9.337 9.337 0 004.121-.952 4.125 4.125 0 00-7.533-2.493M15 19.128v-.003c0-1.113-.285-2.16-.786-3.07M15 19.128v.106A12.318 12.318 0 018.624 21c-2.331 0-4.512-.645-6.374-1.766l-.001-.109a6.375 6.375 0 0111.964-3.07M12 6.375a3.375 3.375 0 11-6.75 0 3.375 3.375 0 016.75 0zm8.25 2.25a2.625 2.625 0 11-5.25 0 2.625 2.625 0 015.25 0z" />
                                                                    </svg>

                                                                    <div
                                                                        class="bg-yellow-500 rounded-full h-6 px-2 flex justify-items-center text-white font-semibold text-sm">
                                                                        <span class="flex items-center">30%</span>
                                                                    </div>
                                                                </div>
                                                                <div class="ml-2 w-full flex-1">
                                                                    <div>
                                                                        <div class="mt-3 text-3xl font-bold leading-8"><%=Count_T02_DASHBOARD%></div>

                                                                        <div class="mt-1 text-base text-gray-600">Child Ticket</div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </a>
                                                        <a class="transform  hover:scale-105 transition duration-300 shadow-xl rounded-lg col-span-12 sm:col-span-6 xl:col-span-3 intro-y bg-white"
                                                           href="#">
                                                            <div class="p-5">
                                                                <div class="flex justify-between">
                                                                    <h1>VND</h1>

                                                                    <div
                                                                        class="bg-blue-500 rounded-full h-6 px-2 flex justify-items-center text-white font-semibold text-sm">
                                                                        <span class="flex items-center">90%</span>
                                                                    </div>
                                                                </div>
                                                                <div class="ml-2 w-full flex-1">
                                                                    <div>
                                                                        <div class="mt-3 text-3xl font-bold leading-8"><%=Price_Total_Tmp_DASHBOARD%></div>

                                                                        <div class="mt-1 text-base text-gray-600">Total Profit</div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>

                                                    <!--END DASHBOARD-->
                                                    <form action="TicketController">

                                                        <!-- From To -->
                                                        <div class="-mx-3 mt-5 flex flex-wrap">
                                                            <!-- div1 -->
                                                            <div class="w-full px-3 sm:w-1/4">
                                                                <div class="mb-5">
                                                                    <label
                                                                        for="date"
                                                                        class="mb-3 block text-xl font-medium text-[#07074D]"
                                                                        >
                                                                        From
                                                                    </label>
                                                                    <input
                                                                        class="w-full rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-xl text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
                                                                        type="date"
                                                                        name="start_day_order"
                                                                        id="start_day_order"
                                                                        placeholder="MM/YY"
                                                                        />
                                                                </div>
                                                            </div>

                                                            <!-- div 2 -->
                                                            <div class="w-full px-3 sm:w-1/4">
                                                                <div class="mb-5">
                                                                    <label
                                                                        for="time"
                                                                        class="mb-3 block text-xl font-medium text-[#07074D]"
                                                                        >
                                                                        To
                                                                    </label>
                                                                    <input
                                                                        type="date"
                                                                        name="end_day_order"
                                                                        id="end_day_order"
                                                                        placeholder="MM/YY"
                                                                        class="w-full rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-xl text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
                                                                        />
                                                                </div>
                                                            </div>
                                                            <!-- end div 2 -->
                                                            
                                                            <input
                                                                class="disabled:pointer-events-none disabled:opacity-50 disabled:shadow-none text-2xl mt-4 cursor-pointer hover:text-green-500 transition-colors duration-300"
                                                                type="submit"
                                                                name="action"
                                                                value="Search_Order"
                                                                />
                                                            
                                                        </div>
                                                        <!-- end from to -->
                                                        <h4 class="text-red-500 text-xl uppercase text-center"> 
                                                            Have <%=Count_Ticket%> Ticket include <%=Count_T01%> Type Standard and <%=Count_T02%> Type Child   ToTal <%=Price_Total_Tmp%> </h4> 
                                                            <%
                                                                List<OrdersDTO> listOrders = (List<OrdersDTO>) session.getAttribute("LIST_ORDERS");
                                                                if (listOrders != null && listOrders.size() > 0) {
                                                            %> 
                                                        <!-- main -->
                                                        <div class="flex flex-col">
                                                            <div
                                                                class="-mx-4 sm:-mx-8 px-4 sm:px-8 overflow-x-hidden overflow-y-hidden"
                                                                >
                                                                <div
                                                                    class="inline-block min-w-full overflow-hidden align-middle border-b border-gray-200 shadow sm:rounded-lg"
                                                                    >
                                                                    <table class="min-w-full">
                                                                        <thead class="bg-neutral-100">
                                                                            <tr class="bg-blue-500 text-white">
                                                                                <th
                                                                                    class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                                                                                    >
                                                                                    Order_ID
                                                                                </th>
                                                                                <th
                                                                                    class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                                                                                    >
                                                                                    Email
                                                                                </th>
                                                                                <th
                                                                                    class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                                                                                    >
                                                                                    FullName
                                                                                </th>
                                                                                <th
                                                                                    class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                                                                                    >
                                                                                    PhoneNumber
                                                                                </th>
                                                                                <th
                                                                                    class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                                                                                    >
                                                                                    Date
                                                                                </th>
                                                                                <th
                                                                                    class="px-6 py-3 text-xs font-medium leading-4 tracking-wider text-left text-gray-500 uppercase border-b border-gray-200 bg-gray-50"
                                                                                    >
                                                                                    TotalPrice
                                                                                </th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody class="bg-white">
                                                                            <% for (OrdersDTO orders : listOrders) {%>
                                                                            <tr>
                                                                                <td
                                                                                    class="px-6 py-4 whitespace-no-wrap border-b border-gray-200"
                                                                                    >
                                                                                    <%=orders.getOrder_ID()%>
                                                                                </td>
                                                                                <td
                                                                                    class="px-6 py-4 whitespace-no-wrap border-b border-gray-200"
                                                                                    >
                                                                                    <%=orders.getEmail()%>
                                                                                </td>
                                                                                <td
                                                                                    class="px-6 py-4 whitespace-no-wrap border-b border-gray-200"
                                                                                    >
                                                                                    <%=orders.getFullName()%>
                                                                                </td>
                                                                                <td
                                                                                    class="px-6 py-4 whitespace-no-wrap border-b border-gray-200"
                                                                                    >
                                                                                    <%=orders.getPhoneNumber()%>
                                                                                </td>
                                                                                <td
                                                                                    class="px-6 py-4 whitespace-no-wrap border-b border-gray-200"
                                                                                    >
                                                                                    <%=orders.getDate()%>
                                                                                </td>
                                                                                <td
                                                                                    class="px-6 py-4 whitespace-no-wrap border-b border-gray-200"
                                                                                    >
                                                                                    <%=orders.getTotalPrice()%>
                                                                                </td>
                                                                            </tr>

                                                                            <% }
                              }%> 

                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </form>

                                                    <form action="TicketController">




                                                    </form>
                                                </div>
                                                </main>
                                            </div>
                                        </div>
                                </div>
                                </body>
                                </html>
