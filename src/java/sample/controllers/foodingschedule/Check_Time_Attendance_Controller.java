/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controllers.foodingschedule;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sample.foodingschedule.ScheduleDAO;

/**
 *
 * @author ACER
 */
@WebServlet(name = "Check_Time_Attendance_Controller", urlPatterns = {"/Check_Time_Attendance_Controller"})
public class Check_Time_Attendance_Controller extends HttpServlet {

     private static final String ERROR = "Trainer_Schedule_Animal_Cage.jsp";
    private static final String SUCCESS = "Schedule_Update_Trainer.jsp";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            HttpSession session = request.getSession();
            String Day = request.getParameter("Day");
//            String StartTime = request.getParameter("StartTime");
//            String EndTime = request.getParameter("EndTime");
            String Id_Schedule = request.getParameter("Id_Schedule");
            
            
             String StartTime = "15:00:00.0000000";
            String EndTime = "22:00:00.0000000";

        // Chuyển đổi chuỗi thành đối tượng LocalDateTime
        LocalDateTime startDateTime = LocalDateTime.parse(Day + "T" + StartTime, DateTimeFormatter.ISO_LOCAL_DATE_TIME);
        LocalDateTime endDateTime = LocalDateTime.parse(Day + "T" + EndTime, DateTimeFormatter.ISO_LOCAL_DATE_TIME);

        // Lấy thời gian hiện tại
        LocalDateTime currentDateTime = LocalDateTime.now();

        // Kiểm tra xem thời gian hiện tại có nằm trong khoảng thời gian không
        
        if (currentDateTime.isAfter(startDateTime) && currentDateTime.isBefore(endDateTime)) {
           url = SUCCESS;
            session.setAttribute("ID_SCHEDULE_ATTENDANCE", Id_Schedule);
        }
         else {
           request.setAttribute("MESSAGE", "You're late or it's not time yet");
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
