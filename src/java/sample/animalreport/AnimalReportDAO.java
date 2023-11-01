/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.animalreport;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import sample.animal.AnimalDTO;
import sample.utils.DBUtils;

/**
 *
 * @author dinhg
 */
public class AnimalReportDAO {
      //PRINT
    Connection conn = null;
    
    PreparedStatement ptm = null;
    ResultSet rs = null;
    
    public List<AnimalReportDTO> getListAnimalReport()  {
    List<AnimalReportDTO> listAnimalReport = new ArrayList<>();
  
    try {
        conn = DBUtils.getConnection();
        if (conn != null) {
            ptm = conn.prepareStatement("SELECT *from AnimalReport");
            rs = ptm.executeQuery();
            
            while (rs.next()) {
                String report_id = rs.getString("Report_ID");
                String date = rs.getString("Date");
                String note = rs.getString("Note");
                String animal_id = rs.getString("Animal_ID");
                
                listAnimalReport.add(new AnimalReportDTO(report_id, date, note, animal_id));
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
    
    }
    
    return listAnimalReport;
}
        public void createAnimalReport(String report_id, String date,String note, String animal_id) {
        String sql = " insert into AnimalReport(Report_ID, Date, Note, Animal_ID)\n"
                + " values(?,?,?,?)";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, report_id);
            ptm.setString(2, date);
            ptm.setString(3, note);
            ptm.setString(4, animal_id);    
            ptm.executeUpdate();

        } catch (Exception e) {
        }
    }
        
 
    public static void main(String[] args) {
          AnimalReportDAO dao = new AnimalReportDAO();  
          List<AnimalReportDTO> s = dao.getListAnimalReport();
           for (AnimalReportDTO o : s){
         System.out.println(o);
          }
    }
    
}

