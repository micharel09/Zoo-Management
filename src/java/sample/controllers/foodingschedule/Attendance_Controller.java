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
import sample.foodingschedule.ScheduleDAO;
import sample.foodingschedule.ScheduleDTO;

/**
 *
 * @author ACER
 */
@WebServlet(name = "Attendance_Controller", urlPatterns = {"/Attendance_Controller"})
public class Attendance_Controller extends HttpServlet {

   private static final String ERROR = "Schedule_Update_Trainer.jsp";
    private static final String SUCCESS = "Trainer_Schedule_Animal_Cage.jsp";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            HttpSession session = request.getSession();
            String photo = request.getParameter("photo");
//            
          String Id_Schedule=  (String) session.getAttribute("ID_SCHEDULE_ATTENDANCE");
//           String Id_Schedule="TB002";
//        // String photo="https://firebasestorage.googleapis.com/v0/b/vantrungbg-342f3.appspot.com/o"
//                 + "/myimages%2F7aaa.jpg?alt=media&token=a4289fb2-af4c-4973-8568-bd104635248a";
           
           if(photo==""||photo==null){
               
           }else{
               ScheduleDTO  schedule= new ScheduleDTO(Id_Schedule, "Present",photo );
            ScheduleDAO dao = new ScheduleDAO();
           Boolean check  = dao.updateAttendance(schedule);
            
            
            if (check) {
                request.setAttribute("MESSAGE", "You're late or it's not time yet");
                url = SUCCESS;
            }
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
