/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.animalcage;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import sample.area.AreaDTO;
import sample.user.UserDTO;

/**
 *
 * @author ADMIN
 */
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50)
@WebServlet(name = "UpdateAnimalCage", urlPatterns = {"/updateanimalcage"})
public class UpdateAnimalCage extends HttpServlet {
    
    private String extractFileName(Part part) {//This method will print the file name.
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateAnimalCage</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateAnimalCage at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String animalcageid = request.getParameter("animalcageID");
        AnimalCageDAO a = new AnimalCageDAO();
        AnimalCageDTO ac= a.getAnimalCageByID(animalcageid);
        request.setAttribute("aa", ac);
        List<AreaDTO> list = a.getAllArea();
        List<UserDTO> user = a.getUserTrainer();
        request.setAttribute("area", list);
        request.setAttribute("user", user);
        request.getRequestDispatcher("updateanimalcage.jsp").forward(request, response);
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
        String animalcageid = request.getParameter("animalcage_id");
        String name = request.getParameter("name");
        String areaid = request.getParameter("area_id");
        String employeeid = request.getParameter("employee_id");
        AnimalCageDAO a = new AnimalCageDAO();
        Part photo = request.getPart("photo");

        // Check if the user selected a file
        String filename = extractFileName(photo);

        if (photo != null && photo.getSize() > 0) {
            // Specify the relative path from your project root
            String relativePath = File.separator + "animalcage_picture";

// Get the project root directory
            String projectRoot = getServletContext().getRealPath("/");

// Remove the "/build" or "\\build" part from the path
            String correctedRoot = projectRoot.replace(File.separator + "build", "").replace(File.separator + "build", "");

// Construct the absolute path relative to the corrected project root
            String saveDirectory = correctedRoot + relativePath;

            String savePath = saveDirectory + File.separator + filename;

            // Check if the directory exists, if not, create it
            Path directoryPath = Paths.get(saveDirectory);
            if (!Files.exists(directoryPath)) {
                try {
                    Files.createDirectories(directoryPath);
                } catch (IOException e) {
                    e.printStackTrace(); // Handle the exception properly in your application
                    return; // Stop processing if directory creation fails
                }
            }

            // Write the file to the specified location
            photo.write(savePath);

        }

        a.updateanimalcage(animalcageid, name, areaid, employeeid, filename);
 HttpSession session = request.getSession(false);
if (session != null) {
    String from = (String) session.getAttribute("from");
    
    // Kiểm tra và thực hiện chuyển hướng
    if ("animalcagecontroller".equals(from)) {
        response.sendRedirect("animalcagecontroller" + areaid);
    } else {
        response.sendRedirect("managercontroller");
    }

    }
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
