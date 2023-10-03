/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sample.user.UserDAO;
import sample.user.UserDTO;
import sample.user.UserError;

/**
 *
 * @author HoangNQ
 */
@WebServlet(name = "CreateController", urlPatterns = {"/CreateController"})
public class CreateController extends HttpServlet {

    private static final String ERROR = "create.html";
    private static final String SUCCESS = "SearchController";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        UserError userError = new UserError();

        try {
            UserDAO dao = new UserDAO();
            boolean checkValidation = true;
//            UserDTO(String Employee_ID, String Password, String Fullname, 
//String Phone, 
//String Email, String Gender, String Dependent, String RoleID) {
           // String userID = request.getParameter("userID");
            String fullName = request.getParameter("fullName");
             String Phone = request.getParameter("Phone");
              String Email = request.getParameter("Email");
               String Gender = request.getParameter("Gender");
                String Dependent = request.getParameter("Dependent");
            String roleID = request.getParameter("roleID");
            String password = request.getParameter("password");
            String confirm = request.getParameter("confirm");
//            if (userID.length() < 2 || userID.length() > 10) {
//                userError.setUserIDError("User ID must be in [2,10]");
//                checkValidation = false;
//            }
//            boolean checkDulicate = dao.checkDulicate(fullName,Phone,Email);
//            if (checkDulicate) {
//                userError.setUserIDError("User ID is e  xisted");
//                checkValidation = false;
//            }
            if (fullName.length() < 5 || fullName.length() > 25) {
                userError.setUserIDError("Full Name must be in [5,25]");
                checkValidation = false;
            }
            if (!password.equals(confirm)) {
                userError.setConfirmError("Those password does not match");
                checkValidation = false;
            }
            if (checkValidation) {
                String employeeID = dao.getNewID();
                UserDTO user = new UserDTO( employeeID,  password,  fullName, Phone, Email,  Gender,  Dependent,  roleID);
                //boolean checkInsert = dao.insert(user);
                boolean checkInsert= dao.insertv2(user);
               
                if (checkInsert) {
                    url = SUCCESS;
                    request.setAttribute("ERROR", "Create Acount Successfull");
                }else{
                    userError.setError("Unknow error");
                    request.setAttribute("USER_ERROR", userError);
                   request.setAttribute("ERROR", "Create Acount Fail");
                }
            }else{
                request.setAttribute("USER_ERROR", userError);
                request.setAttribute("ERROR", "Create Acount Fail");
            }
        } catch (Exception e) {
            log("Error at CreateController: " + e.toString());
            if(e.toString().contains("duplicate")){
                userError.setUserIDError("trung khoa chinh r");
                request.setAttribute("USER_ERROR", userError);
                
                //cái naỳ chưa xử lý nè
            }
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
