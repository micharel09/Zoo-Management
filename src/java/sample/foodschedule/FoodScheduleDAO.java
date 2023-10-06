/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.foodschedule;

import sample.food.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import sample.utils.DBUtils;

/**
 *
 * @author dinhg
 */
public class FoodScheduleDAO {
    //PRINT
    public List<FoodScheduleDTO> getListFoodSchedule() throws SQLException {
    List<FoodScheduleDTO> listFoodSchedule = new ArrayList<>();
    Connection conn = null;
    PreparedStatement ptm = null;
    ResultSet rs = null;
    
    try {
        conn = DBUtils.getConnection();
        if (conn != null) {
            ptm = conn.prepareStatement("SELECT Schedule_ID, Time, AnimalCage_ID, Food_ID FROM FoodSchedule");
            rs = ptm.executeQuery();
            
            while (rs.next()) {
                String schedule_id= rs.getString("Schedule_ID");
                String time = rs.getString("Time");
                String animalcage_id = rs.getString("AnimalCage_ID");
                String food_id = rs.getString("Food_ID");
                
                listFoodSchedule.add(new FoodScheduleDTO(schedule_id, time, animalcage_id, food_id));
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
    
    return listFoodSchedule;
}
}
