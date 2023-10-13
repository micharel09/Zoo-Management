<%-- 
    Document   : ticket
    Created on : Oct 9, 2023, 1:18:34 PM
    Author     : ACER
--%>

<%@page import="sample.ticket.TicketDTO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <a href="TicketController?action=View_order"><h1>view_order</h1></a>
    <body action="TicketController">

        <%
            List<TicketDTO> listTicket = (List<TicketDTO>) session.getAttribute("LIST_TICKET");
            if (listTicket != null && listTicket.size() > 0) {
        %>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Type</th>
                <th>Price</th>
                <th>Discount</th>
                <th>Price Main</th>

            </tr>
            <%
                for (TicketDTO ticket : listTicket) {
            %>
            <tr>
                <td><%= ticket.getTicket_ID()%> </td>
                <td><%= ticket.getTicket_Name()%> </td>
                <td><%= ticket.getPrice()%> </td>
               
                <form action="TicketController">
               
                     <td><label for="integerInput">DISCOUNT:</label>
                    <input type="number" name="Discount" id="integerInput" value="<%= ticket.getDiscount()%>"
                           required min="0" max="100"><br> 
                </td>
                
                <td> <%= ticket.getPrice_Main()%></td>
                 <td>
                    <input type="hidden" name="ID_Ticket" value="<%= ticket.getTicket_ID()%> "/>
                    <input type="submit" name="action" name="Update_Discount" value="Update_Discount"/>
                </td>
            </form>
        </td>
        </tr>
    <% }
            }%>
            

    <!-- Thêm các dòng dữ liệu khác ở đây -->
</table>
             <%
            String error = (String) request.getAttribute("ERROR");
            if (error == null) {
                error = "";
            }
        %>
       
        <h2><%= error%></h2>
</body>
</html>
