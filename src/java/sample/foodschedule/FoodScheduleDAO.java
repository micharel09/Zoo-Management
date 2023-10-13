/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.foodschedule;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import sample.utils.DBUtils;

/**
 *
 * @author ADMIN
 */
public class FoodScheduleDAO {

    Connection conn = null;
    PreparedStatement ptm = null;
    ResultSet rs = null;

    public List<FoodScheduleDTO> getAllFoodSchedule() {
        List<FoodScheduleDTO> list = new ArrayList<>();
        String sql = "select * from FoodSchedule";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            rs = ptm.executeQuery();
            while (rs.next()) {
                FoodScheduleDTO a = new FoodScheduleDTO(rs.getString(1), rs.getString(2),rs.getString(3), rs.getString(4),rs.getString(5));
                list.add(a);
            }
        } catch (Exception e) {
        }

        return list;
    }

    public FoodScheduleDTO deleteschedule(String scheduleid) {
        String sql = "delete from FoodSchedule where Schedule_ID =?";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, scheduleid);
            rs = ptm.executeQuery();
            if (rs.next()) {
                return new FoodScheduleDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5));
            }
        } catch (Exception e) {
        }

        return null;
    }

    public List<FoodScheduleDTO> searchschedule(String scheduleid) {
        String sql = "select * from FoodSchedule where Schedule_ID like ?";
        List<FoodScheduleDTO> list = new ArrayList<>();
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, "%" + scheduleid + "%");
            rs = ptm.executeQuery();
            if (rs.next()) {
                list.add(new FoodScheduleDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public void updateschedule(String scheduleid, String time, String animalcageid , String foodid, String date) {
        String sql = "UPDATE FoodSchedule SET Time=?, AnimalCage_ID=?, Food_ID=?, Date=? WHERE Schedule_ID= ?";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, time);
            ptm.setString(2, animalcageid);
            ptm.setString(3, foodid);
            ptm.setString(4, date);
            ptm.setString(5, scheduleid);
            ptm.executeUpdate();

        } catch (Exception e) {
        }
    }

    public void createschedule(FoodScheduleDTO f) {
        String sql = " insert into FoodSchedule(Schedule_ID,Time,AnimalCage_ID, Food_ID,Date)\n"
                + " values(?,?,?,?,?)";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, f.getSchedule_id());
            ptm.setString(2, f.getTime());
            ptm.setString(3, f.getAnimalcage_id());
            ptm.setString(4, f.getFood_id());
            ptm.setString(5, f.getDate());
            ptm.executeUpdate();

        } catch (Exception e) {
        }
    }
    
    
      public FoodScheduleDTO getScheduleByID(String scheduleid) {
        String sql = "select * from FoodSchedule where Schedule_ID =?";
        
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, scheduleid);
            rs = ptm.executeQuery();
            if (rs.next()) {
                return new FoodScheduleDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5));
            }
        } catch (Exception e) {
        }

        return null;
    }

         //getNewIdFoodID()
        public String getNewIdScheduleID() {
        String sql = "select top 1 Schedule_ID from FoodSchedule order by [Schedule_ID] desc";
        String IdOrder = null;
        String newIdOrder = null;
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);

            rs = ptm.executeQuery();

            if (rs.next()) {
                IdOrder = rs.getString("Schedule_ID");
            }
            if (IdOrder != null && IdOrder.length() >= 5) {
                String prefix = IdOrder.substring(0, 2);
                int number = Integer.parseInt(IdOrder.substring(2));
                number++;
                newIdOrder = prefix + String.format("%03d", number);
            }
        } catch (Exception e) {
        }
        return newIdOrder;
    }
      

public static void main(String[] args) throws SQLException {
        FoodScheduleDAO a = new FoodScheduleDAO();
        List<FoodScheduleDTO> list = a.getAllFoodSchedule();
        for (FoodScheduleDTO o : list){
        System.out.println(o); 
        }
    }


}
