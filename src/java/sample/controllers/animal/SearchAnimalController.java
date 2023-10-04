/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controllers.animal;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sample.animal.AnimalDAO;
import sample.animal.AnimalDTO;

@WebServlet("/SearchAnimalController")
public class SearchAnimalController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchKeyword = request.getParameter("search");

        AnimalDAO animalDAO = new AnimalDAO();

        List<AnimalDTO> animals = null;
        try {
            animals = animalDAO.getListAnimal(searchKeyword); // Xử lý lỗi nếu cần
        } catch (SQLException ex) {
            Logger.getLogger(SearchAnimalController.class.getName()).log(Level.SEVERE, null, ex);
        }
        // Thay bằng trang thông báo lỗi thích hợp
        // Đặt danh sách động vật vào attribute để hiển thị trên trang JSP
        request.setAttribute("animalList", animals);
        // Điều hướng đến trang hiển thị danh sách động vật (animal.jsp)
        request.getRequestDispatcher("animal.jsp").forward(request, response);
    }

}
