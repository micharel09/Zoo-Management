/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.foodingschedule;

/**
 *
 * @author ACER
 */

public class TimeDTO {
      private String ID_Time;
    private String Start_Time;
    private String End_Time;

    public TimeDTO(String ID_Time, String Start_Time, String End_Time) {
        this.ID_Time = ID_Time;
        this.Start_Time = Start_Time;
        this.End_Time = End_Time;
    }

    public TimeDTO() {
    }

    public String getID_Time() {
        return ID_Time;
    }

    public void setID_Time(String ID_Time) {
        this.ID_Time = ID_Time;
    }

    public String getStart_Time() {
        return Start_Time;
    }

    public void setStart_Time(String Start_Time) {
        this.Start_Time = Start_Time;
    }

    public String getEnd_Time() {
        return End_Time;
    }

    public void setEnd_Time(String End_Time) {
        this.End_Time = End_Time;
    }
   

}
