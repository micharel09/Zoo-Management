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
        HttpSession session = request.getSession();

        String date1 = (String) session.getAttribute("selectedDate");

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
        Double Price_T01_Ticket, Price_T02_Ticket = 0.0;

        String tmp_Price1 = d.getPrice("T01");
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

        String tmp_Price2 = d.getPrice("T02");
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

        EmailService.sendEmail(email, "CÁM ƠN ĐÃ ĐẶT VÉ", "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n"
                + "<html lang=\"en\">\n"
                + "<head>\n"
                + "<!--[if gte mso 9]>\n"
                + "    		<xml>\n"
                + "    			<o:OfficeDocumentsettings>\n"
                + "    			<o:AllowPNG/>\n"
                + "    			<o:PixelsPerInch>96</o:PixelsPerInch>\n"
                + "    			</o:OfficeDocumentsettings>\n"
                + "    		</xml>\n"
                + "    	<![endif]-->\n"
                + "<!--[if gt mso 15]>\n"
                + "     <style type=\"text/css\" media=\"all\">\n"
                + "     /* Outlook 2016 Height Fix */\n"
                + "     table, tr, td {border-collapse: collapse;}\n"
                + "     tr { font-size:0px; line-height:0px; border-collapse: collapse; }\n"
                + "     </style>\n"
                + "     <![endif]-->\n"
                + "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\n"
                + "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
                + "<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n"
                + "<meta name=\"format-detection\" content=\"telephone=no, date=no, address=no, email=no\">\n"
                + "<meta name=\"robots\" content=\"noindex, nofollow\">\n"
                + "<title>Order Confirmation Email</title>\n"
                + "<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\">\n"
                + "<link href=\"https://fonts.googleapis.com/css2?family=Lato:wght@400;700;900&display=swap\" rel=\"stylesheet\">\n"
                + "<style>\n"
                + "body {\n"
                + "    margin: 0;\n"
                + "    padding: 0;\n"
                + "    mso-line-height-rule: exactly;\n"
                + "    -ms-text-size-adjust: 100%;\n"
                + "    -webkit-text-size-adjust: 100%;\n"
                + "   }\n"
                + " body, table, td, p, a, li {\n"
                + "    -webkit-text-size-adjust: 100%;\n"
                + "    -ms-text-size-adjust: 100%;\n"
                + "    font-family: 'Lato', Arial, Helvetica, sans-serif;\n"
                + "}\n"
                + " table td {\n"
                + "    border-collapse: collapse;\n"
                + "}\n"
                + " table {\n"
                + "    border-spacing: 0;\n"
                + "    border-collapse: collapse;\n"
                + "    border-color: #FFFFFF;\n"
                + "}\n"
                + " p, a, li, td, blockquote {\n"
                + "    mso-line-height-rule: exactly;\n"
                + "}\n"
                + " p, a, li, td, body, table, blockquote {\n"
                + "    -ms-text-size-adjust: 100%;\n"
                + "    -webkit-text-size-adjust: 100%;\n"
                + "}\n"
                + " img, a img {\n"
                + "    border: 0;\n"
                + "    outline: none;\n"
                + "    text-decoration: none;\n"
                + "}\n"
                + " img {\n"
                + "    -ms-interpolation-mode: bicubic;\n"
                + "}\n"
                + " * img[tabindex=\"0\"] + div {\n"
                + "    display: none !important;\n"
                + "}\n"
                + " a[href^=tel],a[href^=sms],a[href^=mailto], a[href^=date] {\n"
                + "    color: inherit;\n"
                + "    cursor: default;\n"
                + "    text-decoration: none;\n"
                + "}\n"
                + " a[x-apple-data-detectors] {\n"
                + "    color: inherit !important;\n"
                + "    text-decoration: none !important;\n"
                + "    font-size: inherit !important;\n"
                + "    font-family: inherit !important;\n"
                + "    font-weight: inherit !important;\n"
                + "    line-height: inherit !important}\n"
                + " .logo {\n"
                + "    width: 220px!important;\n"
                + "    height: 35px!important;\n"
                + "}\n"
                + " .logo-footer {\n"
                + "    width: 129px!important;\n"
                + "    height: 29px!important;\n"
                + "}\n"
                + " .table-container .alert-icon {\n"
                + "    width: 120px!important;\n"
                + "    height: 120px!important;\n"
                + "}\n"
                + " .table-container .avatar-img {\n"
                + "    width: 64px!important;\n"
                + "    height: 64px!important;\n"
                + "}\n"
                + " .x-gmail-data-detectors, .x-gmail-data-detectors * {\n"
                + "    border-bottom: 0 !important;\n"
                + "    cursor: default !important}\n"
                + " @media screen {\n"
                + "    body {\n"
                + "    font-family: 'Lato', Arial, Helvetica, sans-serif;\n"
                + "}\n"
                + " }\n"
                + "@media only screen and (max-width: 640px) {\n"
                + "    body {\n"
                + "    margin: 0px!important;\n"
                + "    padding: 0px!important;\n"
                + "}\n"
                + "body, table, td, p, a, li, blockquote {\n"
                + "    -webkit-text-size-adjust: none!important;\n"
                + "}\n"
                + ".table-main, .table-container,.social-icons,table,.table-container td {\n"
                + "    width: 100%!important;\n"
                + "    min-width: 100%!important;\n"
                + "    margin: 0!important;\n"
                + "    float: none!important;\n"
                + "}\n"
                + ".table-container img {\n"
                + "    width: 100%!important;\n"
                + "    max-width: 100%!important;\n"
                + "    display: block;\n"
                + "    height: auto!important;\n"
                + "}\n"
                + " .table-container a {\n"
                + "    width: 50%!important;\n"
                + "    max-width: 100%!important;\n"
                + "}\n"
                + " .table-container .logo {\n"
                + "    width: 200px!important;\n"
                + "    height: 30px!important;\n"
                + "}\n"
                + " .table-container .alert-icon {\n"
                + "    width: 120px!important;\n"
                + "    height: 120px!important;\n"
                + "}\n"
                + " .social-icons {\n"
                + "    float: none!important;\n"
                + "    margin-left: auto!important;\n"
                + "    margin-right: auto!important;\n"
                + "    width: 220px!important;\n"
                + "    max-width: 220px!important;\n"
                + "    min-width: 220px!important;\n"
                + "    background: #383e56!important;\n"
                + "}\n"
                + ".social-icons td {\n"
                + "    width: auto!important;\n"
                + "    min-width: 1%!important;\n"
                + "    margin: 0!important;\n"
                + "    float: none!important;\n"
                + "    text-align: center;\n"
                + "}\n"
                + ".social-icons td a {\n"
                + "    width: auto!important;\n"
                + "    max-width: 100%!important;\n"
                + "    font-size: 10px!important;\n"
                + "}\n"
                + " .mobile-title {\n"
                + "    font-size: 34px!important;\n"
                + "}\n"
                + " .table-container .logo-footer {\n"
                + "    width: 129px!important;\n"
                + "    height: 29px!important;\n"
                + "    margin-bottom: 20px!important;\n"
                + "}\n"
                + " .block-img {\n"
                + "    width: 100%;\n"
                + "    height: auto;\n"
                + "    margin-bottom: 20px;\n"
                + "}\n"
                + " .info-block {\n"
                + "    padding: 0!important;\n"
                + "}\n"
                + " .video-img {\n"
                + "    width: 100%!important;\n"
                + "    height: auto!important;\n"
                + "}\n"
                + " .post-footer-container td {\n"
                + "    text-align: center!important;\n"
                + "    padding: 0 40px 0 40px!important;\n"
                + "}\n"
                + " }\n"
                + "\n"
                + "</style>\n"
                + "</head>\n"
                + "<body style=\"padding: 0; margin: 0; -webkit-font-smoothing:antialiased; background-color:#f1f1f1; -webkit-text-size-adjust:none;\">\n"
                + "<!--Main Parent Table -->\n"
                + "<table width=\"100%\" border=\"0\" cellpadding=\"0\" direction=\"ltr\" bgcolor=\"#f1f1f1\" cellspacing=\"0\" role=\"presentation\" style=\"width: 640px; min-width: 640px; margin:0 auto 0 auto;\">\n"
                + "<tbody>\n"
                + "<tr>\n"
                + "	<td style=\"display:none;font-size:0;line-height:0;color:#111111;\">\n"
                + "		 Sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat\n"
                + "	</td>\n"
                + "</tr>\n"
                + "<tr>\n"
                + "	<td>\n"
                + "		<!--Content Starts Here -->\n"
                + "		<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" width=\"640\" style=\"width: 640px; min-width: 640px;\" role=\"presentation\" bgcolor=\"#f1f1f1\">\n"
                + "		<tr>\n"
                + "			<td height=\"30\" style=\"line-height:30px;min-height:30px;\">\n"
                + "			</td>\n"
                + "		</tr>\n"
                + "		</table>\n"
                + "		<!--Top Header Starts Here -->\n"
                + "		<table border=\"0\" bgcolor=\"#383e56\" cellpadding=\"0\" cellspacing=\"0\" width=\"640\" role=\"presentation\" width=\"640\" style=\"width: 640px; min-width: 640px;\" align=\"center\" class=\"table-container \">\n"
                + "		<tbody>\n"
                + "		<tr width=\"640\" style=\"width: 640px; min-width: 640px; \" align=\"center\">\n"
                + "			<td>\n"
                + "				<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" width=\"640\" style=\"width: 640px; min-width: 640px;\" role=\"presentation\" bgcolor=\"#383e56\">\n"
                + "				<tr>\n"
                + "					<td height=\"35\" style=\"line-height:35px;min-height:35px;\">\n"
                + "					</td>\n"
                + "				</tr>\n"
                + "				</table>\n"
                + "				<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"640\" style=\"width: 640px; min-width: 640px;\" role=\"presentation\" align=\"center\" bgcolor=\"#383e56\">\n"
                + "				<tr>\n"
                + "					<td align=\"left\">\n"
                + "						<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" role=\"presentation\" align=\"center\" bgcolor=\"#383e56\">\n"
                + "						<tr>\n"
                + "							<td>\n"
                + "								<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" role=\"presentation\">\n"
                + "								<tr>\n"
                + "									<td align=\"center\" style=\"color:#ffffff;padding:20px 40px 0 40px;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:800;font-size:34px;-webkit-font-smoothing:antialiased;line-height:1.2;\" class=\"table-container mobile-title\">\n"
                + "										World Wide Zoo\n"
                + "								   </td>\n"
                + "								</tr>\n"
                + "								</table>\n"
                + "								<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" width=\"640\" style=\"width: 640px; min-width: 640px;\" role=\"presentation\" bgcolor=\"#383e56\">\n"
                + "								<tr>\n"
                + "									<td height=\"35\" style=\"line-height:35px;min-height:35px;\">\n"
                + "									</td>\n"
                + "								</tr>\n"
                + "								</table>\n"
                + "							</td>\n"
                + "						</tr>\n"
                + "						</table>\n"
                + "					</td>\n"
                + "				</tr>\n"
                + "				</table>\n"
                + "			</td>\n"
                + "		</tr>\n"
                + "		</tbody>\n"
                + "		</table>\n"
                + "		<!--Top Header Ends Here -->\n"
                + "		<!--Welcome  Section Ends Here -->\n"
                + "		<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" width=\"640\" style=\"width: 640px; min-width: 640px;\" role=\"presentation\" bgcolor=\"#FFFFFF\">\n"
                + "		<tr>\n"
                + "			\n"
                + "		</tr>\n"
                + "		</table>\n"
                + "		<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"640\" role=\"presentation\" bgcolor=\"#FFFFFF\" class=\"table-container \">\n"
                + "		<tbody>\n"
                + "		<tr>\n"
                + "			\n"
                + "		</tr>\n"
                + "		</tbody>\n"
                + "		</table>\n"
                + "		<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" width=\"640\" style=\"width: 640px; min-width: 640px;\" role=\"presentation\" bgcolor=\"#FFFFFF\">\n"
                + "		<tbody>\n"
                + "		<tr>\n"
                + "			<td align=\"center\" style=\"color:#45535C;padding:20px 40px 0 40px;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:800;font-size:34px;-webkit-font-smoothing:antialiased;line-height:1.2;\" class=\"table-container mobile-title\">\n"
                + "				 We’ve got your order\n"
                + "			</td>\n"
                + "		</tr>\n"
                + "		<tr>\n"
                + "			<td align=\"center\" style=\"color:#45535C;padding:20px 40px 0 40px;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:800;font-size:22px;-webkit-font-smoothing:antialiased;line-height:1.2;\" class=\"table-container mobile-title\">\n"
                + "				 Hi there!\n"
                + "			</td>\n"
                + "		</tr>\n"
                + "		<tr>\n"
                + "			<td align=\"center\" style=\"color:#5a5a5a;padding:20px 40px 0 40px;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:normal;font-size:16px;-webkit-font-smoothing:antialiased;line-height:1.4;\" class=\"table-container\">\n"
                + "				Please show this ticket to the gate agent\n"
                + "				Thank you for supporting our zoo\n"
                + "			</td>\n"
                + "		</tr>\n"
                + "		</tbody>\n"
                + "		</table>\n"
                + "		<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" width=\"640\" style=\"width: 640px; min-width: 640px;\" role=\"presentation\" bgcolor=\"#FFFFFF\">\n"
                + "		<tr>\n"
                + "			<td height=\"60\" style=\"line-height:60px;min-height:60px;\">\n"
                + "			</td>\n"
                + "		</tr>\n"
                + "		</table>\n"
                + "		<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" width=\"640\" style=\"width: 640px; min-width: 640px;\" role=\"presentation\" bgcolor=\"#FFFFFF\">\n"
                + "		<tbody>\n"
                + "		<tr>\n"
                + "			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" width=\"640\" style=\"width: 640px; min-width: 640px;\" role=\"presentation\" bgcolor=\"#FFFFFF\">\n"
                + "			<tbody>\n"
                + "			<tr>\n"
                + "				<td bgcolor=\"#FFF\" width=\"40\" align=\"left\" style=\"color:#5a5a5a;padding:10px 0 10px 0;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:bold;font-size:14px;-webkit-font-smoothing:antialiased;line-height:1.4;\">\n"
                + "				</td>\n"
                + "				<td bgcolor=\"#f9f9f9\" align=\"left\" style=\"color:#5a5a5a;padding:10px 40px 10px 40px;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:bold;font-size:14px;-webkit-font-smoothing:antialiased;line-height:1.4;\">\n"
                + "					 Order Confirmation #\n"
                + "				</td>\n"
                + "				<td bgcolor=\"#f9f9f9\" align=\"right\" style=\"color:#5a5a5a;padding:10px 40px 10px 40px;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:bold;font-size:14px;-webkit-font-smoothing:antialiased;line-height:1.4;\">\n"+ o.getId() +"</td>\n"
                + "				<td bgcolor=\"#FFF\" width=\"40\" align=\"left\" style=\"color:#5a5a5a;padding:10px 0 10px 0;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:bold;font-size:14px;-webkit-font-smoothing:antialiased;line-height:1.4;\">\n"
                + "				</td>\n"
                + "			</tr>\n"
                + "			</tbody>\n"
                + "			</table>\n"
                + "			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" width=\"640\" style=\"width: 640px; min-width: 640px;\" role=\"presentation\" bgcolor=\"#FFFFFF\">\n"
                + "			<tbody>\n"
                + "			<tr>\n"
                + "				<td bgcolor=\"#FFF\" width=\"40\" align=\"left\" style=\"color:#5a5a5a;padding:10px 0 10px 0;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:bold;font-size:14px;-webkit-font-smoothing:antialiased;line-height:1.4;\">\n"
                + "				</td>\n"
                + "				<td bgcolor=\"#FFFFFF\" align=\"left\" style=\"color:#5a5a5a;padding:10px 40px 10px 40px;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:normal;font-size:14px;-webkit-font-smoothing:antialiased;line-height:1.4;\">\n"
                + "					 Standard (+ Count_T01 +)\n"
                + "				</td>\n"
                + "				<td bgcolor=\"#FFFFFF\" align=\"right\" style=\"color:#5a5a5a;padding:10px 40px 10px 40px;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:bold;font-size:14px;-webkit-font-smoothing:antialiased;line-height:1.4;\">\n"
                + 					+ Total_T01_Ticket + "</td>\n"
                + "				<td bgcolor=\"#FFF\" width=\"40\" align=\"left\" style=\"color:#5a5a5a;padding:10px 0 10px 0;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:bold;font-size:14px;-webkit-font-smoothing:antialiased;line-height:1.4;\">\n"
                + "				</td>\n"
                + "			</tr>\n"
                + "			<tr>\n"
                + "				<td bgcolor=\"#FFF\" width=\"40\" align=\"left\" style=\"color:#5a5a5a;padding:10px 0 10px 0;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:bold;font-size:14px;-webkit-font-smoothing:antialiased;line-height:1.4;\">\n"
                + "				</td>\n"
                + "				<td bgcolor=\"#FFFFFF\" align=\"left\" style=\"color:#5a5a5a;padding:10px 40px 10px 40px;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:normal;font-size:14px;-webkit-font-smoothing:antialiased;line-height:1.4;\">\n"
                + "					 Child (+ Count_T02 +)\n"
                + "				</td>\n"
                + "				<td bgcolor=\"#FFFFFF\" align=\"right\" style=\"color:#5a5a5a;padding:10px 40px 10px 40px;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:bold;font-size:14px;-webkit-font-smoothing:antialiased;line-height:1.4;\">\n"
                + 					+ Total_T02_Ticket + "</td>\n"
                + "				<td bgcolor=\"#FFF\" width=\"40\" align=\"left\" style=\"color:#5a5a5a;padding:10px 0 10px 0;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:bold;font-size:14px;-webkit-font-smoothing:antialiased;line-height:1.4;\">\n"
                + "				</td>\n"
                + "			</tr>\n"
                + "			</tbody>\n"
                + "			</table>\n"
                + "			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" width=\"640\" style=\"width: 640px; min-width: 640px;\" role=\"presentation\" bgcolor=\"#FFFFFF\">\n"
                + "			<tbody>\n"
                + "			\n"
                + "			</tbody>\n"
                + "			</table>\n"
                + "			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" width=\"640\" style=\"width: 640px; min-width: 640px;\" role=\"presentation\" bgcolor=\"#FFFFFF\">\n"
                + "				<tbody>\n"
                + "				<tr>\n"
                + "					<td bgcolor=\"#FFF\" width=\"40\" align=\"left\" style=\"color:#5a5a5a;padding:10px 0 10px 0;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:bold;font-size:14px;-webkit-font-smoothing:antialiased;line-height:1.4;\">\n"
                + "					</td>\n"
                + "					<td bgcolor=\"#FFFFFF\" align=\"left\" style=\"color:#5a5a5a;padding:10px 40px 10px 40px;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:normal;font-size:14px;-webkit-font-smoothing:antialiased;line-height:1.4;\">\n"
                + "						 Check-in day\n"
                + "					</td>\n"
                + "					<td bgcolor=\"#FFFFFF\" align=\"right\" style=\"color:#5a5a5a;padding:10px 40px 10px 40px;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:bold;font-size:14px;-webkit-font-smoothing:antialiased;line-height:1.4;\">\n"						+ date1 +"</td>\n"
                + "					<td bgcolor=\"#FFF\" width=\"40\" align=\"left\" style=\"color:#5a5a5a;padding:10px 0 10px 0;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:bold;font-size:14px;-webkit-font-smoothing:antialiased;line-height:1.4;\">\n"
                + "					</td>\n"
                + "				</tr>\n"
                + "				</tbody>\n"
                + "				</table>\n"
                + "			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" width=\"640\" style=\"width: 640px; min-width: 640px;\" role=\"presentation\" bgcolor=\"#FFFFFF\">\n"
                + "			<tbody>\n"
                + "			<tr>\n"
                + "				<td bgcolor=\"#FFF\" width=\"40\" align=\"left\" style=\"color:#5a5a5a;padding:10px 0 10px 0;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:bold;font-size:14px;-webkit-font-smoothing:antialiased;line-height:1.4;\">\n"
                + "				</td>\n"
                + "				<td bgcolor=\"#FFFFFF\" align=\"left\" style=\"color:#5a5a5a;padding:10px 40px 10px 40px;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:normal;font-size:14px;-webkit-font-smoothing:antialiased;line-height:1.4;\">\n"
                + "					 Sales Taxes\n"
                + "				</td>\n"
                + "				<td bgcolor=\"#FFFFFF\" align=\"right\" style=\"color:#5a5a5a;padding:10px 40px 10px 40px;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:bold;font-size:14px;-webkit-font-smoothing:antialiased;line-height:1.4;\">\n"
                + 					+ discount +"</td>\n"
                + "				<td bgcolor=\"#FFF\" width=\"40\" align=\"left\" style=\"color:#5a5a5a;padding:10px 0 10px 0;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:bold;font-size:14px;-webkit-font-smoothing:antialiased;line-height:1.4;\">\n"
                + "				</td>\n"
                + "			</tr>\n"
                + "			</tbody>\n"
                + "			</table>\n"
                + "			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" width=\"640\" style=\"width: 640px; min-width: 640px;\" role=\"presentation\" bgcolor=\"#FFFFFF\">\n"
                + "			<tbody>\n"
                + "			<tr>\n"
                + "				<td bgcolor=\"#FFF\" width=\"40\" align=\"left\" style=\"color:#5a5a5a;padding:10px 0 10px 0;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:bold;font-size:14px;-webkit-font-smoothing:antialiased;line-height:1.4;\">\n"
                + "				</td>\n"
                + "				<td bgcolor=\"#FFFFFF\" align=\"left\" style=\"border-top:2px solid #CCCCCC;border-bottom:2px solid #CCCCCC;color:#5a5a5a;padding:10px 40px 10px 40px;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:bold;font-size:14px;-webkit-font-smoothing:antialiased;line-height:1.4;\" class=\"table-container\">\n"
                + "					 TOTAL\n"
                + "				</td>\n"
                + "				<td bgcolor=\"#FFFFFF\" align=\"right\" style=\"border-top:2px solid #CCCCCC;border-bottom:2px solid #CCCCCC;color:#5a5a5a;padding:10px 40px 10px 40px;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:bold;font-size:16px;-webkit-font-smoothing:antialiased;line-height:1.4;\" class=\"table-container\">\n"
                + 					+ discountedTotal +"</td>\n"
                + "				<td bgcolor=\"#FFF\" width=\"40\" align=\"left\" style=\"color:#5a5a5a;padding:10px 0 10px 0;font-family: 'Lato', Arial, Helvetica, sans-serif;font-weight:bold;font-size:14px;-webkit-font-smoothing:antialiased;line-height:1.4;\">\n"
                + "				</td>\n"
                + "			</tr>\n"
                + "			</tbody>\n"
                + "			</table>\n"
                + "		</tr>\n"
                + "		</tbody>\n"
                + "		</table>\n"
                + "		<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" width=\"640\" style=\"width: 640px; min-width: 640px;\" role=\"presentation\" bgcolor=\"#FFFFFF\">\n"
                + "		<tr>\n"
                + "			<td height=\"60\" style=\"line-height:60px;min-height:60px;\">\n"
                + "			</td>\n"
                + "		</tr>\n"
                + "		</table>\n"
                + "		<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" width=\"640\" style=\"  width: 640px; min-width: 640px;\" bgcolor=\"#FFFFFF\" role=\"presentation\" class=\"table-container \">\n"
                + "		<tbody>\n"
                + "		<tr>\n"
                + "			<td style=\" margin-right: 20px; padding:0 40px;\">\n"
                + "				<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"left\" width=\"270\" role=\"presentation\" class=\"table-container\">\n"
                + "				<tbody>\n"
                + "				\n"
                + "				<tr>\n"
                + "					<td align=\"left\" valign=\"top\" style=\"color: #111111; font-family: 'Lato', Arial, Helvetica, sans-serif; font-size: 16px; line-height: 16px;font-weight:bold;\">\n"
                + "						 Name:\n"
                + "					</td>\n"
                + "				</tr>\n"
                + "				\n"
                + "				<tr>\n"
                + "					<td height=\"10\" style=\"line-height:10px;min-height:10px;\">\n"
                + "					</td>\n"
                + "				</tr>\n"
                + "				<tr>\n"
                + "					<td align=\"left\" valign=\"top\" style=\"color: #111111; font-family: 'Lato', Arial, Helvetica, sans-serif; font-size: 14px; line-height: 14px;font-weight:normal;\">\n"+ fullname +"</td>\n"
                + "				</tr>\n"
                + "				</tbody>\n"
                + "				\n"
                + "				</table>\n"
                + "				\n"
                + "				<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"right\" width=\"270\" role=\"presentation\" class=\"table-container\">\n"
                + "				<tbody>\n"
                + "				\n"
                + "				<tr>\n"
                + "					<td align=\"left\" valign=\"top\" style=\"color: #111111; font-family: 'Lato', Arial, Helvetica, sans-serif; font-size: 16px; line-height: 16px;font-weight:bold;\">\n"
                + "						 Email\n"
                + "					</td>\n"
                + "				</tr>\n"
                + "				<tr>\n"
                + "					<td height=\"10\" style=\"line-height:10px;min-height:10px;\">\n"
                + "					</td>\n"
                + "				</tr>\n"
                + "				<tr>\n"
                + "<td align=\"left\" valign=\"top\" style=\"color: #111111; font-family: 'Lato', Arial, Helvetica, sans-serif; font-size: 14px; line-height: 14px;font-weight:normal;\">\n"+ email +"</td>\n"
                + "				</tr>\n"
                + "				</tbody>\n"
                + "				</table>\n"
                + "			</td>\n"
                + "			\n"
                + "		</tr>\n"
                + "		</tbody>\n"
                + "		</table>\n"
                + "		\n"
                + "				</td>\n"
                + "				\n"
                + "			</tr>\n"
                + "			</tbody>\n"
                + "			</table>\n"
                + "		<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" width=\"640\" style=\"width: 640px; min-width: 640px;\" role=\"presentation\" bgcolor=\"#FFFFFF\">\n"
                + "		\n"
                + "		<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" width=\"640\" style=\"width: 640px; min-width: 640px;\" bgcolor=\"#f7f8fb\" role=\"presentation\" class=\"table-container \">\n"
                + "		<tbody>\n"
                + "		<tr>\n"
                + "			\n"
                + "		</tr>\n"
                + "		</tbody>\n"
                + "		</table>\n"
                + "		<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" width=\"640\" style=\"width: 640px; min-width: 640px;\" role=\"presentation\" bgcolor=\"#f7f8fb\">\n"
                + "		<tr>\n"
                + "			<td height=\"20\" style=\"line-height:420px;min-height:20px;\">\n"
                + "			</td>\n"
                + "		</tr>\n"
                + "		</table>\n"
                + "		<table bgcolor=\"#383e56\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" width=\"640\" style=\"width: 640px; min-width: 640px;\" role=\"presentation\" class=\"table-container \">\n"
                + "		<tr>\n"
                + "			<td height=\"35\" style=\"line-height:35px;min-height:35px;\">\n"
                + "			</td>\n"
                + "		</tr>\n"
                + "		</table>\n"
                + "		<table bgcolor=\"#383e56\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" width=\"640\" style=\"width: 640px; min-width: 640px;\" role=\"presentation\" class=\"table-container \">\n"
                + "		\n"
                + "		</table>\n"
                + "		<table cellpadding=\"0\" width=\"640\" style=\"width: 640px; min-width: 640px;\" cellspacing=\"0\" border=\"0\" role=\"presentation\" align=\"center\" bgcolor=\"#383e56\">\n"
                + "		<tbody>\n"
                + "		<tr>\n"
                + "			<td>\n"
                + "				<table cellpadding=\"0\" width=\"220\" cellspacing=\"0\" border=\"0\" role=\"presentation\" align=\"center\" bgcolor=\"#383e56\">\n"
                + "				<tbody>\n"
                + "				\n"
                + "				</tbody>\n"
                + "				</table>\n"
                + "			</td>\n"
                + "		</tr>\n"
                + "		</tbody>\n"
                + "		</table>\n"
                + "		<table bgcolor=\"#383e56\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" width=\"640\" style=\"width: 640px; min-width: 640px;\" role=\"presentation\" class=\"table-container \">\n"
                + "		<tr>\n"
                + "			<td height=\"35\" style=\"line-height:35px;min-height:35px;\">\n"
                + "			</td>\n"
                + "		</tr>\n"
                + "		</table>\n"
                + "		<table bgcolor=\"#383e56\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" width=\"640\" style=\"width: 640px; min-width: 640px;\" role=\"presentation\" class=\"table-container \">\n"
                + "		<tr>\n"
                + "			<td style=\"color:#FFFFFF; font-size:14px; line-height:22px; text-align:center;border:none;font-weight:bold;\">\n"
                + "				 GROUP 1, Ho Chi Minh <br>\n"
                + "				 © 2023 World Wide Zoo, Inc. <br>\n"
                + "				<br>\n"
                + "				worldwidezoolc@gmail.com <a href=\"https://www.youtube.com/watch?v=dQw4w9WgXcQ\" target=\"_blank\" class=\"link t-grey-1\" style=\"text-decoration:underline; color:#FFFFFF;\">here</a>.\n"
                + "			</td>\n"
                + "		</tr>\n"
                + "		</table>\n"
                + "		<table bgcolor=\"#383e56\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" width=\"640\" style=\"width: 640px; min-width: 640px;\" role=\"presentation\" class=\"table-container \">\n"
                + "		<tr>\n"
                + "			<td height=\"60\" style=\"line-height:60px;min-height:60px;\">\n"
                + "			</td>\n"
                + "		</tr>\n"
                + "		</table>\n"
                + "		<!--Bottom Section Starts Here -->\n"
                + "		<table bgcolor=\"#CCCCCC\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" width=\"640\" style=\"width: 640px; min-width: 640px;\" role=\"presentation\" class=\"table-container \">\n"
                + "		<tr>\n"
                + "			<td height=\"1\" style=\"line-height:1px;min-height:1px;\">\n"
                + "			</td>\n"
                + "		</tr>\n"
                + "		</table>\n"
                + "		<table bgcolor=\"#f1f1f1\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" width=\"640\" style=\"width: 640px; min-width: 640px;\" role=\"presentation\" class=\"table-container \">\n"
                + "		<tr>\n"
                + "			<td height=\"40\" style=\"line-height:40px;min-height:40px;\">\n"
                + "			</td>\n"
                + "		</tr>\n"
                + "		</table>\n"
                + "		<table align=\"center\" border=\"0\" bgcolor=\"#f1f1f1\" cellpadding=\"0\" cellspacing=\"0\" width=\"640\" role=\"presentation\" class=\"table-container \">\n"
                + "		<tbody>\n"
                + "		\n"
                + "			\n"
                + "		</tr>\n"
                + "		</tbody>\n"
                + "		</table>\n"
                + "		<!--Bottom Section Ends Here -->\n"
                + "		<!--Main Td  Ends Here -->\n"
                + "	</td>\n"
                + "</tr>\n"
                + "</tbody>\n"
                + "<!--Main Parent Table Ends Here -->\n"
                + "</table>\n"
                + "</body>\n"
                + "</html>"
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
