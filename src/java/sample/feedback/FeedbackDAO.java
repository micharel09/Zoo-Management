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
import sample.utils.DBUtils;

/**
 *
 * @author dinhg
 */
public class FeedbackDAO {
      //PRINT
    public List<FeedbackDTO> getListFeedBack() throws SQLException {
    List<FeedbackDTO> listFeedBack = new ArrayList<>();
    Connection conn = null;
    PreparedStatement ptm = null;
    ResultSet rs = null;
    
    try {
        conn = DBUtils.getConnection();
        if (conn != null) {
            ptm = conn.prepareStatement("SELECT FeedBack_ID, Title, Purpose, Date, ProcessNote, Employee_ID, Status FROM FeedBack");
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
    
    return listFeedBack;
}
    
     public static void main(String[] args) throws SQLException {
        FeedbackDAO a = new FeedbackDAO();
        List<FeedbackDTO> list = a.getListFeedBack();
        System.out.println(list);       
    }
}
