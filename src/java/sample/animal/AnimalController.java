package sample.animal;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AnimalController")
public class AnimalController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Xử lý các thao tác liên quan đến danh sách động vật ở đây
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
        // Xử lý yêu cầu POST nếu cần
        doGet(request, response);
    }
}
