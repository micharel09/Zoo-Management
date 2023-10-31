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
import sample.foodingschedule.ScheduleDTO;

/**
 *
 * @author ACER
 */
@WebServlet(name = "Search_Cage_Controller", urlPatterns = {"/Search_Cage_Controller"})
public class Search_Cage_Controller extends HttpServlet {

     private static final String ERROR = "Schedule_Select_Area.jsp";
    private static final String SUCCESS = "Schedule_Select_Cage.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            HttpSession session = request.getSession();
            String Area_searchStr_ID = request.getParameter("Search_Area");
            if(Area_searchStr_ID==null){
                Area_searchStr_ID="Area001";
            }
            ScheduleDAO dao = new ScheduleDAO();
            List<AnimalCageDTO> listCage = dao.getCage(Area_searchStr_ID);
            String Name_Area =dao.getNameArea(Area_searchStr_ID);
            
            if (listCage.size() > 0) {
                session.setAttribute("LIST_ANIMAL_CAGE", listCage);
                session.setAttribute("ID_AREA", Area_searchStr_ID);
                session.setAttribute("NAME_AREA", Name_Area);
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
