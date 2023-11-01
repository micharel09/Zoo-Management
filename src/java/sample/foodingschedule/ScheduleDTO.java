/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.foodingschedule;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author ACER
 */

public class ScheduleDTO {
     
    private String ID;
    private String ID_Cage;
    private String ID_Part_Time;
    private String Day_Feeding;
    private String ID_Food;
    private String Note;
    
    private String Name_Cage;
    private String Start_Time;
    private String End_Time;
    private String Name_Food;
    private String Employee_ID;
    private String Photo;

    public ScheduleDTO() {
    }

    public ScheduleDTO(String ID, String ID_Cage, String ID_Part_Time, String Day_Feeding, String ID_Food, String Note) {
        this.ID = ID;
        this.ID_Cage = ID_Cage;
        this.ID_Part_Time = ID_Part_Time;
        this.Day_Feeding = Day_Feeding;
        this.ID_Food = ID_Food;
        this.Note = Note;
        
    }

    public ScheduleDTO(String ID, String Note, String Photo) {
        this.ID = ID;
        this.Note = Note;
        this.Photo = Photo;
    }

    public ScheduleDTO(String Day_Feeding, String Note, String Name_Cage, String Start_Time, String End_Time, String Name_Food, String Employee_ID) {
        this.Day_Feeding = Day_Feeding;
        this.Note = Note;
        this.Name_Cage = Name_Cage;
        this.Start_Time = Start_Time;
        this.End_Time = End_Time;
        this.Name_Food = Name_Food;
        this.Employee_ID = Employee_ID;
    }

    public ScheduleDTO(String ID, String ID_Cage, String ID_Part_Time, String Day_Feeding, String ID_Food, String Note, String Name_Cage, String Start_Time, String End_Time, String Name_Food, String Employee_ID, String Photo) {
        this.ID = ID;
        this.ID_Cage = ID_Cage;
        this.ID_Part_Time = ID_Part_Time;
        this.Day_Feeding = Day_Feeding;
        this.ID_Food = ID_Food;
        this.Note = Note;
        this.Name_Cage = Name_Cage;
        this.Start_Time = Start_Time;
        this.End_Time = End_Time;
        this.Name_Food = Name_Food;
        this.Employee_ID = Employee_ID;
        this.Photo = Photo;
    }

    

    
    public String getPhoto() {
        return Photo;
    }

    public void setPhoto(String Photo) {
        this.Photo = Photo;
    }
    

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getID_Cage() {
        return ID_Cage;
    }

    public void setID_Cage(String ID_Cage) {
        this.ID_Cage = ID_Cage;
    }

    public String getID_Part_Time() {
        return ID_Part_Time;
    }

    public void setID_Part_Time(String ID_Part_Time) {
        this.ID_Part_Time = ID_Part_Time;
    }

    public String getDay_Feeding() {
        return Day_Feeding;
    }

    public void setDay_Feeding(String Day_Feeding) {
        this.Day_Feeding = Day_Feeding;
    }

    public String getID_Food() {
        return ID_Food;
    }

    public void setID_Food(String ID_Food) {
        this.ID_Food = ID_Food;
    }

    public String getNote() {
        return Note;
    }

    public void setNote(String Note) {
        this.Note = Note;
    }

    public String getName_Cage() {
        return Name_Cage;
    }

    public void setName_Cage(String Name_Cage) {
        this.Name_Cage = Name_Cage;
    }

    public String getStart_Time() throws ParseException {
         SimpleDateFormat inputFormat = new SimpleDateFormat("HH:mm:ss.SSSSSSS");
        SimpleDateFormat outputFormat = new SimpleDateFormat("HH:mm:ss");
        
        // Chuyển đổi chuỗi thời gian thành đối tượng Date
        Date date = inputFormat.parse(Start_Time);
        
        // Định dạng lại đối tượng Date thành chuỗi
        String formattedTime = outputFormat.format(date);
        return formattedTime;
    }

    public void setStart_Time(String Start_Time) {
        this.Start_Time = Start_Time;
    }

    public String getEnd_Time() throws ParseException {
         SimpleDateFormat inputFormat = new SimpleDateFormat("HH:mm:ss.SSSSSSS");
        SimpleDateFormat outputFormat = new SimpleDateFormat("HH:mm:ss");
        
        // Chuyển đổi chuỗi thời gian thành đối tượng Date
        Date date = inputFormat.parse(End_Time);
        
        // Định dạng lại đối tượng Date thành chuỗi
        String formattedTime = outputFormat.format(date);
        return formattedTime;
    }

    public void setEnd_Time(String End_Time) {
        this.End_Time = End_Time;
    }

    public String getName_Food() {
        return Name_Food;
    }

    public void setName_Food(String Name_Food) {
        this.Name_Food = Name_Food;
    }

    public String getEmployee_ID() {
        return Employee_ID;
    }

    public void setEmployee_ID(String Employee_ID) {
        this.Employee_ID = Employee_ID;
    }

   

  
    
    
  
}
