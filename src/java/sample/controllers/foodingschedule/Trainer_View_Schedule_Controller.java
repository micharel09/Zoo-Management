/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controllers.foodingschedule;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
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
@WebServlet(name = "Trainer_View_Schedule_Controller", urlPatterns = {"/Trainer_View_Schedule_Controller"})
public class Trainer_View_Schedule_Controller extends HttpServlet {

    private static final String ERROR = "Trainer_Schedule_Select_Cage.jsp";
    private static final String SUCCESS = "Trainer_Schedule_Animal_Cage.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        HttpSession session = request.getSession();
        ScheduleDAO dao = new ScheduleDAO();
        
        try {
            
            String day_searchStr = request.getParameter("Get_Day");
            // Lấy ngày hiện tại
            if (day_searchStr == null) {
                LocalDate currentDate = LocalDate.now();

                // Lấy ngày của tuần mà ngày hiện tại nằm trong đó
                DayOfWeek currentDayOfWeek = currentDate.getDayOfWeek();

                // Chuyển ngày hiện tại sang định dạng "yyyy-MM-dd"
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
                String currentDateStr = currentDate.format(formatter);

                day_searchStr = null;

                if (currentDayOfWeek != DayOfWeek.MONDAY) {
                    // Tính toán ngày thứ 2 của tuần nếu ngày hiện tại không phải là thứ 2
                    int daysUntilMonday = DayOfWeek.MONDAY.getValue() - currentDayOfWeek.getValue();
                    LocalDate day_search = currentDate.plusDays(daysUntilMonday);
                    day_searchStr = day_search.format(formatter);
                } else {
                    // Nếu ngày hiện tại đã là thứ 2, không cần thay đổi.
                    day_searchStr = currentDateStr;
                }

            }
            
            String ID_Cage = request.getParameter("ID_Animal_Cage");
            String Name_Cage = request.getParameter("Name_Cage");
            
             if(ID_Cage==null){
                 ID_Cage= (String) session.getAttribute("ID_CAGE");
             }
            
              if(Name_Cage==null){
                 Name_Cage= (String) session.getAttribute("NAME_CAGE");
             }
           
            List<ScheduleDTO> listSchedule = dao.getListSchedule(day_searchStr,ID_Cage);
            if (listSchedule.size() > 0) {
                session.setAttribute("LIST_SCHEDULE", listSchedule);
                session.setAttribute("ID_CAGE", ID_Cage);
                session.setAttribute("DAY", day_searchStr);
                session.setAttribute("NAME_CAGE", Name_Cage);
                url = SUCCESS;
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
