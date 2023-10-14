
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.area;

/**
 *
 * @author khong phai Minh Tuan
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import sample.user.UserDTO;
import sample.utils.DBUtils;

/**
 *
 * @author HoangNQ
 */
public class AreaDAO {
    Connection conn = null;
    PreparedStatement ptm = null;
    ResultSet rs = null;
   
        
    public List<AreaDTO> getAllArea(){
                   List<AreaDTO> list = new ArrayList<>();
        String sql = "select * from Area";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ResultSet rs = ptm.executeQuery();
            while(rs.next()){
                AreaDTO a = new AreaDTO(rs.getString("Area_ID"),
                                        rs.getString("AreaLocation"),
                                        rs.getString("Genre"),
                                        rs.getString("Photo"));
                list.add(a);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
        }
        
    public AreaDTO getAreaByID(String id) {

        String sql = "select * from Area \n"
                + "where Area_ID =?";
        try {
            conn = new DBUtils().getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, id);
            rs = ptm.executeQuery();
            while (rs.next()) {
                return (new AreaDTO(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4)));
            }
        } catch (Exception e) {
        }
        return null;
    }
            public List<AreaDTO> getAreaById(String area){
                   List<AreaDTO> list = new ArrayList<>();
        String sql = "select * from Area\n" +
"where Area_ID = ?";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, area);
            rs = ptm.executeQuery();
            while(rs.next()){
                AreaDTO a = new AreaDTO(rs.getString("Area_ID"),
                                        rs.getString("AreaLocation"),
                                        rs.getString("Genre"),
                                        rs.getString("Photo"));
                list.add(a);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
        }

 public static void main(String[] args) {
          AreaDAO dao = new AreaDAO();  
          List<AreaDTO> s = dao.getAreaById("Area001");
         System.out.println(s);
          }
         
     }

        


    