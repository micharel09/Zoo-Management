/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.animalreport;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dinhg
 */
public class AnimalReportController extends HttpServlet {
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    try {
        AnimalReportDAO AnimalReportDAO = new AnimalReportDAO();
        List<AnimalReportDTO> animalreport = AnimalReportDAO.getListAnimalReport();

        // Fetch additional news items (you can add your logic here)
        List<AnimalReportDTO> additionalAnimalReportList = new ArrayList<>();
        additionalAnimalReportList.add(new AnimalReportDTO()); // Add your additional news items here

        request.setAttribute("animalreport", animalreport);
        request.setAttribute("additionalAnimalReportList", additionalAnimalReportList);

        request.getRequestDispatcher("animal_report.jsp").forward(request, response);
    } catch (Exception e) {
        e.printStackTrace();
    }
}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Xử lý yêu cầu POST nếu cần
        doGet(request, response);
    }

}
