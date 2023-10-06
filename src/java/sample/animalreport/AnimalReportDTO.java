/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.animalreport;

import sample.feedback.*;

/**
 *
 * @author dinhg
 */
public class AnimalReportDTO {
    private String report_id;
    private String date;
    private String note;
    private String animal_id;

    public AnimalReportDTO() {
    }

    public AnimalReportDTO(String report_id, String date, String note, String animal_id) {
        this.report_id = report_id;
        this.date = date;
        this.note = note;
        this.animal_id = animal_id;
    }

    public String getReport_id() {
        return report_id;
    }

    public void setReport_id(String report_id) {
        this.report_id = report_id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getAnimal_id() {
        return animal_id;
    }

    public void setAnimal_id(String animal_id) {
        this.animal_id = animal_id;
    }
    
    
}
