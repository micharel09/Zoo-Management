/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.animalcage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sample.controllers.manager.AreaDTO;
import sample.user.UserDTO;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "UpdateAnimalCage", urlPatterns = {"/updateanimalcage"})
public class UpdateAnimalCage extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateAnimalCage</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateAnimalCage at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String animalcageid = request.getParameter("animalcageID");
        AnimalCageDAO a = new AnimalCageDAO();
        AnimalCageDTO ac= a.getAnimalCageByID(animalcageid);
        request.setAttribute("aa", ac);
        List<AreaDTO> list = a.getAllArea();
        List<UserDTO> user = a.getUserTrainer();
        request.setAttribute("area", list);
        request.setAttribute("user", user);
        request.getRequestDispatcher("updateanimalcage.jsp").forward(request, response);
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
        String animalcageid = request.getParameter("animalcage_id");
        String name = request.getParameter("name");
        String areaid = request.getParameter("area_id");
        String employeeid = request.getParameter("employee_id");
        AnimalCageDAO a = new AnimalCageDAO();
        a.updateanimalcage(animalcageid, name, areaid, employeeid);
        response.sendRedirect("animalcagecontroller");
        
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