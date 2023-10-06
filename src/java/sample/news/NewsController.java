/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.news;

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
public class NewsController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    try {
        NewsDAO newsDAO = new NewsDAO();
        List<NewsDTO> news = newsDAO.getListNews();

        // Fetch additional news items (you can add your logic here)
        List<NewsDTO> additionalNewsList = new ArrayList<>();
        additionalNewsList.add(new NewsDTO()); // Add your additional news items here

        request.setAttribute("news", news);
        request.setAttribute("additionalNewsList", additionalNewsList);

        request.getRequestDispatcher("news.jsp").forward(request, response);
    } catch (Exception e) {
        e.printStackTrace();
    }
}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Xử lý yêu cầu POST nếu cần
        doGet(request, response);
    }

}
