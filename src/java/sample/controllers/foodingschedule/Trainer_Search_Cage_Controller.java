/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controllers.foodingschedule;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sample.foodingschedule.AnimalCageDTO;

import sample.foodingschedule.ScheduleDAO;
import sample.user.UserDTO;

/**
 *
 * @author ACER
 */
@WebServlet(name = "Trainer_Search_Cage_Controller", urlPatterns = {"/Trainer_Search_Cage_Controller"})
public class Trainer_Search_Cage_Controller extends HttpServlet {

     private static final String ERROR = "Trainer_Schedule_Select_Cage.jsp";
    private static final String SUCCESS = "Trainer_Schedule_Select_Cage.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            HttpSession session = request.getSession();
            UserDTO user = (UserDTO) session.getAttribute("LOGIN_USER");
            String Employee_ID=user.getEmployee_id();
            ScheduleDAO dao = new ScheduleDAO();
            List<AnimalCageDTO> listCage = dao.getCageByEmployee_ID(Employee_ID);
            
            
            if (listCage.size() > 0) {
                session.setAttribute("LIST_ANIMAL_CAGE", listCage);
               
                url = SUCCESS;
            }
        } catch (Exception e) {
            log("Error at :" + e.toString());
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
