/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.user;

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
public class UserDAO {

    private static final String LOGIN = "SELECT Fullname,Phone,Email,Gender,Photo,RoleID FROM Employee"
            + " WHERE Employee_ID = ? AND Password= ? ";
    private static final String UPDATE0 = "SELECT Fullname,Phone,Email,Gender,Photo,RoleID FROM Employee"
            + " WHERE Employee_ID = ?  ";

    // user = new  UserDTO(Employee_ID, String Password, String Fullname, String Phone, String Email, String Gender, String Dependent, String RoleID);
    private static final String SEARCH = "SELECT Employee_ID, FullName, Phone,Email,Gender,Photo, roleID FROM Employee"
            + " WHERE Employee_ID like ? ";

    private static final String GET_ORDER_ID = "SELECT OrderID FROM orders"
            + " WHERE userID = ? AND order_date= ? ";

    private static final String GET_DESC_EMPLOYEE_ID = " SELECT TOP 1 Employee_ID\n"
            + "FROM Employee\n"
            + "ORDER BY [Employee_ID] DESC; ";
    private static final String DELETE = "DELETE Employee WHERE Employee_ID = ? ";
    //private static final String DELETE = "DELETE FROM [SWP3].[dbo].[Employee] WHERE Employee_ID = ?";

    private static final String UPDATE = "UPDATE Employee SET "
            + "FullName=?,Phone=?,Email=? ,Gender=? ,Photo=? ,"
            + "roleID=? WHERE Employee_ID= ?";
    private static final String CHECK_DUPLICATE = "SELECT roleID FROM tblUsers WHERE userID = ?";
    // UserDTO user = new UserDTO( employeeID,  password,  fullName, Phone, Email,  Gender,  Dependent,  roleID);
    private static final String INSERT = "INSERT INTO Employee (Employee_ID, Password,Fullname,Phone,Email,Gender,Photo,RoleID ) VALUES (?,?,?,?,?,?,?,?) ";
    private static final String INSERT_ORDER_DETAIL = "INSERT INTO orderdeatil (productID,orderdeatilID,OrderID,Price,Quantity) VALUES (?,?,?,?,?) ";
    private static final String GET_QUANTITY = "SELECT quantity FROM product WHERE productID = ?";
    private static final String UPDATE_SCHEDULE = "UPDATE S\n"
            + "SET S.Note = 'Absent'\n"
            + "FROM [SWP4].[dbo].[FeedingSchedule] AS S\n"
            + "INNER JOIN [SWP4].[dbo].[FeedingTimes] AS F ON S.ID_Part_Time = F.ID_Time\n"
            + "WHERE CONVERT(DATETIME, CONVERT(VARCHAR, S.Day_Feeding, 102) + ' ' + CONVERT(VARCHAR, F.End_Time, 108), 102) < GETDATE()\n"
            + "AND S.Note = 'Not_Yet'";

