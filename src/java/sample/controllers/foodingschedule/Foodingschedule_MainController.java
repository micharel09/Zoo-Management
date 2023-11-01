/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controllers.foodingschedule;

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
@WebServlet(name = "Foodingschedule_MainController", urlPatterns = {"/Foodingschedule_MainController"})
public class Foodingschedule_MainController extends HttpServlet {

       private static final String LOGIN_PAGE = "login.html";
    
    private static final String VIEWS_CHEDULE_TRAINER = "Select_Schecdule_Trainer";
    
    private static final String TRAINER_VIEWS_CHEDULE_CONTROLLER = "Trainer_View_Schedule_Controller";
    
    private static final String VIEWS_CHEDULE_REPEATE = "Search";
    private static final String VIEWS_CHEDULE = "Select_Schecdule";
    private static final String VIEWS_CHEDULE_CONTROLLER = "View_Schedule_Controller";

    private static final String SEARCH_AREA = "Select_Area";
    private static final String SEARCH_AREA_CONTROLLER = "Search_Cage_Controller";
    
     private static final String CHECK_TIME = "Update_Picture_To_Attendance";
    private static final String CHECK_TIME_CONTROLLER = "Check_Time_Attendance_Controller";
    
    private static final String ATTENDANCE = "Attendance";
    private static final String ATTENDANCE_CONTROLLER = "Attendance_Controller";
    

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = LOGIN_PAGE;
        try {
            String action = request.getParameter("action");
            if (action == null) {
                url = LOGIN_PAGE;
            }
             else if (ATTENDANCE.equals(action)) {
                  try {
                    // Tạo độ trễ 2 giây
                    Thread.sleep(4000); // 2 giây = 2000 mili giây
                } catch (InterruptedException e) {
                    // Xử lý ngoại lệ nếu có
                }
                url = ATTENDANCE_CONTROLLER;
            }else if (CHECK_TIME.equals(action)) { 
                
                url = CHECK_TIME_CONTROLLER;
            }   else if (SEARCH_AREA.equals(action)) {                
                url = SEARCH_AREA_CONTROLLER;
            }  else if (VIEWS_CHEDULE.equals(action) || VIEWS_CHEDULE_REPEATE.equals(action)) {                
                url = VIEWS_CHEDULE_CONTROLLER;
            }  else if (VIEWS_CHEDULE_TRAINER.equals(action)||"Search_For_Trainer".equals(action)||"BackSchedulePage".equals(action)) { 
                
                url = TRAINER_VIEWS_CHEDULE_CONTROLLER;
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
