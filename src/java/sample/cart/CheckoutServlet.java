/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.cart;

import sample.cart.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
import sample.utils.EmailService;
import static sample.utils.EmailService.sendEmail;

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
            throws ServletException, IOException, SQLException {
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
        LocalDate curDate = LocalDate.now();
        String date = curDate.toString();

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
        Order o = new Order(orderid, email, fullname, phone, date, discountedTotal);//date ngày mua
        d.addOrder(o, cart);

        int Count_T01 = 0;
        int Count_T02 = 0;
        Double Total_T01_Ticket = 0.0;
        Double Total_T02_Ticket = 0.0;
        Double Price_T01_Ticket,Price_T02_Ticket=0.0;
       
        String tmp_Price1= d.getPrice("T01");
         if (tmp_Price1.length() > 0) {
            try {
               Price_T01_Ticket = Double.parseDouble(tmp_Price1.toString());
            } catch (NumberFormatException e) {
                // Xử lý nếu không thể ép kiểu thành số nguyên
                e.printStackTrace();
                Price_T01_Ticket = 0.0;
            }
        } else {
            Price_T01_Ticket = 0.0;
        }
         
         String tmp_Price2= d.getPrice("T02");
         if (tmp_Price2.length() > 0) {
            try {
                Price_T02_Ticket = Double.parseDouble(tmp_Price2.toString());
            } catch (NumberFormatException e) {
                // Xử lý nếu không thể ép kiểu thành số nguyên
                e.printStackTrace();
                Price_T02_Ticket = 0.0;
            }
        } else {
            Price_T02_Ticket = 0.0;
        }
         
       

        for (Item i : cart.getItems()) {
            String orderdetailid = d.getNewIdOrderDetail();
            String tid = i.getProduct().getTid();
            int quantity = cart.getQuantityById(tid);
            OrderDetail od = new OrderDetail(orderdetailid, date1, tid, orderid, promotion, quantity);// date1 ngày đi quẹt vé
            d.addOrderDetail(od, cart);
            //d.addTicketDetail(od,cart,o);

            if (tid.equals("T01")) {
                Count_T01 = quantity;
                Total_T01_Ticket = Price_T01_Ticket * Count_T01;
            } else if (tid.equals("T02")) {
                Count_T02 = quantity;
                Total_T02_Ticket = Price_T02_Ticket * Count_T02;
            }

        }
        
        EmailService.sendEmail(email, "CÁM ƠN ĐÃ ĐẶT VÉ", "<html><body >" + 
    "<h1>Thông tin đơn hàng</h1>" + 
    "<p><strong>Mã đơn hàng:</strong> " + o.getId() + "</p>" +
    "<p><strong>Ngày mua:</strong> " + date + "</p>" +
    "<p><strong>Ngày check in:</strong> " + date1 + "</p>" +
    "<p><strong>Tổng tiền:</strong> " + discountedTotal + "</p>" +
    "<p><strong>Người nhận:</strong> " + fullname + "</p>" +
    "<p><strong>Số điện thoại:</strong> " + phone + "</p>" +
    "<p><strong>Email:</strong> " + email + "</p>" +
    
    "<h2>Chi tiết đơn hàng</h2>" +
    "<p><strong>Loại vé: Standard</strong></p>" +
    "<p>Đơn giá: " + Price_T01_Ticket + "</p>" +
    "<p>Số lượng: " + Count_T01 + "</p>" +
    "<p>Thành tiền: " + Total_T01_Ticket + "</p>" +
    
    "<p><strong>Loại vé: Child</strong></p>" +
    "<p>Đơn giá: " + Price_T02_Ticket + "</p>" +
    "<p>Số lượng: " + Count_T02 + "</p>" +
    "<p>Thành tiền: " + Total_T02_Ticket + "</p>" +
    
    "<p><strong>Khuyến mại:</strong> " + discount + "% thành tiền " + (totalMoney * discount / 100) + "</p>" +
    "<p><strong>Tổng giá trị đơn hàng:</strong> " + discountedTotal + "</p>" + 
    "</body></html>"
);
            //orderID, số lượng các loại, tổng số tiền của bill, ngày ,thông tin người nhận

        // Remove the cart cookie after processing
        Cookie c = new Cookie("cart", "");
        c.setMaxAge(0);
        response.addCookie(c);

        request.getRequestDispatcher("thank.jsp").forward(request, response);

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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(CheckoutServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(CheckoutServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
