package sample.foodschedule;

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
import sample.animalcage.AnimalCageDAO;
import sample.animalcage.AnimalCageDTO;
import sample.food.FoodDAO;
import sample.food.FoodDTO;

@WebServlet(name = "UpdateSchedule", urlPatterns = {"/updateschedule"})

public class UpdateSchedule extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        String scheduleid = request.getParameter("scheduleID");
//        FoodScheduleDAO d = new FoodScheduleDAO();
//        FoodScheduleDTO a = d.getScheduleByID(scheduleid);
//        request.setAttribute("aa", a);
//        List<FoodScheduleDTO> list = d.getAllFoodSchedule();
//        request.setAttribute("foodschedule", list);
//        request.getRequestDispatcher("update_schedule.jsp").forward(request, response);

        String scheduleid = request.getParameter("scheduleID");
        FoodScheduleDAO d = new FoodScheduleDAO();
        FoodScheduleDTO a = d.getScheduleByID(scheduleid);
        request.setAttribute("schedule", a);
        FoodDAO f = new FoodDAO();
        AnimalCageDAO ac = new AnimalCageDAO();
        List<FoodDTO> listfood = f.getAllFood();
        List<AnimalCageDTO> listanimalcage = ac.getAllAnimalCage();
        request.setAttribute("food", listfood);
        request.setAttribute("animalcage", listanimalcage);
        request.getRequestDispatcher("update_schedule.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String scheduleid = request.getParameter("scheduleid");
        String time = request.getParameter("time");
        String animalcageid = request.getParameter("animalcageid");
        String foodid = request.getParameter("foodid");
        String date = request.getParameter("date");

        FoodScheduleDAO d = new FoodScheduleDAO();

        d.updateschedule(scheduleid, time, animalcageid, foodid, date);

        response.sendRedirect("foodschedulecontroller");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
