/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sample.user.UserDAO;
import sample.user.UserDTO;

/**
 *
 * @author HoangNQ
 */
@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

    private static final String LOGIN_PAGE = "login.jsp";
    private static final String AD = "ADMIN";
    private static final String ADMIN_PAGE = "TicketController?action=View_order";
    private static final String MN = "MANAGER";
    private static final String MANAGER_PAGE = "managercontroller";
    private static final String TN = "TRAINER";
    private static final String TRAINER_PAGE = "ListTrainerFeedback";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = LOGIN_PAGE;
        try {
            String Employee_ID = request.getParameter("Employee_ID");
            String password = request.getParameter("password");
            UserDAO dao = new UserDAO();
            UserDTO loginUser = dao.checkLogin(Employee_ID,password);
            if (loginUser == null) {
                request.setAttribute("ERROR", "Invalid login, please try again");
                url = LOGIN_PAGE;
            }else{
                String roleID = loginUser.getRoleID();
                HttpSession session = request.getSession();
                session.setAttribute("LOGIN_USER", loginUser);
                dao.setSchedule();
                if (AD.equals(roleID)) {
                    url=ADMIN_PAGE;
                }else if (MN.equals(roleID)) {
                    url=MANAGER_PAGE;
                }else if (TN.equals(roleID)) {
                    url=TRAINER_PAGE;
                }else{
                    request.setAttribute("ERROR", "Invalid login, please try again");
                    url = LOGIN_PAGE;
                }
            }
        } catch (Exception e) {
            log("Error at LoginController: " + e.toString());
        } finally {
           // response.sendRedirect(url);
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
