/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.trainer;

/**
 *
 * @author ADMIN
 */
public class TrainerDTO {
    private String trainer_id;
    private String fullname;
    private String area_id;
    private String role_id;

    public TrainerDTO() {
    }

    public TrainerDTO(String trainer_id, String fullname, String area_id, String role_id) {
        this.trainer_id = trainer_id;
        this.fullname = fullname;
        this.area_id = area_id;
        this.role_id = role_id;
    }

    public String getTrainer_id() {
        return trainer_id;
    }

    public void setTrainer_id(String trainer_id) {
        this.trainer_id = trainer_id;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getArea_id() {
        return area_id;
    }

    public void setArea_id(String area_id) {
        this.area_id = area_id;
    }

    public String getRole_id() {
        return role_id;
    }

    public void setRole_id(String role_id) {
        this.role_id = role_id;
    }
    
    
}
