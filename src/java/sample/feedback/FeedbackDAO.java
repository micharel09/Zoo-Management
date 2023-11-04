/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.feedback;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import sample.animal.AnimalDTO;
import sample.utils.DBUtils;

/**
 *
 * @author dinhg
 */
public class FeedbackDAO {
    //PRINT

    Connection conn = null;

    PreparedStatement ptm = null;
    ResultSet rs = null;

    public List<FeedbackDTO> getListFeedBack() {
        List<FeedbackDTO> listFeedBack = new ArrayList<>();

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement("SELECT FeedBack_ID, Title, Purpose, Date, ProcessNote, Employee_ID, Status, Animal_ID FROM FeedBack ORDER BY FeedBack_ID DESC");
                rs = ptm.executeQuery();

                while (rs.next()) {
                    String news_id = rs.getString("FeedBack_ID");
                    String title = rs.getString("Title");
                    String purpose = rs.getString("Purpose");
                    String date = rs.getString("Date");
                    String processnote = rs.getString("ProcessNote");
                    String employee_id = rs.getString("Employee_ID");
                    String status = rs.getString("Status");
                    String animal_id = rs.getString("animal_id");

                    listFeedBack.add(new FeedbackDTO(news_id, title, purpose, date, processnote, employee_id, status,animal_id));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();

        }

        return listFeedBack;
    }

