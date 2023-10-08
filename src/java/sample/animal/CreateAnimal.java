/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.animal;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import sample.animacage.AnimalCageDTO;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "CreateAnimal", urlPatterns = {"/createanimal"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50)
public class CreateAnimal extends HttpServlet {

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
        /* TODO output your page here. You may use following sample code. */

        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AnimalDelete</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AnimalDelete at " + request.getContextPath() + "</h1>");
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
        AnimalDAO d = new AnimalDAO();

        List<AnimalCageDTO> list = d.getAllAnimalCage();
        request.setAttribute("cage", list);
        request.getRequestDispatcher("create_animal.jsp").forward(request, response);
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
        String name = request.getParameter("name");
        String dayin = request.getParameter("dayin");
        Part photo = request.getPart("photo");
        String filename = extractFileName(photo);

        if (photo != null && photo.getSize() > 0) {
            // Specify the relative path from your project root
            String relativePath = File.separator + "animal_picture";

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
        String animalcageid = request.getParameter("animalcageid");
        AnimalDAO d = new AnimalDAO();
        String animalid = d.getNewIdAnimalID();

        d.createanimal(animalid, name, dayin, filename, animalcageid);
        response.sendRedirect("animalcontroller");
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
