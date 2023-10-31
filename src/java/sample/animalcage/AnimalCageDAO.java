/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.animalcage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import sample.area.AreaDTO;
import sample.user.UserDTO;
import sample.utils.DBUtils;

/**
 *
 * @author dinhg
 */
public class AnimalCageDAO {

    Connection conn = null;
    PreparedStatement ptm = null;
    ResultSet rs = null;

    public List<AnimalCageDTO> getAllAnimalCage() {
        List<AnimalCageDTO> list = new ArrayList<>();
        String sql = "select * from AnimalCage";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            rs = ptm.executeQuery();
            while (rs.next()) {
                AnimalCageDTO a = new AnimalCageDTO(rs.getString("AnimalCage_ID"), rs.getString("Name"), rs.getString("Area_ID"), rs.getString("Employee_ID"),rs.getString("Photo"));
                list.add(a);
            }
        } catch (Exception e) {
        }

        return list;
    }

    public boolean deleteanimalcage(String animalcageid) {
        String sql = "delete from AnimalCage where AnimalCage_ID =?";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, animalcageid);
            int rowsAffected = ptm.executeUpdate();

            // Nếu có ít nhất một hàng bị ảnh hưởng, xóa thành công
            return rowsAffected > 0;
        } catch (Exception e) {
            // Xử lý ngoại lệ (nếu cần)
            e.printStackTrace(); // In thông tin ngoại lệ để kiểm tra lỗi
            return false; // Trả về false nếu có lỗi xảy ra
        }
    }

    public List<AnimalCageDTO> searchanimalcage(String animalcageid) {
        String sql = "select * from AnimalCage where AnimalCage_ID like ?";
        List<AnimalCageDTO> list = new ArrayList<>();
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, "%" + animalcageid + "%");
            rs = ptm.executeQuery();
            while (rs.next()) {
                list.add(new AnimalCageDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public void updateanimalcage(String animalcageid, String name, String area_id, String employee_id,String photo) {
        String sql;
        if(photo != null && !photo.isEmpty()){
            sql = "UPDATE AnimalCage SET Name=?, Area_ID=?, Employee_ID=?,Photo=? WHERE AnimalCage_ID=?";
        }else{
            sql = "UPDATE AnimalCage SET Name=?, Area_ID=?, Employee_ID=? WHERE AnimalCage_ID=?";
        }
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            if(photo != null && !photo.isEmpty()){
                ptm.setString(1, name);
            ptm.setString(2, area_id);
            ptm.setString(3, employee_id);
            ptm.setString(4, photo);

            ptm.setString(5, animalcageid);
            }else{
            ptm.setString(1, name);
            ptm.setString(2, area_id);
            ptm.setString(3, employee_id);
            ptm.setString(4, animalcageid);
            }
            ptm.executeUpdate();

        } catch (Exception e) {
        }
    }

    public void createanimealcage(String animalcageid, String name, String area_id, String employee_id,String photo) {
        String sql = " insert into AnimalCage(AnimalCage_ID,Name,Area_ID,Employee_ID,Photo)\n"
                + " values(?,?,?,?,?)";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, animalcageid);
            ptm.setString(2, name);
            ptm.setString(3, area_id);
            ptm.setString(4, employee_id);
            ptm.setString(5, photo);
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
                return new AnimalCageDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5));
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

    public List<UserDTO> getUserTrainer() {
        List<UserDTO> list = new ArrayList<>();
        String sql = "select * from employee where RoleID = 'TRAINER'";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);

            rs = ptm.executeQuery();

            while (rs.next()) {
                list.add(new UserDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8)));
            }

        } catch (Exception e) {
        }

        return list;
    }

    public List<AreaDTO> getAllArea() {
        List<AreaDTO> list = new ArrayList<>();
        String sql = "select * from area";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            rs = ptm.executeQuery();

            while (rs.next()) {
                AreaDTO a = new AreaDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
                list.add(a);
            }
        } catch (Exception e) {
        }

        return list;
    }

    public List<AnimalCageDTO> getLocationAreaByAnimalCage(String location) {
        List<AnimalCageDTO> list = new ArrayList<>();
        String sql = " SELECT aa.AnimalCage_ID, aa.Name, a.Area_ID, aa.Employee_ID, aa.Photo \n"
                + "        FROM Area a \n"
                + "        \n"
                + "        JOIN AnimalCage aa ON a.Area_ID = aa.Area_ID \n"
                + "		where a.Area_ID = ?";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, location);
            rs = ptm.executeQuery();
            while(rs.next()){
                list.add(new AnimalCageDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public static void main(String[] args) {
        AnimalCageDAO d = new AnimalCageDAO();
        List<AnimalCageDTO> list = d.getLocationAreaByAnimalCage("Area001");
        
            for (AnimalCageDTO animalCageDTO : list) {
                System.out.println(animalCageDTO);
        }
   

    }
}
