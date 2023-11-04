/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.animal;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
@WebServlet(name = "view_animal_dashboard", urlPatterns = {"/view_animal_dashboard"})
public class view_animal_dashboard extends HttpServlet {

    private static final String ERROR = "animal_dashboard.jsp";
    private static final String SUCCESS = "animal_dashboard.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            HttpSession session = request.getSession();

            String Start_Day = request.getParameter("start_day_in");
            if (Start_Day == null) {
                Start_Day = "2000-09-21";
            }
            String End_Day = request.getParameter("end_day_in");
            if (End_Day == null) {
                End_Day = "2100-09-21";
            }
            AnimalDAO dao = new AnimalDAO();
            List<AnimalDTO> listAnimal = dao.getListAnimal(Start_Day, End_Day);
            if (listAnimal.size() > 0) {
                int Count_SICK = 0;
                int Count_NORMAL = 0;
                int Count_DEATH = 0;

                session.setAttribute("LIST_ANIMAL_DASHBOARD", listAnimal);

                url = SUCCESS;
                for (AnimalDTO animal : listAnimal) {
                    if (animal.getStatus().equals("SICK")) {
                        Count_SICK++;
                    } else {
                        if (animal.getStatus().equals("NORMAL")) {
                            Count_NORMAL++;
                        } else {
                            Count_DEATH++;
                        }
                    }
                   

                }
                 session.setAttribute("TOTAL_SICK", Count_SICK);
                    session.setAttribute("TOTAL_NORMAL", Count_NORMAL);
                    session.setAttribute("TOTAL_DEATH", Count_DEATH);
            }
        } catch (Exception e) {
            log("Error : " + e.getMessage().toString());
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
