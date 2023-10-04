/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controllers.animal;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sample.animal.AnimalDAO;
import sample.animal.AnimalDTO;

@WebServlet("/UpdateAnimalController")
public class UpdateAnimalController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy Animal_ID từ request
        String animal_id = request.getParameter("animal_id");

        // Gọi đến DAO để lấy thông tin động vật dựa trên Animal_ID
        AnimalDAO animalDAO = new AnimalDAO();
        AnimalDTO animal = null;
        try {
            animal = animalDAO.getAnimal(animal_id);
        } catch (SQLException ex) {
            Logger.getLogger(UpdateAnimalController.class.getName()).log(Level.SEVERE, null, ex);
        }

        // Đặt thông tin động vật vào attribute để hiển thị trong trang JSP
        request.setAttribute("animal", animal);

        // Điều hướng đến trang update_animal.jsp để hiển thị biểu mẫu cập nhật
        request.getRequestDispatcher("update_animal.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Xử lý cập nhật thông tin động vật ở đây

        // Sau khi cập nhật xong, bạn có thể điều hướng người dùng đến trang danh sách động vật hoặc trang khác
        response.sendRedirect("animal.jsp");
    }
}


