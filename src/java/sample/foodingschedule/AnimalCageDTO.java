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
public class AnimalCageDTO {
    private String AnimalCage_ID;
    private String Name;
    private String Area_ID;
    private String Employee_ID;

    public AnimalCageDTO() {
    }

    public AnimalCageDTO(String AnimalCage_ID, String Name, String Area_ID, String Employee_ID) {
        this.AnimalCage_ID = AnimalCage_ID;
        this.Name = Name;
        this.Area_ID = Area_ID;
        this.Employee_ID = Employee_ID;
    }

    public String getAnimalCage_ID() {
        return AnimalCage_ID;
    }

    public void setAnimalCage_ID(String AnimalCage_ID) {
        this.AnimalCage_ID = AnimalCage_ID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getArea_ID() {
        return Area_ID;
    }

    public void setArea_ID(String Area_ID) {
        this.Area_ID = Area_ID;
    }

    public String getEmployee_ID() {
        return Employee_ID;
    }

    public void setEmployee_ID(String Employee_ID) {
        this.Employee_ID = Employee_ID;
    }
    
}
