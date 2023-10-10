/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.cart;

import sample.cart.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sample.cart.Cart;
import sample.cart.Order;
import sample.cart.Product;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "CheckoutServlet", urlPatterns = {"/checkout"})

public class CheckoutServlet extends HttpServlet {

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

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the
    // + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DAO d = new DAO();

        List<Product> list = d.getAll();
        Cookie[] arr = request.getCookies();
        String txt = "";
        if (arr != null) {
            for (Cookie o : arr) {
                if (o.getName().equals("cart")) {
                    txt += o.getValue();
                }
            }
        }

        Cart cart = new Cart(txt, list);
        request.setAttribute("cart", cart);
        request.setAttribute("carttotalmoney", cart.getTotalMoney());
        request.getRequestDispatcher("checkout.jsp").forward(request, response);
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
        DAO d = new DAO();
        List<Product> list = d.getAll();
        Cookie[] arr = request.getCookies();
        String txt = "";
        if (arr != null) {
            for (Cookie o : arr) {
                if (o.getName().equals("cart")) {
                    txt += o.getValue();
                }
            }
        }

        Cart cart = new Cart(txt, list);
        request.setAttribute("cart", cart);
        String date = request.getParameter("date");
        String date1 = request.getParameter("date1");
        String email = request.getParameter("email");
        String fullname = request.getParameter("fullname");
        String phone = request.getParameter("phone");
        String promotion = request.getParameter("promotion");
        int discount = 0; // Initialize discount to 0

        String tmp = "0";
        StringBuilder numbersStr = new StringBuilder();
        tmp = d.getDiscount(promotion);

        for (char c : tmp.toCharArray()) {
            // Nếu là ký tự số, thêm vào StringBuilder
            if (Character.isDigit(c)) {
                numbersStr.append(c);
            }
        }

        // Ép kiểu chuỗi số thành số nguyên
        if (numbersStr.length() > 0) {
            try {
                discount = Integer.parseInt(numbersStr.toString());
            } catch (NumberFormatException e) {
                // Xử lý nếu không thể ép kiểu thành số nguyên
                e.printStackTrace();
                discount = 0;
            }
        } else {
            discount = 0;
        }

        double totalMoney = cart.getTotalMoney(); // Store the totalMoney value
        double discountedTotal = totalMoney - (totalMoney * discount / 100);
        
        String orderid = d.getNewIdOrder();
        Order o = new Order(orderid, email, fullname, phone, date, discountedTotal);
        d.addOrder(o, cart);
        for (Item i : cart.getItems()) {
            String orderdetailid = d.getNewIdOrderDetail();
            String tid = i.getProduct().getTid();
            int quantity = cart.getQuantityById(tid);
            OrderDetail od = new OrderDetail(orderdetailid, date1, tid, orderid, promotion, quantity);
            d.addOrderDetail(od, cart);

        }

        // Remove the cart cookie after processing
        Cookie c = new Cookie("cart", "");
        c.setMaxAge(0);
        response.addCookie(c);

        request.getRequestDispatcher("checkout.jsp").forward(request, response);
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
