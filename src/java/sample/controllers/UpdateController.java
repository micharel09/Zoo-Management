package sample.controllers;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sample.user.UserDAO;
import sample.user.UserDTO;

@WebServlet(name = "UpdateController", urlPatterns = {"/UpdateController"})
public class UpdateController extends HttpServlet {

    private static final String ERROR = "SearchController";
    private static final String SUCCESS = "SearchController";
    private static final String SUCCESS0 = "update.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String url = ERROR;

        HttpSession session = request.getSession();

        if (session.getAttribute("EMPLOYEE_UPDATE") == null) {
            try {
                String Employee_ID = request.getParameter("userID");
                UserDAO dao = new UserDAO();
                UserDTO Eployee = dao.getEmployee(Employee_ID);
                if (Eployee != null) {
                    session.setAttribute("EMPLOYEE_UPDATE", Eployee);

                    url = SUCCESS0;
                }
            } catch (Exception e) {
                log("Error at DeleteController: " + e.toString());
            } finally {
                request.getRequestDispatcher(url).forward(request, response);
            }
        } else {
            try {
                session.setAttribute("EMPLOYEE_UPDATE", null);
                String userID = request.getParameter("userID");
                String fullName = request.getParameter("FullName");

                String phone = request.getParameter("Phone");
                String email = request.getParameter("Email");
                String gender = request.getParameter("Gender");
                String dependent = request.getParameter("Dependent");
                
                String roleID = request.getParameter("roleID");

                UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
                UserDAO dao = new UserDAO();
                UserDTO user = new UserDTO(userID, "", fullName, phone, email, gender, dependent, roleID);
                boolean checkUpdate = dao.update(user);

//             HttpSession session = request.getSession();
//            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
                if (checkUpdate) {
                    url = SUCCESS;
                    request.setAttribute("ERROR", "Update Acount Successfull");
                    if (loginUser != null) {

                        if (loginUser.getEmployee_ID().equals(userID)) {
                            request.setAttribute("ERROR", "Update Your Acount Successfull");

                           
                            loginUser.setFullname(fullName);
                            loginUser.setPhone(phone);
                            loginUser.setEmail(email);
                            loginUser.setGender(gender);
                            loginUser.setDependent(dependent);
                            loginUser.setRoleID(roleID);

                           

                        }
                    }
                    
                }else{
                    request.setAttribute("ERROR", "Update Acount Fail");
                }

//            if (checkUpdate) {
//                if (userID.equals(loginUser.getUserID())) {
//                    loginUser.setFullName(fullName);
//                    loginUser.setRoleID(roleID);
//                    session.setAttribute("LOGIN_USER", loginUser);
//                } else {
//                    url = SUCCESS;
//                }
//            }
            } catch (Exception e) {
                log("Error at DeleteController: " + e.toString());
            } finally {
                request.getRequestDispatcher(url).forward(request, response);
            }
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
