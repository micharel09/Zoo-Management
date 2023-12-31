/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.foodingschedule;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.Row;
import sample.foodschedule.FoodScheduleDAO;
import sample.foodschedule.FoodScheduleDTO;

import sample.utils.DBUtils;

/**
 *
 * @author ACER
 */
public class ScheduleDAO {

    private static final String GET_CAGE = " SELECT  [AnimalCage_ID]\n"
            + "      ,[Name]\n"
            + "      ,[Area_ID]\n"
            + "      ,[Employee_ID]\n"
            + "FROM [SWP4].[dbo].[AnimalCage]\n"
            + "WHERE [Area_ID] = ?";
    private static final String GET_CAGE_BY_ID_EMPLOYEE_ID = " SELECT  [AnimalCage_ID]\n"
            + "      ,[Name]\n"
            + "      ,[Area_ID]\n"
            + "      ,[Employee_ID]\n"
            + "FROM [SWP4].[dbo].[AnimalCage]\n"
            + "WHERE [Employee_ID] = ?";

    private static final String GET_NAME_AREA = "SELECT [Genre]\n"
            + "  FROM [SWP4].[dbo].[Area]"
            + "WHERE [Area_ID] = ?";

    private static final String UPDATE_ATTENDANCE = "  UPDATE [FeedingSchedule]\n"
            + "SET  Photo = ? ,Note = 'Present'\n"
            + "WHERE ID = ?";

    private static final String GET_SCHEDULE = "SELECT fs.[ID],fs.[ID_Cage],fs.[ID_Part_Time],fs.[Photo],fs.[Day_Feeding]\n"
            + "      ,fs.[ID_Food],fs.[Note],ft.[Start_Time],ft.[End_Time]\n"
            + "      ,f.[FoodName],ac.[Name],ac.[Employee_ID]\n"
            + "FROM [SWP4].[dbo].[FeedingSchedule] fs\n"
            + "INNER JOIN [SWP4].[dbo].[FeedingTimes] ft ON fs.[ID_Part_Time] = ft.[ID_Time]\n"
            + "INNER JOIN [SWP4].[dbo].[Food] f ON fs.[ID_Food] = f.[Food_ID]\n"
            + "INNER JOIN [SWP4].[dbo].[AnimalCage] ac ON fs.[ID_Cage] = ac.[AnimalCage_ID]\n"
            + "WHERE fs.[Day_Feeding] >= ?\n"
            + "  AND fs.[Day_Feeding] <= DATEADD(DAY, 6, ?)\n"
            + "  AND fs.[ID_Cage] = ?";

    public List<AnimalCageDTO> getCage(String Area_searchStr_ID) throws SQLException {
        List<AnimalCageDTO> listCage = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_CAGE);
                ptm.setString(1, Area_searchStr_ID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String AnimalCage_ID = rs.getString("AnimalCage_ID");
                    String Name = rs.getString("Name");
                    String Area_ID = rs.getString("Area_ID");
                    String Employee_ID = rs.getString("Employee_ID");

                    // user = new  UserDTO(Employee_ID, "", Fullname, Phone, Email, Gender,Dependent,RoleID);
                    listCage.add(new AnimalCageDTO(AnimalCage_ID, Name, Area_ID, Employee_ID));
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
        return listCage;
    }

