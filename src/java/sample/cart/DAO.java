/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.cart;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import sample.cart.Cart;
import sample.cart.Item;
import sample.cart.Product;
import sample.utils.DBUtils;
import sample.cart.Order;

/**
 *
 * @author ADMIN
 */
public class DAO {

    private static final String List_Ticket = "select * from ticket";
    private static final String Ticket_ID = "select * from ticket where Ticket_ID = ?";

    Connection conn = null;
    PreparedStatement ptm = null;
    ResultSet rs = null;

    public List<Product> getAll() {
        List<Product> list = new ArrayList<>();
        String sql = List_Ticket;
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ResultSet rs = ptm.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getString("Ticket_ID"),
                        rs.getString("Type"),
                        rs.getDouble("Price"));
                list.add(p);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public Product getProductById(String id) {

        String sql = Ticket_ID;
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, id);
            ResultSet rs = ptm.executeQuery();
            while (rs.next()) {
                return new Product(rs.getString("Ticket_ID"),
                        rs.getString("Type"),
                        rs.getDouble("Price"));

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

//    public void addOrder(Order o, Cart cart){
//        LocalDate curDate = LocalDate.now();
//        String date =curDate.toString();
//        try {
//            //add order
//            String sql="insert into [orders] values(?,?,?,?,?)";
//            conn = DBUtils.getConnection();
//            ptm = conn.prepareStatement(sql);
//            ptm.setString(1, date);
//            ptm.setString(2, o.getEmail());
//            ptm.setString(3, o.getFullname());
//            ptm.setString(3, o.getPhone());
//            ptm.setDouble(4, cart.getTotalMoney());
//            ptm.executeUpdate();
//            //lay id cua Order vua add
//            String sql1 = "select top 1 id from [order] order by Order_ID desc";
//            conn = DBUtils.getConnection();
//            ptm = conn.prepareStatement(sql1);
//            ResultSet rs = ptm.executeQuery();
//            //add bang Orderdetail
//            if(rs.next()){
//                int oid =rs.getInt("id");
//                for(Item i:cart.getItems()){
//                    String sql2= "insert into [orderdetail] values(?,?,?,?,?)";
//                                conn = DBUtils.getConnection();
//            ptm = conn.prepareStatement(sql);
//                    ptm.setInt(1, oid);
//                    ptm.setString(2, date);
//                    ptm.setInt(2, i.getProduct().getTid());
//                    ptm.setString(3, o.getId());
//                    ptm.setInt(4, i.getQuantity());
//                    ptm.setDouble(5, i.getPrice());
//                    ptm.executeUpdate();
//                }
//            }
//
//        } catch (Exception e) {
//        }
//    }
    public void addOrder(Order o, Cart cart) {
        LocalDate curDate = LocalDate.now();
        String date = curDate.toString();
        String sql = "insert into Orders(Order_ID,Email,FullName,PhoneNumber,Date,TotalPrice)\n"
                + "values (?,?,?,?,?,?)";

        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, o.getId());
            ptm.setString(2, o.getEmail());
            ptm.setString(3, o.getFullname());
            ptm.setString(4, o.getPhone());
            ptm.setString(5, date);
            ptm.setDouble(6, o.getTotalmoney());
            ptm.executeUpdate();
         

        } catch (Exception e) {
        }
    }

    public String getNewIdOrder() {
        String sql = "select top 1 Order_ID from orders order by [Order_ID] desc";
        String IdOrder = null;
        String newIdOrder = null;
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            rs = ptm.executeQuery();
            if (rs.next()) {
                IdOrder = rs.getString("Order_ID");
            }
            if (IdOrder != null && IdOrder.length() >= 4) {
                String prefix = IdOrder.substring(0, 1);
                int number = Integer.parseInt(IdOrder.substring(1));
                number++;
                newIdOrder = prefix + String.format("%03d", number);
            }
        } catch (Exception e) {
        }
        return newIdOrder;
    }

    public void addOrderDetail(OrderDetail od, Cart cart) {
            String sql = " insert into OrderDetail(OrderDetail_ID,EntryDay,Ticket_ID,Order_ID,Promotion,Quantity)\n" +
    "  values (?,?,?,?,?,?)";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            
                ptm.setString(1, od.getOid());
                ptm.setString(2, od.getDate());
                ptm.setString(3, od.getTid());
                ptm.setString(4, od.getPid());
                ptm.setString(5, od.getPromotion());
                ptm.setInt(6, od.getQuantity());
                ptm.executeUpdate();
        } catch (Exception e) {
        }
    }

    public String getNewIdOrderDetail() {
        String sql = "select top 1 OrderDetail_ID from orderdetail order by [OrderDetail_ID] desc";
        String IdOrder = null;
        String newIdOrder = null;
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            
            rs = ptm.executeQuery();
            
            if (rs.next()) {
                IdOrder = rs.getString("OrderDetail_ID");
            }
            if (IdOrder != null && IdOrder.length() >= 4) {
                String prefix = IdOrder.substring(0, 2);
                int number = Integer.parseInt(IdOrder.substring(2));
                number++;
                newIdOrder = prefix + String.format("%02d", number);
            }
        } catch (Exception e) {
        }
        return newIdOrder;
    }

    String getDiscount(String promotion) {
         String sql = "select Discount from Discount where ID=?";
     
      String tmp="0";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1,promotion);
            rs = ptm.executeQuery();
            if(rs.next()){
                tmp= rs.getString("Discount");
               
            }else{
                tmp="0";
            }
            
        } catch (Exception e) {
        }
        return tmp;
    }
}
