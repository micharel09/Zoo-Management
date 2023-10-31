/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author HoangNQ
 */
public class MainController extends HttpServlet {

    private static final String LOGIN_PAGE = "homepage";
    
    private static final String LOGIN = "Login";
    private static final String LOGIN_CONTROLLER = "LoginController";
    
     private static final String SEARCH = "Search";
    private static final String SEARCH_CONTROLLER = "SearchController";
    
    private static final String CREATE_ACOUNT_PAGE = "CreatePage";
    private static final String CREATE_ACOUNT_PAGE_VIEW = "create.html";
    
     private static final String CREATE = "Create";
    private static final String CREATE_CONTROLLER = "CreateController";
    
      private static final String DELETE = "Delete";
    private static final String DELETE_CONTROLLER = "DeleteController";
      
     private static final String UPDATE_ACCOUNT = "Update_Acount";
    private static final String UPDATE = "Update";
   private static final String UPDATE_CONTROLLER = "UpdateController";
   
    private static final String LOGOUT = "logout";
    
     private static final String SENDNOTIFICATION = "Send_Notification";
    private static final String SENDNOTIFICATION_CONTROLLER = "Send_Notification_Controller";
    
      private static final String BACK_ADMINPAGE = "BackAdminPage";
      
      
    
      
   
   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = LOGIN_PAGE;
        try {
            String action = request.getParameter("action");
            if (action == null) {
                url = LOGIN_PAGE;
            }  else if (SENDNOTIFICATION.equals(action)) {
                url = SENDNOTIFICATION_CONTROLLER;
            }else if (LOGIN.equals(action)) {
                url = LOGIN_CONTROLLER;
            }  else if (SEARCH.equals(action)) {
                url = SEARCH_CONTROLLER;
            }  else if (CREATE_ACOUNT_PAGE.equals(action)) {
                url = CREATE_ACOUNT_PAGE_VIEW;
            }  else if (DELETE.equals(action)) {
                url = DELETE_CONTROLLER;
            } else if (UPDATE.equals(action)) {
                url = UPDATE_CONTROLLER;
            } else if (CREATE.equals(action)) {
                url = CREATE_CONTROLLER;
            } else if (CREATE.equals(action)) {
                url = CREATE_CONTROLLER;
            } else if (UPDATE_ACCOUNT.equals(action)) {
                try {
                    // Tạo độ trễ 2 giây
                    Thread.sleep(3000); // 2 giây = 2000 mili giây
                } catch (InterruptedException e) {
                    // Xử lý ngoại lệ nếu có
                }
                url = UPDATE_CONTROLLER;
            }

             else if (LOGOUT.equals(action)) {
                url = LOGIN_PAGE;
            }  else if (LOGOUT.equals(action)) {
                url = LOGIN_PAGE;
            } else if (BACK_ADMINPAGE.equals(action)) {
                HttpSession session = request.getSession();
                session.setAttribute("EMPLOYEE_UPDATE",null);
                url = SEARCH_CONTROLLER;
            } 

//            } else if (LOGOUT.equals(action)) {
//                url = LOGOUT_CONTROLLER;
//            }
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
