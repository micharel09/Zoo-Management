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
import sample.ticket.TicketDAO;

/**
 *
 * @author ACER
 */
@WebServlet(name = "Update_Discount_Controller", urlPatterns = {"/Update_Discount_Controller"})
public class Update_Discount_Controller extends HttpServlet {
 private static final String ERROR = "ticket.jsp";
    private static final String SUCCESS = "Search_Ticket_Controller";
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url =ERROR;
        try {   
                String ID_Ticket= request.getParameter("ID_Ticket");
                String Discount= request.getParameter("Discount");
                TicketDAO dao = new TicketDAO();
                boolean check = dao.updateDiscount(ID_Ticket,Discount);
                if (check == true) {
                     request.setAttribute("ERROR", "Update Discount Successfull");

                    url = SUCCESS;
                }else{
                     request.setAttribute("ERROR", "Update Discount Fail");
                }
            } catch (Exception e) {
                log("Error at DeleteController: " + e.toString());
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
