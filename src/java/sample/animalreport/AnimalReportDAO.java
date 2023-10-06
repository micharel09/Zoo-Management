/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.animalreport;

import sample.feedback.*;
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
public class AnimalReportDAO {
      //PRINT
    public List<AnimalReportDTO> getListAnimalReport() throws SQLException {
    List<AnimalReportDTO> listAnimalReport = new ArrayList<>();
    Connection conn = null;
    PreparedStatement ptm = null;
    ResultSet rs = null;
    
    try {
        conn = DBUtils.getConnection();
        if (conn != null) {
            ptm = conn.prepareStatement("SELECT Report_ID, Date, Note, Animal_ID FROM FeedBack");
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
    
    return listAnimalReport;
}
}
