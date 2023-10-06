/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.foodschedule;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dinhg
 */
public class FoodScheduleController extends HttpServlet {
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        try {
            FoodScheduleDAO foodScheduleDAO = new FoodScheduleDAO();
            List<FoodScheduleDTO> foodschedule = foodScheduleDAO.getListFoodSchedule();
            

            request.setAttribute("foodschedule", foodschedule);
            
            
            request.getRequestDispatcher("food_schedule.jsp").forward(request, response);
        } catch (Exception e) {
            
            e.printStackTrace();
            
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Xử lý yêu cầu POST nếu cần
        doGet(request, response);
    }
}
