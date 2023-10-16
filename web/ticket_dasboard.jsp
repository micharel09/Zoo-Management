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
          <%@ include file="components/headeradmin.html" %>
          <main class="flex-1 overflow-x-hidden bg-gray-200">
            <div class="container px-6 py-8 mx-auto">
              <form action="TicketController">
                <h3 class="text-xl mb-2">Choose Time For Detail:</h3>
                <!-- From To -->
                <div class="-mx-3 flex flex-wrap">
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
                    class="disabled:pointer-events-none disabled:opacity-50 disabled:shadow-none text-2xl mt-4 cursor-pointer hover:text-blue-500 transition-colors duration-300"
                    type="submit"
                    name="action"
                    value="Search_Order"
                  />
                </div>
                <!-- end from to -->

                <!-- <%
            List<OrdersDTO> listOrders = (List<OrdersDTO>) session.getAttribute("LIST_ORDERS");
            if (listOrders != null && listOrders.size() > 0) {
        %> -->
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
                          <% for (OrdersDTO orders : listOrders) { %>
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

                          <% } }%> <% Double Price_Total_Tmp= (Double)
                          session.getAttribute("PRICE_TOTAL_TMP"); %>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </form>

              <form action="TicketController">
                <!--            <input
                type="date" name="start_day_order_detail" id="start_day_order_detail" placeholder="MM/YY"
                />
           
            <h3> TO </h3>
            <input
                type="date" name="end_day_order_detail" id="end_day_order_detail" placeholder="MM/YY"
                />           
            <input type="submit" name="action" value="Search_Order_Detail"/>-->

                <% int Count_T01= (int)
                session.getAttribute("TOTAL_TICKET_T01"); int Count_T02= (int)
                session.getAttribute("TOTAL_TICKET_T02"); int Count_Ticket=
                (int) session.getAttribute("TOTAL_TICKET"); %>

                <h4>
                  Have <%=Count_Ticket%> Ticket include <%=Count_T01%> Type
                  Standard and <%=Count_T02%> Type Child ToTal
                  <%=Price_Total_Tmp%>
                </h4>
              </form>
            </div>
          </main>
        </div>
      </div>
    </div>
  </body>
</html>
