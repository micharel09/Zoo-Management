/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.animal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import sample.animal.AnimalDTO;
import sample.utils.DBUtils;

/**
 *
 * @author HoangNQ
 */
public class AnimalDAO {
//    private static final String LOGIN = "SELECT Fullname,Phone,Email,Gender,Dependent,RoleID FROM Employee"
//            + " WHERE Employee_ID = ? AND Password= ? ";
    private static final String UPDATE0 = "SELECT Name,DayIn,DayOut,Note,AnimalCage_ID FROM Animal"
            + " WHERE Animal = ?  ";
    
    //SEARCH ANIMAL FROM LIST
    private static final String SEARCH = "SELECT Animal_ID, Name, DayIn,DayOut,Note,AnimalCage_ID FROM Animal"
            + " WHERE Animal_ID like ? ";
    
    
   private static final String DELETE = "DELETE Animal WHERE Animal_ID = ? ";

     private static final String UPDATE = "UPDATE Animal SET "
            + "Name=?,DayIn=?,DayOut=? ,Note=? ,"
            + "AnimalCage_ID=? WHERE Animal_ID= ?";
     
    private static final String CHECK_DUPLICATE = "SELECT roleID FROM tblUsers WHERE userID = ?";
    
    
    //INSERT NEW ANIMAL
    private static final String INSERT = "INSERT INTO Animal (Animal_ID, Name, DayIn, DayOut, Note, AnimalCage_ID) VALUES (?,?,?,?,?,?) ";

      
      // Delete Animal from list

   public boolean delete(String animal_id) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                    ptm = conn.prepareStatement(DELETE);
                ptm.setString(1, animal_id);
                check = ptm.executeUpdate()>0?true:false;
                
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }

        return check;
    }

   
   //UPDATE ANIMAL
   public boolean update(AnimalDTO animal) throws SQLException {
       boolean checkUpdate = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(UPDATE);
               
               
                ptm.setString(1, animal.getAnimal_id());
                ptm.setString(2, animal.getDayin());
                 ptm.setString(3, animal.getDayout());
                  ptm.setString(4, animal.getName());
                   ptm.setString(5, animal.getNote());
                   ptm.setString(6, animal.getAnimalcage_id());
//                    ptm.setString(6, animal.getQuantity());
//                 ptm.setString(7, user.getEmployee_ID());
                    
                checkUpdate = ptm.executeUpdate() > 0? true: false;
            }
           
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (ptm != null) ptm.close();
            if (conn != null) conn.close();
        }
        return checkUpdate;
    }



    public boolean insertv2(AnimalDTO animal) throws ClassNotFoundException, SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
               
                ptm = conn.prepareStatement(INSERT);
                ptm.setString(1, animal.getAnimal_id());
                ptm.setString(2, animal.getDayin());
                ptm.setString(3, animal.getDayout());
                ptm.setString(4, animal.getName());
                ptm.setString(5, animal.getNote());
                ptm.setString(6, animal.getAnimalcage_id());
               
                
                 
                check = ptm.executeUpdate() > 0 ? true : false;
            }

        }finally {

            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }

        return check;
    }

    
    //SEARCH
    public List<AnimalDTO> getListAnimal() throws SQLException {
    List<AnimalDTO> listAnimal = new ArrayList<>();
    Connection conn = null;
    PreparedStatement ptm = null;
    ResultSet rs = null;
    
    try {
        conn = DBUtils.getConnection();
        if (conn != null) {
            ptm = conn.prepareStatement("SELECT Animal_ID, Name, DayIn, DayOut, Note, AnimalCage_ID FROM Animal");
            rs = ptm.executeQuery();
            
            while (rs.next()) {
                String animal_id = rs.getString("Animal_ID");
                String name = rs.getString("Name");
                String dayin = rs.getString("DayIn");
                String dayout = rs.getString("DayOut");
                String note = rs.getString("Note");
                String animalcage_id = rs.getString("AnimalCage_ID");
                
                listAnimal.add(new AnimalDTO(animal_id, name, dayin, dayout, note, animalcage_id));
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
    
    return listAnimal;
}
    
    //UPDATE
    public AnimalDTO getAnimal(String Animal_ID) throws SQLException {
        AnimalDTO animal = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(UPDATE0);
                ptm.setString(1, Animal_ID);
               
                rs = ptm.executeQuery();
                if (rs.next()) {
                    String Fullname = rs.getString("Name");
                    String DayIn = rs.getString("DayIn");
                    String DayOut = rs.getString("DayOut");
                    String Note = rs.getString("Note");
                    String AnimalCage_ID = rs.getString("AnimalCage_ID");
                    
                    animal = new  AnimalDTO(Animal_ID, Note, DayIn, DayOut, Note, AnimalCage_ID);

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
        return animal;
    }

    public List<AnimalDTO> getListAnimal(String searchKeyword) throws SQLException {
         List<AnimalDTO> listAnimal = new ArrayList<>();
    Connection conn = null;
    PreparedStatement ptm = null;
    ResultSet rs = null;
    
    try {
        conn = DBUtils.getConnection();
        if (conn != null) {
            ptm = conn.prepareStatement("SELECT Animal_ID, Name, DayIn, DayOut, Note, AnimalCage_ID FROM Animal");
            rs = ptm.executeQuery();
            
            while (rs.next()) {
                String animal_id = rs.getString("Animal_ID");
                String name = rs.getString("Name");
                String dayin = rs.getString("DayIn");
                String dayout = rs.getString("DayOut");
                String note = rs.getString("Note");
                String animalcage_id = rs.getString("AnimalCage_ID");
                
                listAnimal.add(new AnimalDTO(animal_id, name, dayin, dayout, note, animalcage_id));
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
    
    return listAnimal;
    }


   
}
    