    public List<FeedbackDTO> searchfeedback(String employee_id) {
        String sql = "select * from Feedback where Employee_ID like ?";
        List<FeedbackDTO> list = new ArrayList<>();
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, "%" + employee_id + "%");
            rs = ptm.executeQuery();
            if (rs.next()) {
                list.add(new FeedbackDTO(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public List<FeedbackDTO> searchfeedbackstatus(String status) {
        String sql = "select * from Feedback where Status like ?";
        List<FeedbackDTO> list = new ArrayList<>();
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, "%" + status + "%");

            rs = ptm.executeQuery();
            while (rs.next()) {
                list.add(new FeedbackDTO(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),rs.getString(8)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public void createfeedback(String title, String purpose, String date, String processnote, String employee_id, String animal_id) {
        LocalDate curDate = LocalDate.now();
        date = curDate.toString();
        String sql = " insert into FeedBack(Title,Purpose,Date,ProcessNote,Employee_ID,Animal_ID)\n"
                + " values(?,?,?,?,?,?)";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, title);
            ptm.setString(2, purpose);
            ptm.setString(3, date);
            ptm.setString(4, processnote);
            ptm.setString(5, employee_id);
            ptm.setString(6, animal_id);
            ptm.executeUpdate();

        } catch (Exception e) {
        }
    }

    public FeedbackDTO getFeedbackByID(String id) {
        String sql = "select * from Feedback where FeedBack_ID = ?";

        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, id);
            rs = ptm.executeQuery();
            while (rs.next()) {
                return new FeedbackDTO(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void updateFeedback(String feedback_id, String processnote, String status) {
        String sql = "update FeedBack \n"
                + "set ProcessNote = ? , Status = ?\n"
                + "WHERE FeedBack_ID = ?";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, processnote);
            ptm.setString(2, status);
            ptm.setString(3, feedback_id);
            ptm.executeUpdate();

        } catch (Exception e) {
        }

    }

    public String getNewIdFeedbackID() {
        String sql = "select top 1 FeedBack_ID from FeedBack order by [FeedBack_ID] desc";
        String IdOrder = null;
        String newIdOrder = null;
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);

            rs = ptm.executeQuery();

            if (rs.next()) {
                IdOrder = rs.getString("FeedBack_ID");
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

    List<FeedbackDTO> getListFeedBack(String emp_ID) {

        List<FeedbackDTO> listFeedBack = new ArrayList<>();

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement("SELECT FeedBack_ID, Title, Purpose, Date, ProcessNote, Employee_ID, Status, Animal_ID FROM FeedBack where Employee_ID=?  ORDER BY FeedBack_ID DESC");
                ptm.setString(1, emp_ID);
                rs = ptm.executeQuery();

                while (rs.next()) {
                    String news_id = rs.getString("FeedBack_ID");
                    String title = rs.getString("Title");
                    String purpose = rs.getString("Purpose");
                    String date = rs.getString("Date");
                    String processnote = rs.getString("ProcessNote");
                    String employee_id = rs.getString("Employee_ID");
                    String status = rs.getString("Status");
                    String animal_id = rs.getString("animal_id");
                    listFeedBack.add(new FeedbackDTO(news_id, title, purpose, date, processnote, employee_id, status,animal_id));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();

        }
        return listFeedBack;
    }

    public int getNumberPage() {
        String sql = " select count (*)  from FeedBack";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            rs = ptm.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }
       public int getNumberPageTrainer(String empid) {
        String sql = " select count (*)  from FeedBack where Employee_ID = ?";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, empid);
            rs = ptm.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<FeedbackDTO> getPaging(int index) {
        List<FeedbackDTO> list = new ArrayList<>();
        String sql = " select *from FeedBack\n"
                + "  order by FeedBack_ID\n DESC"
                + "  OFFSET ? ROWS\n"
                + "  FETCH FIRST 5 ROWS ONLY;";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setInt(1, (index - 1) * 5);
            rs = ptm.executeQuery();
            while (rs.next()) {
                list.add(new FeedbackDTO(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public List<FeedbackDTO> getPagingTrainer(String id,int index) {
        List<FeedbackDTO> list = new ArrayList<>();
        String sql = "select * from FeedBack\n"
                + "WHERE Employee_ID = ? \n"
                + "order by FeedBack_ID DESC\n"
                + "OFFSET ? ROWS\n"
                + "FETCH FIRST 5 ROWS ONLY";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, id);
            ptm.setInt(2, (index - 1) * 5);
            rs = ptm.executeQuery();
            while (rs.next()) {
                list.add(new FeedbackDTO(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public List<FeedbackDTO> searchstatusTrainer(String status, String id) {
        List<FeedbackDTO> list = new ArrayList<>();
        String sql = " select *from FeedBack WHERE Employee_ID = ?\n"
                + "  and Status like ?";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, id);
            ptm.setString(2, "%" + status + "%");
            rs = ptm.executeQuery();
            while (rs.next()) {
                list.add(new FeedbackDTO(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public static void main(String[] args) throws SQLException {
        FeedbackDAO a = new FeedbackDAO();
//        String status = "E004";
//        int index = 0;
        String animal_id = "Ani001";  
        List<FeedbackDTO> list = a.getListAnimalIDFeedback(animal_id);    //getPagingTrainer(status,index);
        for (FeedbackDTO o : list) {
            System.out.println(o);
        }
    }
    
    public List<FeedbackDTO> getListAnimalIDFeedback(String animal_id){
       List<FeedbackDTO> list = new ArrayList<>();
        String sql = "  select * from FeedBack\n" +
                     "  where Animal_ID = ? ";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, animal_id);
            
            rs = ptm.executeQuery();
            while (rs.next()) {
                list.add(new FeedbackDTO(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    List<String> getListAnimal_ID(String emp_id) throws SQLException {
        List<String> list_ID = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement("SELECT a.Animal_ID\n" +
"FROM Animal a\n" +
"join AnimalCage ac on  a.AnimalCage_ID = ac.AnimalCage_ID\n" +
"WHERE [Employee_ID] = ? ");
                ptm.setString(1, emp_id);
               
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String ID = rs.getString("FullName");
                   
                  
                    list_ID.add(new String(ID));
                   

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
        return list_ID;   
    }
    public List<AnimalDTO> getListAnimal_Name(String empid){
       List<AnimalDTO> list = new ArrayList<>();
        String sql = "SELECT a.Animal_ID\n" +
"FROM Animal a\n" +
"join AnimalCage ac on  a.AnimalCage_ID = ac.AnimalCage_ID\n" +
"WHERE [Employee_ID] = ? AND a.status <> 'DEATH'";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, empid);
            
            rs = ptm.executeQuery();
            while (rs.next()) {
                list.add(new AnimalDTO(rs.getString(1)));
            }
        } catch (Exception e) {

        }
        return list;
    }
    
        
}