    public int getQuantity(String id) throws SQLException {
        int quantity = 0;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_QUANTITY);
                ptm.setString(1, id);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    quantity = Integer.parseInt(rs.getString("quantity"));

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
        return quantity;

    }

    public UserDTO checkLogin(String Employee_ID, String Password) throws SQLException {
        UserDTO user = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(LOGIN);
                ptm.setString(1, Employee_ID);
                ptm.setString(2, Password);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    String Fullname = rs.getString("FullName");
                    String Phone = rs.getString("Phone");
                    String Email = rs.getString("Email");
                    String Gender = rs.getString("Gender");
                    String Photo = rs.getString("Photo");
                    String RoleID = rs.getString("RoleID");

                    user = new UserDTO(Employee_ID, "", Fullname, Phone, Email, Gender, Photo, RoleID);

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
        return user;
    }

    public boolean delete(String userID) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(DELETE);
                ptm.setString(1, userID);
                check = ptm.executeUpdate() > 0 ? true : false;

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

    public boolean update(UserDTO user) throws SQLException {
        boolean checkUpdate = false;
        Connection conn = null;
        PreparedStatement ptm = null;

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(UPDATE);

                ptm.setString(1, user.getFullname());
                ptm.setString(2, user.getPhone());
                ptm.setString(3, user.getEmail());
                ptm.setString(4, user.getGender());
                ptm.setString(5, user.getPhoto());
                ptm.setString(6, user.getRoleID());
                ptm.setString(7, user.getEmployee_id());

                try {
                    checkUpdate = ptm.executeUpdate() > 0;
                } catch (SQLException e) {
                    e.printStackTrace(); // In ra lỗi
                    // Hoặc có thể sử dụng Logger để ghi log lỗi
                }
                // checkUpdate = ptm.executeUpdate() > 0? true: false;
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
        return checkUpdate;
    }

    public boolean insertv2(UserDTO user) throws ClassNotFoundException, SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                // UserDTO user = new UserDTO( employeeID,  password,  fullName, Phone, Email,  Gender,  Dependent,  roleID);
                ptm = conn.prepareStatement(INSERT);
                ptm.setString(1, user.getEmployee_id());
                ptm.setString(2, user.getPassword());
                ptm.setString(3, user.getFullname());
                ptm.setString(4, user.getPhone());
                ptm.setString(5, user.getEmail());
                ptm.setString(6, user.getGender());
                ptm.setString(7, user.getPhoto());
                ptm.setString(8, user.getRoleID());

                check = ptm.executeUpdate() > 0 ? true : false;
            }

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

    public List<UserDTO> getListEmployee(String search) throws SQLException {
        List<UserDTO> listEmployee = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(SEARCH);
                ptm.setString(1, "%" + search + "%");
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String Employee_ID = rs.getString("Employee_ID");
                    String Fullname = rs.getString("FullName");
                    String Phone = rs.getString("Phone");
                    String Email = rs.getString("Email");
                    String Gender = rs.getString("Gender");
                    String Photo = rs.getString("Photo");
                    String RoleID = rs.getString("RoleID");
                    String password = "*****";
                    // user = new  UserDTO(Employee_ID, "", Fullname, Phone, Email, Gender,Dependent,RoleID);
                    listEmployee.add(new UserDTO(Employee_ID, password, Fullname, Phone, Email, Gender, Photo, RoleID));

//                     String userID = rs.getString("userID");
//                    String fullname = rs.getString("fullName");
//                    String roleID = rs.getString("roleID");
//                    String password = "*****";
//                    listEmployee.add(new UserDTO(userID, fullname, roleID, password));
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

        return listEmployee;
    }

    public String getNewID() throws SQLException {
        String NewID = null;
        String newUserID = null;
        Connection conn = null;
        PreparedStatement ptm = null;

        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_DESC_EMPLOYEE_ID);

                rs = ptm.executeQuery();
                if (rs.next()) {
                    NewID = rs.getString("Employee_ID");

                }
                // Tách phần số từ chuỗi
                String prefix = NewID.substring(0, 1); // "Emp"
                int number = Integer.parseInt(NewID.substring(1)); // 004

// Tăng số lên 1
                number++;

// Kết hợp lại thành chuỗi mới
                newUserID = prefix + String.format("%03d", number); // "Emp005"
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
        return newUserID;

    }

    public UserDTO getEmployee(String Employee_ID) throws SQLException {
        UserDTO user = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(UPDATE0);
                ptm.setString(1, Employee_ID);

                rs = ptm.executeQuery();
                if (rs.next()) {
                    String Fullname = rs.getString("FullName");
                    String Phone = rs.getString("Phone");
                    String Email = rs.getString("Email");
                    String Gender = rs.getString("Gender");
                    String Photo = rs.getString("photo");
                    String RoleID = rs.getString("RoleID");

                    user = new UserDTO(Employee_ID, "", Fullname, Phone, Email, Gender, Photo, RoleID);

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
        return user;
    }

    public void setSchedule() throws SQLException {

        Connection conn = null;
        PreparedStatement ptm = null;

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(UPDATE_SCHEDULE);
                ptm.executeQuery();
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

    }

    public UserDTO getEmployeeByID(String empid) {
        String sql = "SELECT * FROM Employee"
                + " WHERE Employee_ID like ?";
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
             ptm = conn.prepareStatement(sql);
             ptm.setString(1, empid);
             rs = ptm.executeQuery();
             if(rs.next()){
                 return (new UserDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6),rs.getString(7) , rs.getString(8)));
             }
        } catch (Exception e) {
        }

        return null;
    }
    
    public void updateemployee(String employeeid, String password, String phone, String email){
        String sql = "	update Employee set Password =?, Phone= ?, Email= ? where Employee_ID = ?";
         Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1,password);
            ptm.setString(2,phone);
            ptm.setString(3,email);
            ptm.setString(4,employeeid);
            ptm.executeUpdate();
        } catch (Exception e) {
        }
    }
    public static void main(String[] args) {
        UserDAO u = new UserDAO();
        String empid = "E003";
        UserDTO ud= u.getEmployeeByID(empid);
        System.out.println(ud);
    }
}