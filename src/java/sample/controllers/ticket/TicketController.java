/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controllers.ticket;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ACER
 */
@WebServlet(name = "TicketController", urlPatterns = {"/TicketController"})
public class TicketController extends HttpServlet {

     private static final String TICKET_PAGE = "ticket.jsp";
    
    private static final String LOGIN = "Login";
    private static final String LOGIN_CONTROLLER = "LoginController";
    
    private static final String SET_TICKET = "Set_Ticket";
    private static final String SEARCH_TICKET_CONTROLLER = "Search_Ticket_Controller";
    
    private static final String UPDATE_TICKET = "Update_Discount";
    private static final String SUPDATE_TICKET_CONTROLLER = "Update_Discount_Controller";
    
    private static final String VIEW_ORDER = "View_order";
    private static final String VIEW_ORDER_CONTROLLER = "View_Order_Controller";
    private static final String SEARCH_ORDER = "Search_Order";
    
    
     private static final String VIEW_ORDER_DETAIL_CONTROLLER = "View_Order_Detail_Controller";
    private static final String SEARCH_ORDER_DETAIL = "Search_Order_Detail";
    
    
    
    
    
     
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = TICKET_PAGE;
      try {
            String action = request.getParameter("action");
            if (action == null) {
                url = TICKET_PAGE;
            }  else if (SET_TICKET.equals(action)) {
                url = SEARCH_TICKET_CONTROLLER;
            } else if (SEARCH_ORDER_DETAIL.equals(action)) {
                url = VIEW_ORDER_DETAIL_CONTROLLER;
            } else if (UPDATE_TICKET.equals(action)) {
                url = SUPDATE_TICKET_CONTROLLER;
            }
            else if (VIEW_ORDER.equals(action) || SEARCH_ORDER.equals(action)) {
                url = VIEW_ORDER_CONTROLLER;
            }
        } catch (Exception e) {
            log("Error at MainController: " + e.toString());
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
