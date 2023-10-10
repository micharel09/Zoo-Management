/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.animalcage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "AnimalCageSearch", urlPatterns = { "/animalcagesearch" })
public class AnimalCageSearch extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String animalcageid = request.getParameter("animalcageID");
        AnimalCageDAO a = new AnimalCageDAO();
        List<AnimalCageDTO> list;

        if (animalcageid != null && !animalcageid.isEmpty()) {
            // Nếu có giá trị cho animalcageid, thực hiện tìm kiếm
            list = a.searchanimalcage(animalcageid);
        } else {
            // Nếu không có giá trị cho animalcageid, lấy toàn bộ danh sách
            list = a.getAllAnimalCage();
        }

        request.setAttribute("animalcage", list);
        request.getRequestDispatcher("animalcage.jsp").forward(request, response);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the
    // + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String animalcageid = request.getParameter("animalcageID");
        AnimalCageDAO a = new AnimalCageDAO();
        List<AnimalCageDTO> list;

        if (animalcageid != null && !animalcageid.isEmpty()) {
            // Nếu có giá trị cho animalcageid, thực hiện tìm kiếm
            list = a.searchanimalcage(animalcageid);
        } else {
            // Nếu không có giá trị cho animalcageid, lấy toàn bộ danh sách
            list = a.getAllAnimalCage();
        }

        request.setAttribute("animalcage", list);
        request.getRequestDispatcher("animalcage.jsp").forward(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
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
