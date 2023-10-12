/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.food;

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
@WebServlet(name = "FoodSearch", urlPatterns = {"/foodsearch"})
public class FoodSearch extends HttpServlet {

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
FoodDAO d = new FoodDAO();
String foodid = request.getParameter("foodID");

if (foodid != null && !foodid.isEmpty()) {
    // Nếu có foodid được cung cấp, thực hiện tìm kiếm food dựa trên foodid.
    List<FoodDTO> list = d.searchfood(foodid);
    request.setAttribute("foods", list);
} else {
    // Nếu không có foodid hoặc foodid trống rỗng, lấy tất cả danh sách food.
    List<FoodDTO> list = d.getAllFood();
    request.setAttribute("foods", list);
}

request.getRequestDispatcher("food.jsp").forward(request, response);

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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
FoodDAO d = new FoodDAO();
String foodid = request.getParameter("foodID");

if (foodid != null && !foodid.isEmpty()) {
    // Nếu có foodid được cung cấp, thực hiện tìm kiếm food dựa trên foodid.
    List<FoodDTO> list = d.searchfood(foodid);
    request.setAttribute("foods", list);
} else {
    // Nếu không có foodid hoặc foodid trống rỗng, lấy tất cả danh sách food.
    List<FoodDTO> list = d.getAllFood();
    request.setAttribute("foods", list);
}

request.getRequestDispatcher("food.jsp").forward(request, response);

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
