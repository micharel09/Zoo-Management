/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controllers.animal;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sample.animal.AnimalDAO;
import sample.user.UserDAO;
import sample.user.UserDTO;
import sample.animal.AnimalDAO;
import sample.animal.AnimalDTO;
import sample.user.UserDTO;


@WebServlet("/DeleteAnimalController")
public class DeleteAnimalController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Xử lý yêu cầu GET ở đây (nếu cần)
                try {
            AnimalDAO animalDAO = new AnimalDAO();
            List<AnimalDTO> animals = animalDAO.getListAnimal(); // Lấy danh sách động vật từ AnimalDAO
            
            // Đặt danh sách động vật vào thuộc tính của yêu cầu để truyền đến animal.jsp
            request.setAttribute("animals", animals);
            
            // Chuyển hướng đến trang animal.jsp để hiển thị danh sách động vật
            request.getRequestDispatcher("animal.jsp").forward(request, response);
        } catch (Exception e) {
            // Xử lý ngoại lệ nếu có
            e.printStackTrace();
            // Có thể chuyển hướng đến trang lỗi nếu cần
            // response.sendRedirect("error.jsp");
        }
 
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String animal_id = request.getParameter("animal_id");

        AnimalDAO animalDAO = new AnimalDAO();

        try {
            boolean isDeleted = animalDAO.delete(animal_id);
            //1 2 3 4 ..19
            if (isDeleted) {
               
                request.getRequestDispatcher("./AnimalController").forward(request, response);
            } else {
               
                response.sendRedirect("error.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
           
            response.sendRedirect("error.jsp");
        }
    }
}
