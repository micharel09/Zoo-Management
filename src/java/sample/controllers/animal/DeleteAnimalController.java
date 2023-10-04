/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controllers.animal;

import java.io.IOException;
import java.sql.SQLException;
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
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String animal_id = request.getParameter("animal_id");

        AnimalDAO animalDAO = new AnimalDAO();

        try {
            boolean isDeleted = animalDAO.delete(animal_id);

            if (isDeleted) {
                // Xóa thành công, bạn có thể điều hướng đến trang danh sách động vật hoặc thực hiện các thao tác khác
                response.sendRedirect("animal.jsp");
            } else {
                // Xóa không thành công, bạn có thể xử lý thông báo lỗi hoặc thực hiện các thao tác khác
                response.sendRedirect("error.jsp"); // Thay bằng trang thông báo lỗi thích hợp
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Xử lý lỗi nếu cần
            response.sendRedirect("error.jsp"); // Thay bằng trang thông báo lỗi thích hợp
        }
    }
}