    public String getNameArea(String Area_searchStr_ID) throws SQLException {
        String NameArea = "";
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_NAME_AREA);
                ptm.setString(1, Area_searchStr_ID);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    NameArea = rs.getString("Genre");
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
        return NameArea;
    }

    public List<ScheduleDTO> getListSchedule(String day_searchStr, String ID_Cage) throws SQLException {
        List<ScheduleDTO> ListSchedule = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_SCHEDULE);
                ptm.setString(1, day_searchStr);
                ptm.setString(2, day_searchStr);
                ptm.setString(3, ID_Cage);
                rs = ptm.executeQuery();
                while (rs.next()) {

                    String ID = rs.getString("ID");

                    String ID_Part_Time = rs.getString("ID_Part_Time");
                    String Day_Feeding = rs.getString("Day_Feeding");
                    String ID_Food = rs.getString("ID_Food");
                    String Note = rs.getString("Note");
                    String Start_Time = rs.getString("Start_Time");
                    String End_Time = rs.getString("End_Time");
                    String Name_Food = rs.getString("FoodName");
                    String Name_Cage = rs.getString("Name");
                    String Employee_ID = rs.getString("Employee_ID");
                    String Photo = rs.getString("Photo");

                    // user = new  UserDTO(Employee_ID, "", Fullname, Phone, Email, Gender,Dependent,RoleID);
                    ListSchedule.add(new ScheduleDTO(ID, ID_Cage, ID_Part_Time, Day_Feeding, ID_Food, Note, Name_Cage, Start_Time, End_Time, Name_Food, Employee_ID, Photo));
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
        return ListSchedule;
    }

    public List<AnimalCageDTO> getCageByEmployee_ID(String Employee_ID) throws SQLException {
        List<AnimalCageDTO> listCage = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_CAGE_BY_ID_EMPLOYEE_ID);
                ptm.setString(1, Employee_ID);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String AnimalCage_ID = rs.getString("AnimalCage_ID");
                    String Name = rs.getString("Name");
                    String Area_ID = rs.getString("Area_ID");

                    // user = new  UserDTO(Employee_ID, "", Fullname, Phone, Email, Gender,Dependent,RoleID);
                    listCage.add(new AnimalCageDTO(AnimalCage_ID, Name, Area_ID, Employee_ID));
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
        return listCage;
    }

    public Boolean updateAttendance(ScheduleDTO schedule) throws SQLException {

        boolean checkUpdate = false;
        Connection conn = null;
        PreparedStatement ptm = null;

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(UPDATE_ATTENDANCE);

                ptm.setString(1, schedule.getPhoto());
                String ab=schedule.getPhoto();
                ptm.setString(2, schedule.getID());
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
      public static void ImportExcel(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        InputStream inp;
        try {
            Part filePart = request.getPart("excelFile");
            InputStream fileContent = filePart.getInputStream();

            // Xử lý tệp Excel
            HSSFWorkbook wb = new HSSFWorkbook(new POIFSFileSystem(fileContent));
            HSSFSheet sheet = wb.getSheetAt(0);

            for (int i = 1; i <= sheet.getLastRowNum(); i++) {
                Row row = sheet.getRow(i);
                String id = getStringCellValue(row.getCell(0));
                String id_cage = getStringCellValue(row.getCell(1));
                String id_part_time = getStringCellValue(row.getCell(2));
                String day_feeding = getStringCellValue(row.getCell(3));
                String id_food = getStringCellValue(row.getCell(4));
                String Note = getStringCellValue(row.getCell(5));

                ScheduleDTO f = new ScheduleDTO();
                f.setID(id);
                f.setID_Cage(id_cage);
                f.setID_Part_Time(id_part_time);
                f.setDay_Feeding(day_feeding);
                f.setID_Food(id_food);
                f.setNote(Note);

                ScheduleDAO fs = new ScheduleDAO();
                fs.InsertData(request, f);
            }
        } catch (IOException | javax.servlet.ServletException ex) {
            // Xử lý các ngoại lệ nếu có
            request.setAttribute("message", ex.getMessage());
        }
        //request.getRequestDispatcher("foodschedulecontroller").forward(request, response);
    }

  private static String getStringCellValue(Cell cell) {
    DataFormatter formatter = new DataFormatter();
    return formatter.formatCellValue(cell);
}

    
    
    public void InsertData(HttpServletRequest request,ScheduleDTO schedule){
          String sql = " insert into FeedingSchedule(ID,ID_Cage,ID_Part_Time,Day_Feeding,ID_Food,Note)\n"
                + " values(?,?,?,?,?,?)";
              Connection conn = null;
    PreparedStatement ptm = null;
    ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, schedule.getID());
            ptm.setString(2, schedule.getID_Cage());
            ptm.setString(3, schedule.getID_Part_Time());
            ptm.setString(4, schedule.getDay_Feeding());
            ptm.setString(5, schedule.getID_Food());
            ptm.setString(6, schedule.getNote());
            int kt = ptm.executeUpdate();
            if(kt!=0){
                request.setAttribute("message", "successfull sql");
            }else{
                request.setAttribute("message", "fail sql");
            }

        } catch (Exception e) {
        }
    }
}
