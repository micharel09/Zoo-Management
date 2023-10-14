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
import sample.ticket.TicketDAO;

/**
 *
 * @author ACER
 */
@WebServlet(name = "View_Order_Detail_Controller", urlPatterns = {"/View_Order_Detail_Controller"})
public class View_Order_Detail_Controller extends HttpServlet {

    private static final String ERROR = "ticket_dasboard.jsp";
    private static final String SUCCESS = "ticket_dasboard.jsp";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       String url = ERROR;
        try {
              HttpSession session = request.getSession();                     
            TicketDAO dao = new TicketDAO();
            int Count_T01=0;
            int Count_T02=0;
            int Count_Ticket=0;
            String Start_Day= request.getParameter("start_day_order_detail");
            if(Start_Day== null){
                Start_Day="2000-09-21";
            }
             String End_Day= request.getParameter("end_day_order_detail");
              if(End_Day== null){
                End_Day="2100-09-21";
            }
             
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
