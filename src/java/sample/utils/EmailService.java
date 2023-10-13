package sample.utils;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

import java.io.UnsupportedEncodingException;
import javax.mail.*;
import javax.mail.internet.*;
import java.util.Properties;



/**
 *
 * @author Admin
 */
public class EmailService {

    public static int sendEmail(String to, String subject, String content) throws UnsupportedEncodingException {
        int result = 0;
        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");
        properties.put("mail.smtp.ssl.protocols", "TLSv1.2");
        Session session = Session.getInstance(properties, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("zoohcm@gmail.com","miqgbauxealftajx");
                // đăng nhập gmail
            }
        });
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("zoohcm@gmail.com"));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            message.setSubject(MimeUtility.encodeText(subject, "UTF-8", "B"));
            message.setContent(content, "text/html; charset=utf-8");
            // Send the email
            Transport.send(message);
            result = 1;
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        return result; 
    }
    
    public static void main(String[] args) throws UnsupportedEncodingException {
        //System.out.println(sendEmail("comtambichatrung@gmail.com", "cc", "<html><body><h2>Trung xàm lz</h2></body></html>"));
        String orderdetailid="aaaaaa";
        int b =100;
        System.out.println(sendEmail("comtambichatrung@gmail.com", "cc", "<html><body>" + orderdetailid + " <br> "+ b +"</body></html>"));
        //System.out.println(sendEmail("comtambichatrung@gmail.com", "cc", "<html><body>" + orderdetailid + " <br> " + b + "</body></html>"));

       // EmailService.sendEmail(email, "Đặt vé thành công", "\"<html><body><%=orderdetailid%></body></html>\"");
    }
}
