/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.ticket;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import sample.utils.DBUtils;

/**
 *
 * @author ACER
 */
public class TicketDAO {
    private static final String LOGIN = "SELECT Fullname,Phone,Email,Gender,Photo,RoleID FROM Employee"
            + " WHERE Employee_ID = ? AND Password= ? ";
    private static final String SEARCH = "SELECT Ticket_ID,Type , Price,Discount,Price_Main From Ticket"
            + " WHERE Ticket_ID like ? ";
    private static final String UPDATE = "UPDATE Ticket SET  Discount=? WHERE Ticket_ID= ?";
    private static final String SEARCH_ORDERS = "SELECT Order_ID,Email , FullName,PhoneNumber,Date,TotalPrice From Orders"
            + " WHERE [Date] >= ? AND [Date] <= ? ";
     private static final String SEARCH_ORDER_DETAIL = "SELECT OrderDetail_ID, EntryDay ,  Ticket_ID,  Order_ID,  Promotion,Quantity"
           + " From OrderDetail"
            + " WHERE [EntryDay] >= ? AND [EntryDay] <= ? ";       
     
        public boolean updateDiscount(String ID_Ticket, String Discount) throws SQLException {
             boolean checkUpdate = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(UPDATE);
               
               
                ptm.setString(1, Discount);
                ptm.setString(2, ID_Ticket);
                
                    
                checkUpdate = ptm.executeUpdate() > 0? true: false;
            }
           
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (ptm != null) ptm.close();
            if (conn != null) conn.close();
        }
        return checkUpdate;
    }

    public List<TicketDTO> getListTicket(String search) throws SQLException {
        List<TicketDTO> listTicket = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        int Discount=0;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(SEARCH);
                ptm.setString(1, "%" + search + "%");
                rs = ptm.executeQuery();
                while (rs.next()) {
                    //Ticket_ID, String Ticket_Name, String Price, String Discount, String Price_Main
                    String Ticket_ID = rs.getString("Ticket_ID");
                    String Ticket_Name = rs.getString("Type");
                    Double Price = Double.parseDouble(rs.getString("Price"));
                    if(rs.getString("Discount")==null){
                        Discount=0;
                    }else{
                       Discount= Integer.parseInt(rs.getString("Discount"));}
                      Double Price_Main = Double.parseDouble(rs.getString("Price_Main"));
                   
                   
                 
                    listTicket.add(new TicketDTO( Ticket_ID, Ticket_Name ,  Price,  Discount,  Price_Main));
                    
                    
//                    
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }

        return listTicket; 
    }

    public List<OrdersDTO> getListOrders(String Start_Day, String End_Day) throws SQLException {
        List<OrdersDTO> listOrders = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        Double TotalPrice_tmp=0.0;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(SEARCH_ORDERS);
                ptm.setString(1,Start_Day);
                ptm.setString(2,End_Day);
                rs = ptm.executeQuery();
                while (rs.next()) {
                   
                    String Order_ID = rs.getString("Order_ID");
                    String Email = rs.getString("Email");
                     String FullName = rs.getString("FullName");
                      String PhoneNumber = rs.getString("PhoneNumber");
                       String Date = rs.getString("Date");                       
                    Double TotalPrice = Double.parseDouble(rs.getString("TotalPrice"));
                   TotalPrice_tmp=TotalPrice_tmp+TotalPrice;
                                                                      
                    listOrders.add(new OrdersDTO( Order_ID, Email ,  FullName,  PhoneNumber,  Date,TotalPrice));                                      
                }
               
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }

        return listOrders; 
        }

    public List<OrderDetailDTO> getListOrderDetail(String Start_Day, String End_Day) throws SQLException {
         List<OrderDetailDTO> listOrderDetail = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
       
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(SEARCH_ORDER_DETAIL);
                ptm.setString(1,Start_Day);
                ptm.setString(2,End_Day);
                rs = ptm.executeQuery();
                while (rs.next()) {
            
                    String OrderDetail_ID = rs.getString("OrderDetail_ID");
                    String EntryDay = rs.getString("EntryDay");
                     String Ticket_ID = rs.getString("Ticket_ID");
                      String Order_ID = rs.getString("Order_ID");
                       String Promotion = rs.getString("Promotion");                       
                    int Quantity = Integer.parseInt(rs.getString("Quantity"));
                  
                                                                      
                    listOrderDetail.add(new OrderDetailDTO( OrderDetail_ID, EntryDay ,  Ticket_ID,  Order_ID,  Promotion,Quantity));                                      
                }
               
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }

        return listOrderDetail; 
       }

  
}
