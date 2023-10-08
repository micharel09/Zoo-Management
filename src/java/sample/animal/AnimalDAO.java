/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.animal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import sample.animacage.AnimalCageDTO;
import sample.utils.DBUtils;

/**
 *
 * @author ADMIN
 */
public class AnimalDAO {

    Connection conn = null;
    PreparedStatement ptm = null;
    ResultSet rs = null;

    public List<AnimalDTO> getAllAimal() {
        List<AnimalDTO> list = new ArrayList<>();
        String sql = "select * from Animal";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            rs = ptm.executeQuery();
            while (rs.next()) {
                AnimalDTO a = new AnimalDTO(rs.getString("Animal_ID"), rs.getString("Name"), rs.getString("DayIn"), rs.getString("Photo"), rs.getString("AnimalCage_ID"));
                list.add(a);
            }
        } catch (Exception e) {
        }

        return list;
    }

    public AnimalDTO deleteanime(String animalid) {
        String sql = "delete from Animal where Animal_ID =?";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, animalid);
            rs = ptm.executeQuery();
            if (rs.next()) {
                return new AnimalDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
            }
        } catch (Exception e) {
        }

        return null;
    }

    public List<AnimalDTO> searchanimal(String animalid) {
        String sql = "select * from Animal where Animal_ID like ?";
        List<AnimalDTO> list = new ArrayList<>();
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, "%" + animalid + "%");
            rs = ptm.executeQuery();
            if (rs.next()) {
                list.add(new AnimalDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public void updateanimal(String animalid, String name, String dayin, String photo, String animalcageid) {
        String sql;
        if (photo != null && !photo.isEmpty()) {
            sql = "UPDATE Animal SET Name=?, DayIn=?, Photo=?, AnimalCage_ID=? WHERE Animal_ID=?";
        } else {
            // If photo is not provided, don't update the Photo field
            sql = "UPDATE Animal SET Name=?, DayIn=?, AnimalCage_ID=? WHERE Animal_ID=?";
        }

        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, name);
            ptm.setString(2, dayin);

            if (photo != null && !photo.isEmpty()) {
                ptm.setString(3, photo);
                ptm.setString(4, animalcageid);
                ptm.setString(5, animalid);
            } else {
                ptm.setString(3, animalcageid);
                ptm.setString(4, animalid);
            }
            ptm.executeUpdate();

        } catch (Exception e) {
        }
    }

    public void createanimal(String animalid, String name, String dayin, String photo, String animalcageid) {
        String sql = " insert into Animal(Animal_ID,Name,DayIn,Photo,AnimalCage_ID)\n"
                + " values(?,?,?,?,?)";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, animalid);
            ptm.setString(2, name);
            ptm.setString(3, dayin);
            ptm.setString(4, photo);
            ptm.setString(5, animalcageid);
            ptm.executeUpdate();

        } catch (Exception e) {
        }
    }

    public AnimalDTO getAnimalByID(String animalid) {
        String sql = "select * from Animal where Animal_ID =?";

        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, animalid);
            rs = ptm.executeQuery();
            if (rs.next()) {
                return new AnimalDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
            }
        } catch (Exception e) {
        }

        return null;
    }

    public AnimalCageDTO getAnimalCageByID(String animalcageid) {
        String sql = "select * from Animal where AnimalCage_ID =?";

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

    public String getNewIdAnimalID() {
        String sql = "select top 1 Animal_ID from Animal order by [Animal_ID] desc";
        String IdOrder = null;
        String newIdOrder = null;
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);

            rs = ptm.executeQuery();

            if (rs.next()) {
                IdOrder = rs.getString("Animal_ID");
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

    public List<AnimalCageDTO> getAllAnimalCage() {
        String sql = "select * from [AnimalCage]";
        List<AnimalCageDTO> list = new ArrayList<>();
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);

            rs = ptm.executeQuery();
            while (rs.next()) {
                list.add(new AnimalCageDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public static void main(String[] args) {
        AnimalDAO d = new AnimalDAO();
        List<AnimalCageDTO> list = d.getAllAnimalCage();
        for (AnimalCageDTO animalCageDTO : list) {
            System.out.println(animalCageDTO);
        }
    }
}
