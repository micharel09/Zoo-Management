/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.foodschedule;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import sample.animalcage.AnimalCageDAO;
import sample.animalcage.AnimalCageDTO;
import sample.food.FoodDAO;
import sample.food.FoodDTO;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "CreateFoodSchedule", urlPatterns = {"/createfoodschedule"})
public class CreateFoodSchedule extends HttpServlet {

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
        /* TODO output your page here. You may use following sample code. */

        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet FoodScheduleDelete</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet FoodScheduleDelete at " + request.getContextPath() + "</h1>");
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
        FoodScheduleDAO d = new FoodScheduleDAO();
        FoodDAO f = new FoodDAO();
        AnimalCageDAO a = new AnimalCageDAO();
        List<FoodScheduleDTO> list = d.getAllFoodSchedule();
        request.setAttribute("foodschedule", list);
        List<FoodDTO> listfood = f.getAllFood();
        List<AnimalCageDTO> listanimalcage = a.getAllAnimalCage();
        request.setAttribute("food", listfood);
        request.setAttribute("animalcage", listanimalcage);
        request.getRequestDispatcher("create_foodschedule.jsp").forward(request, response);
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

        String time = request.getParameter("time");
        String animalcageid = request.getParameter("animalcageid");
        String foodid = request.getParameter("foodid");
        String date = request.getParameter("date");

        FoodScheduleDAO d = new FoodScheduleDAO();
        String scheduleid = d.getNewIdScheduleID();
        FoodScheduleDTO f = new FoodScheduleDTO(scheduleid, time, animalcageid, foodid, date);
        d.createschedule(f);
        response.sendRedirect("foodschedulecontroller");

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
