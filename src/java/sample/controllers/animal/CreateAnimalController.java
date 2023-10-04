/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controllers.animal;

/**
 *
 * @author dinhg
 */
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sample.animal.AnimalDAO;
import sample.animal.AnimalDTO;
import sample.animal.AnimalError;

/**
 *
 * @author HoangNQ
 */
@WebServlet(name = "CreateAnimalController", urlPatterns = {"/CreateAnimalController"})
public class CreateAnimalController extends HttpServlet {

    private static final String ERROR = "createAnimal.html";
    private static final String SUCCESS = "SearchAnimalController";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        AnimalError userError = new AnimalError();

        try {
            AnimalDAO dao = new AnimalDAO();
            boolean checkValidation = true;

            String Animal_ID = request.getParameter("Animal_ID");
             String Name = request.getParameter("Name");
              String DayIn = request.getParameter("DayIn");
               String DayOut = request.getParameter("DayOut");
                String Note = request.getParameter("Note");
                String AnimalCage_ID = request.getParameter("AnimalCage_ID");
  
          
if (checkValidation) {
    try {
        // Generate a new animal ID (assuming you have a method for this)
        String animalId = request.getParameter("Animal_ID");
        
        // Get the parameters from the request and create an Animal object
        String name = request.getParameter("Name");
        String dayIn = request.getParameter("DayIn");
        String dayOut = request.getParameter("DayOut");
        String note = request.getParameter("Note");
        String photo = request.getParameter("Photo");
        String animalCageId = request.getParameter("AnimalCage_ID");
        
        AnimalDTO newAnimal = new AnimalDTO(animalId, name, dayIn, dayOut, note, photo, animalCageId);

        // Call the DAO method to insert the new animal
        boolean checkInsert = dao.insertv2(newAnimal);

        if (checkInsert) {
            url = SUCCESS;
            request.setAttribute("MESSAGE", "Create Animal Successful");
        } else {
            // Handle the case where insertion failed
            request.setAttribute("ERROR", "Create Animal Failed");
        }
    } catch (Exception e) {
        // Handle any exceptions that occur during insertion
        e.printStackTrace();
        request.setAttribute("ERROR", "Create Animal Failed");
    }
} else {
    // Handle validation failure
    request.setAttribute("ERROR", "Validation Failed");
    request.setAttribute("USER_ERROR", userError);
}

        }catch (Exception e) {
        // Handle other exceptions
        log("Error at CreateAnimalController: " + e.toString());
        request.setAttribute("ERROR", "Create Animal Failed");
    }
        // Handle SQL exceptions
         finally {
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

