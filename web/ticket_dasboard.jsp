<%-- 
    Document   : ticket_dasboard
    Created on : Oct 9, 2023, 10:47:51 PM
    Author     : ACER
--%>

<%@page import="sample.ticket.OrderDetailDTO"%>
<%@page import="sample.ticket.OrdersDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="TicketController">
            <h3> FROM</h3>
            <input
                type="date" name="start_day_order" id="start_day_order" placeholder="MM/YY"
                />
           
            <h3> TO </h3>
            <input
                type="date" name="end_day_order" id="end_day_order" placeholder="MM/YY"
                />           
            <input type="submit" name="action" value="Search_Order"/>
        

        <%
            List<OrdersDTO> listOrders = (List<OrdersDTO>) session.getAttribute("LIST_ORDERS");
            if (listOrders != null && listOrders.size() > 0) {
        %>

        <table> 
            <thead>
                
                <tr>
                    <th>Order_ID</th>
                    <th>Email</th>
                    <th>FullName</th>
                    <th>PhoneNumber</th>
                    <th>Date</th>
                    <th>TotalPrice</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (OrdersDTO orders : listOrders) {
                %>
                <tr >
                    <td><%=orders.getOrder_ID()%></td>
                    <td><%=orders.getEmail()%></td>
                    <td><%=orders.getFullName()%></td>
                    <td><%=orders.getPhoneNumber()%></td>
                    <td><%=orders.getDate()%></td>
                    <td><%=orders.getTotalPrice()%></td>
                </tr>

                <% }
                }%>
                <% Double Price_Total_Tmp= (Double) session.getAttribute("PRICE_TOTAL_TMP"); %>
          
            </tbody>

        </table>
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
        

       

        
                 
              
                 <% int Count_T01= (int) session.getAttribute("TOTAL_TICKET_T01"); 
                    int Count_T02= (int) session.getAttribute("TOTAL_TICKET_T02"); 
                    int Count_Ticket= (int) session.getAttribute("TOTAL_TICKET"); 
                
                %>
            <h4> Have <%=Count_Ticket%> Ticket include <%=Count_T01%> Type Standard and <%=Count_T02%> Type Child   ToTal <%=Price_Total_Tmp%> </h4>    
            </form>
            
    </body>
</html>
