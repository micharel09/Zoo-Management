/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controllers.ticket;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sample.ticket.OrderDetailDTO;
import sample.ticket.OrdersDTO;
import sample.ticket.TicketDAO;

/**
 *
 * @author ACER
 */
@WebServlet(name = "View_Order_Controller", urlPatterns = {"/View_Order_Controller"})
public class View_Order_Controller extends HttpServlet {
    
 private static final String ERROR = "ticket_dasboard.jsp";
    private static final String SUCCESS = "ticket_dasboard.jsp";
  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html;charset=UTF-8");
         String url = ERROR;
        try {
            HttpSession session = request.getSession();
              
           
            TicketDAO dao = new TicketDAO();
            Double Price_Total_Tmp=0.0;
            String Start_Day= request.getParameter("start_day_order");
            if(Start_Day== null){
                Start_Day="2000-09-21";
            }
             String End_Day= request.getParameter("end_day_order");
              if(End_Day== null){
                End_Day="2100-09-21";
            }            
            List<OrdersDTO> listOrders = dao.getListOrders(Start_Day,End_Day);
            if (listOrders.size()>0) {
                session.setAttribute("LIST_ORDERS", listOrders);
              
               
                url = SUCCESS;
                for (OrdersDTO orders : listOrders) {
                    Price_Total_Tmp=orders.getTotalPrice()+Price_Total_Tmp;
                }
                session.setAttribute("PRICE_TOTAL_TMP", Price_Total_Tmp);
            }
            
            
            
            
                                
            
            int Count_T01=0;
            int Count_T02=0;
            int Count_Ticket=0;
//            String Start_Day_Order_Detail= request.getParameter("start_day_order_detail");
//            if(Start_Day_Order_Detail== null){
//                Start_Day_Order_Detail="2000-09-21";
//            }
//             String End_Day_Order_Detail= request.getParameter("end_day_order_detail");
//              if(End_Day_Order_Detail== null){
//                End_Day_Order_Detail="2100-09-21";
//            }
             
            List<OrderDetailDTO> listOrderDetail = dao.getListOrderDetail(Start_Day,End_Day);
            if (listOrderDetail.size()>0) {
                session.setAttribute("LIST_ORDER_DETAIL", listOrderDetail);
              
               
                url = SUCCESS;
                for (OrderDetailDTO orderDetail : listOrderDetail) {
                   if(orderDetail.getTicket_ID().equals("T01")){
                       Count_T01=Count_T01+orderDetail.getQuantity();
                       Count_Ticket=Count_Ticket+orderDetail.getQuantity();
                   }else {
                       Count_T02=Count_T02+orderDetail.getQuantity();
                       Count_Ticket=Count_Ticket+orderDetail.getQuantity();
                   }
                }
                session.setAttribute("TOTAL_TICKET_T01", Count_T01);
                session.setAttribute("TOTAL_TICKET_T02", Count_T02);
                session.setAttribute("TOTAL_TICKET", Count_Ticket);
            }
            
            
             
            if (session.getAttribute("TOTAL_TICKET_T01_DASHBOARD") == null) {
                List<OrderDetailDTO> listOrderDetail_Dashboard = dao.getListOrderDetail_Dashboard();
                if (listOrderDetail.size() > 0) {
                    session.setAttribute("LIST_ORDER_DETAIL", listOrderDetail_Dashboard);

                    int Count_T01_Dashboard = 0;
                    int Count_T02_Dashboard = 0;
                    int Count_Ticket_Dashboard = 0;
                    for (OrderDetailDTO orderDetail_Dashboard : listOrderDetail_Dashboard) {
                        if (orderDetail_Dashboard.getTicket_ID().equals("T01")) {
                            Count_T01_Dashboard = Count_T01_Dashboard + orderDetail_Dashboard.getQuantity();
                            Count_Ticket_Dashboard = Count_Ticket_Dashboard + orderDetail_Dashboard.getQuantity();
                        } else {
                            Count_T02_Dashboard = Count_T02_Dashboard + orderDetail_Dashboard.getQuantity();
                            Count_Ticket_Dashboard = Count_Ticket_Dashboard + orderDetail_Dashboard.getQuantity();
                        }
                    }
                    session.setAttribute("TOTAL_TICKET_T01_DASHBOARD", Count_T01_Dashboard);
                    session.setAttribute("TOTAL_TICKET_T02_DASHBOARD", Count_T02_Dashboard);
                    session.setAttribute("TOTAL_TICKET_DASHBOARD", Count_Ticket_Dashboard);
                }

                List<OrdersDTO> listOrders_Dashboard = dao.getListOrders();
                Double Price_Total_Tmp_Dashboard=0.0;
                if (listOrders_Dashboard.size() > 0) {
                    session.setAttribute("LIST_ORDERS_DASHBOARD", listOrders_Dashboard);

                    url = SUCCESS;
                    for (OrdersDTO orders : listOrders_Dashboard) {
                        Price_Total_Tmp_Dashboard = orders.getTotalPrice() + Price_Total_Tmp_Dashboard;
                    }
                    session.setAttribute("PRICE_TOTAL_TMP_DASHBOARD", Price_Total_Tmp_Dashboard);
                }
            }
        } catch (Exception e) {
            log("Error at SreachControlelr: " + e.toString());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}