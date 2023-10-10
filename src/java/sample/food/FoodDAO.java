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
    
    Connection conn = null;
    PreparedStatement ptm = null;
    ResultSet rs = null;
    //PRINT
    
    // getListFood()
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

    //DELETE
    //deletefood
    public FoodDTO deletefood(String foodid) {
        String sql = "delete from Food where Food_ID =?";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, foodid);
            rs = ptm.executeQuery();
            if (rs.next()) {
                return new FoodDTO(rs.getString(1), rs.getString(2));
            }
        } catch (Exception e) {
        }

        return null;
    }
    
    
    //getFoodByID
    public FoodDTO getFoodByID(String foodid) {
        String sql = "select * from Food where Food_ID =?";

        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, foodid);
            rs = ptm.executeQuery();
            if (rs.next()) {
                return new FoodDTO(rs.getString(1), rs.getString(2));
            }
        } catch (Exception e) {
        }

        return null;
    }

    
    //getAllFood()
        public List<FoodDTO> getAllFood() {
        List<FoodDTO> list = new ArrayList<>();
        String sql = "select * from Food";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            rs = ptm.executeQuery();
            while (rs.next()) {
                FoodDTO a = new FoodDTO(rs.getString("Food_ID"), rs.getString("FoodName"));
                list.add(a);
            }
        } catch (Exception e) {
        }

        return list;
    }
        
        
        //searchFood()
        public List<FoodDTO> searchfood(String foodid) {
        String sql = "select * from Food where Food_ID like ?";
        List<FoodDTO> list = new ArrayList<>();
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, "%" + foodid + "%");
            rs = ptm.executeQuery();
            if (rs.next()) {
                list.add(new FoodDTO(rs.getString(1), rs.getString(2)));
            }
        } catch (Exception e) {
        }

        return list;
    }
     
        
        //getNewIdFoodID()
        public String getNewIdFoodID() {
        String sql = "select top 1 Food_ID from Food order by [Food_ID] desc";
        String IdOrder = null;
        String newIdOrder = null;
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);

            rs = ptm.executeQuery();

            if (rs.next()) {
                IdOrder = rs.getString("Food_ID");
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
    
            public void creatfood(String food_id, String foodname) {
        String sql = " insert into Food(Food_ID,FoodName)\n"
                + " values(?,?)";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, food_id);
            ptm.setString(2, foodname);
            ptm.executeUpdate();

        } catch (Exception e) {
        }
    }
}
