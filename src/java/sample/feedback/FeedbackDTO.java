/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.feedback;

/**
 *
 * @author dinhg
 */
public class FeedbackDTO {
    private String feedback_id;
    private String title;
    private String purpose;
    private String date;
    private String processnote;
    private String employee_id;
    private String status;
    private String animal_id;

    public FeedbackDTO() {
    }

    public FeedbackDTO(String feedback_id, String title, String purpose, String date, String processnote, String employee_id, String status, String animal_id) {
        this.feedback_id = feedback_id;
        this.title = title;
        this.purpose = purpose;
        this.date = date;
        this.processnote = processnote;
        this.employee_id = employee_id;
        this.status = status;
        this.animal_id = animal_id;
    }

    public String getFeedback_id() {
        return feedback_id;
    }

    public void setFeedback_id(String feedback_id) {
        this.feedback_id = feedback_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPurpose() {
        return purpose;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getProcessnote() {
        return processnote;
    }

    public void setProcessnote(String processnote) {
        this.processnote = processnote;
    }

    public String getEmployee_id() {
        return employee_id;
    }

    public void setEmployee_id(String employee_id) {
        this.employee_id = employee_id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getAnimal_id() {
        return animal_id;
    }

    public void setAnimal_id(String animal_id) {
        this.animal_id = animal_id;
    }

    @Override
    public String toString() {
        return "FeedbackDTO{" + "feedback_id=" + feedback_id + ", title=" + title + ", purpose=" + purpose + ", date=" + date + ", processnote=" + processnote + ", employee_id=" + employee_id + ", status=" + status + ", animal_id=" + animal_id + '}';
    }

    
    
    
}
