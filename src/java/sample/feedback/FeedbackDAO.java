/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.feedback;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import sample.animal.AnimalDTO;
import sample.utils.DBUtils;

/**
 *
 * @author dinhg
 */
public class FeedbackDAO {
      //PRINT
      Connection conn = null;
    PreparedStatement ptm = null;
    ResultSet rs = null;
    
    public List<FeedbackDTO> getListFeedBack()  {
    List<FeedbackDTO> listFeedBack = new ArrayList<>();
  
    try {
        conn = DBUtils.getConnection();
        if (conn != null) {
            ptm = conn.prepareStatement("SELECT FeedBack_ID, Title, Purpose, Date, ProcessNote, Employee_ID, Status FROM FeedBack ORDER BY FeedBack_ID DESC");
            rs = ptm.executeQuery();
            
            while (rs.next()) {
                String news_id = rs.getString("FeedBack_ID");
                String title = rs.getString("Title");
                String purpose = rs.getString("Purpose");
                String date = rs.getString("Date");
                String processnote = rs.getString("ProcessNote");
                String employee_id = rs.getString("Employee_ID");
                String status = rs.getString("Status");
                
                listFeedBack.add(new FeedbackDTO(news_id, title, purpose, date, processnote, employee_id, status));
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
    
    }
    
    return listFeedBack;
}
    
        public List<FeedbackDTO> searchfeedback(String employee_id) {
        String sql = "select * from Feedback where Employee_ID like ?";
        List<FeedbackDTO> list = new ArrayList<>();
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, "%" + employee_id + "%");
            rs = ptm.executeQuery();
            if (rs.next()) {
                list.add(new FeedbackDTO(rs.getString(1)
                        , rs.getString(2)
                        , rs.getString(3)
                        ,rs.getString(4)
                        , rs.getString(5)
                        , rs.getString(6)
                        , rs.getString(7)));
            }
        } catch (Exception e) {
        }
        

        return list;
    }

    public void updatefeedback(String feedback_id, String title, String purpose, String date, String processnote, String employee_id, String status) {
        String sql = "UPDATE Animal SET Title=?, Purpose=?,Date=?, Processnote=?, Employee_ID = ?, Status = ?, WHERE Feedback_ID=?";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, title);
            ptm.setString(2, purpose);
            ptm.setString(3, date);
            ptm.setString(4, processnote);
            ptm.setString(5, employee_id);
            ptm.setString(6, processnote);
            ptm.setString(7, status);
            ptm.setString(7, status);
            ptm.setString(8, feedback_id);
            ptm.executeUpdate();

        } catch (Exception e) {
        }
    }

    public void createfeedback(String title, String purpose, String date, String processnote, String employee_id) {
        String sql = " insert into FeedBack(Title,Purpose, Date,ProcessNote,Employee_ID)\n"
                + " values(?,?,?,?,?)";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, title);
            ptm.setString(2, purpose);
            ptm.setString(3, date);
            ptm.setString(4, processnote);
            ptm.setString(5, employee_id);
 
            ptm.executeUpdate();

        } catch (Exception e) {
        }
    }
    
    public FeedbackDTO getFeedbackByID(String id) {
        String sql = "select * from Feedback where Employee_ID like ?";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1,id);
            rs = ptm.executeQuery();
            while (rs.next()) {
                return new FeedbackDTO(rs.getString(1)
                        , rs.getString(2)
                        , rs.getString(3)
                        , rs.getString(4)
                        , rs.getString(5)
                        , rs.getString(6)
                        , rs.getString(7));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
 

         public String getNewIdFeedbackID() {
        String sql = "select top 1 FeedBack_ID from FeedBack order by [FeedBack_ID] desc";
        String IdOrder = null;
        String newIdOrder = null;
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            
            rs = ptm.executeQuery();
            
            if (rs.next()) {
                IdOrder = rs.getString("FeedBack_ID");
            }
            if (IdOrder != null && IdOrder.length() >= 6) {
                String prefix = IdOrder.substring(0, 3);
                int number = Integer.parseInt(IdOrder.substring(3));
                number++;
                newIdOrder = prefix + String.format("%03d", number);
            }
        } catch (Exception e) {
        }
        return newIdOrder;
    }
      
    
     public static void main(String[] args) throws SQLException {
        FeedbackDAO a = new FeedbackDAO();
        List<FeedbackDTO> list = a.getListFeedBack();
        System.out.println(list);       
    }
}
