/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.foodschedule;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.sl.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.Row;
import sample.utils.DBUtils;

/**
 *
 * @author ADMIN
 */
public class FoodScheduleDAO {

    Connection conn = null;
    PreparedStatement ptm = null;
    ResultSet rs = null;

    public List<FoodScheduleDTO> getAllFoodSchedule() {
        List<FoodScheduleDTO> list = new ArrayList<>();
        String sql = "select * from FoodSchedule";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            rs = ptm.executeQuery();
            while (rs.next()) {
                FoodScheduleDTO a = new FoodScheduleDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                list.add(a);
            }
        } catch (Exception e) {
        }

        return list;
    }

    public FoodScheduleDTO deleteschedule(String scheduleid) {
        String sql = "delete from FoodSchedule where Schedule_ID =?";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, scheduleid);
            rs = ptm.executeQuery();
            if (rs.next()) {
                return new FoodScheduleDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
            }
        } catch (Exception e) {
        }

        return null;
    }

    public List<FoodScheduleDTO> searchschedule(String scheduleid) {
        String sql = "select * from FoodSchedule where Schedule_ID like ?";
        List<FoodScheduleDTO> list = new ArrayList<>();
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, "%" + scheduleid + "%");
            rs = ptm.executeQuery();
            if (rs.next()) {
                list.add(new FoodScheduleDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    public void updateschedule(String scheduleid, String time, String animalcageid, String foodid, String date) {
        String sql = "UPDATE FoodSchedule SET Time=?, AnimalCage_ID=?, Food_ID=?, Date=? WHERE Schedule_ID= ?";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, time);
            ptm.setString(2, animalcageid);
            ptm.setString(3, foodid);
            ptm.setString(4, date);
            ptm.setString(5, scheduleid);
            ptm.executeUpdate();

        } catch (Exception e) {
        }
    }

    public void createschedule(FoodScheduleDTO f) {
        String sql = " insert into FoodSchedule(Schedule_ID,Time,AnimalCage_ID, Food_ID,Date)\n"
                + " values(?,?,?,?,?)";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, f.getSchedule_id());
            ptm.setString(2, f.getTime());
            ptm.setString(3, f.getAnimalcage_id());
            ptm.setString(4, f.getFood_id());
            ptm.setString(5, f.getDate());
            ptm.executeUpdate();

        } catch (Exception e) {
        }
    }

    public FoodScheduleDTO getScheduleByID(String scheduleid) {
        String sql = "select * from FoodSchedule where Schedule_ID =?";

        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, scheduleid);
            rs = ptm.executeQuery();
            if (rs.next()) {
                return new FoodScheduleDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
            }
        } catch (Exception e) {
        }

        return null;
    }

    //getNewIdFoodID()
    public String getNewIdScheduleID() {
        String sql = "select top 1 Schedule_ID from FoodSchedule order by [Schedule_ID] desc";
        String IdOrder = null;
        String newIdOrder = null;
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);

            rs = ptm.executeQuery();

            if (rs.next()) {
                IdOrder = rs.getString("Schedule_ID");
            }
            if (IdOrder != null && IdOrder.length() >= 5) {
                String prefix = IdOrder.substring(0, 2);
                int number = Integer.parseInt(IdOrder.substring(2));
                number++;
                newIdOrder = prefix + String.format("%03d", number);
            }
        } catch (Exception e) {
        }
        return newIdOrder;
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
                String food_schedule_id = getStringCellValue(row.getCell(0));
                String time = getStringCellValue(row.getCell(1));
                String animal_cage_id = getStringCellValue(row.getCell(2));
                String food_id = getStringCellValue(row.getCell(3));
                String date = getStringCellValue(row.getCell(4));

                FoodScheduleDTO f = new FoodScheduleDTO();
                f.setSchedule_id(food_schedule_id);
                f.setTime(time);
                f.setAnimalcage_id(animal_cage_id);
                f.setFood_id(food_id);
                f.setDate(date);

                FoodScheduleDAO fs = new FoodScheduleDAO();
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

    
    
    public void InsertData(HttpServletRequest request,FoodScheduleDTO foodschedule){
          String sql = " insert into FoodSchedule(Schedule_ID,Time,AnimalCage_ID, Food_ID,Date)\n"
                + " values(?,?,?,?,?)";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, foodschedule.getSchedule_id());
            ptm.setString(2, foodschedule.getTime());
            ptm.setString(3, foodschedule.getAnimalcage_id());
            ptm.setString(4, foodschedule.getFood_id());
            ptm.setString(5, foodschedule.getDate());
            int kt = ptm.executeUpdate();
            if(kt!=0){
                request.setAttribute("message", "successfull sql");
            }else{
                request.setAttribute("message", "fail sql");
            }

        } catch (Exception e) {
        }
    }

    public static void main(String[] args) throws SQLException {
        FoodScheduleDAO a = new FoodScheduleDAO();
        List<FoodScheduleDTO> list = a.getAllFoodSchedule();
        for (FoodScheduleDTO o : list) {
            System.out.println(o);
        }
    }

}
