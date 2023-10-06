/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.food;

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
public class FoodDAO {
    //PRINT
    public List<FoodDTO> getListFood() throws SQLException {
    List<FoodDTO> listFood = new ArrayList<>();
    Connection conn = null;
    PreparedStatement ptm = null;
    ResultSet rs = null;
    
    try {
        conn = DBUtils.getConnection();
        if (conn != null) {
            ptm = conn.prepareStatement("SELECT Food_ID, FoodName FROM Food");
            rs = ptm.executeQuery();
            
            while (rs.next()) {
                String animal_id = rs.getString("Food_ID");
                String name = rs.getString("FoodName");
                
                listFood.add(new FoodDTO(animal_id, name));
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
    
    return listFood;
}
}
