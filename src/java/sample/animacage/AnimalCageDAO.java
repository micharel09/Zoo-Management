/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.animacage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import sample.utils.DBUtils;

/**
 *
 * @author dinhg
 */
public class AnimalCageDAO {
    
    Connection conn = null;
    PreparedStatement ptm = null;
    ResultSet rs = null;

    public List<AnimalCageDTO> getAllAimalCage() {
        List<AnimalCageDTO> list = new ArrayList<>();
        String sql = "select * from AnimalCage";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            rs = ptm.executeQuery();
            while (rs.next()) {
                AnimalCageDTO a = new AnimalCageDTO(rs.getString("AnimalCage_ID"), rs.getString("Name"), rs.getString("Area_ID"), rs.getString("Employee_ID"));
                list.add(a);
            }
        } catch (Exception e) {
        }

        return list;
    }

    public AnimalCageDTO deleteanime(String animalcageid) {
        String sql = "delete from AnimalCage where AnimalCage_ID =?";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, animalcageid);
            rs = ptm.executeQuery();
            if (rs.next()) {
                return new AnimalCageDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
            }
        } catch (Exception e) {
        }

        return null;
    }

    public List<AnimalCageDTO> searchanimalcage(String animalcageid) {
        String sql = "select * from AnimalCage where AnimalCage_ID like ?";
        List<AnimalCageDTO> list = new ArrayList<>();
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, "%" + animalcageid + "%");
            rs = ptm.executeQuery();
            if (rs.next()) {
                list.add(new AnimalCageDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public void updateanimeal(String animalcageid, String name, String area_id, String employee_id) {
        String sql = "UPDATE AnimalCage SET  AnimalCage_ID=?, Name=?, Area_ID=? WHERE Employee_ID=?";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, animalcageid);
            ptm.setString(2, name);
            ptm.setString(3, area_id);
            ptm.setString(4, employee_id);
            ptm.executeUpdate();

        } catch (Exception e) {
        }
    }

    public void createanimealcage(String animalcageid, String name, String area_id, String employee_id)  {
        String sql = " insert into AnimalCage(AnimaCage_ID,Name,Area_ID,Employee_ID)\n"
                + " values(?,?,?,?)";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, animalcageid);
            ptm.setString(2, name);
            ptm.setString(3, area_id);
            ptm.setString(4, employee_id);
            ptm.executeUpdate();

        } catch (Exception e) {
        }
    }
    
    
      public AnimalCageDTO getAnimalCageByID(String animalcageid) {
        String sql = "select * from AnimalCage where AnimalCage_ID =?";
        
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, animalcageid);
            rs = ptm.executeQuery();
            if (rs.next()) {
                return new AnimalCageDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
            }
        } catch (Exception e) {
        }

        return null;
    }

         public String getNewIdAnimalCageID() {
        String sql = "select top 1 AnimalCage_ID from AnimalCage order by [AnimalCage_ID] desc";
        String IdOrder = null;
        String newIdOrder = null;
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            
            rs = ptm.executeQuery();
            
            if (rs.next()) {
                IdOrder = rs.getString("AnimalCage_ID");
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
      
      
    public static void main(String[] args) {
        AnimalCageDAO d = new AnimalCageDAO();
    }
}
