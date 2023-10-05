/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.animacage;

import sample.controllers.manager.*;

public class AnimalCageDTO {
    private String animalcage_id;
    private String name;
    private String cagestatus;
    private String trainer_id;
    private String area_id;
    private String img;

    public AnimalCageDTO() {
    }

    public AnimalCageDTO(String animalcage_id, String name, String cagestatus, String trainer_id, String area_id, String img) {
        this.animalcage_id = animalcage_id;
        this.name = name;
        this.cagestatus = cagestatus;
        this.trainer_id = trainer_id;
        this.area_id = area_id;
        this.img = img;
    }

    public String getAnimalcage_id() {
        return animalcage_id;
    }

    public void setAnimalcage_id(String animalcage_id) {
        this.animalcage_id = animalcage_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCagestatus() {
        return cagestatus;
    }

    public void setCagestatus(String cagestatus) {
        this.cagestatus = cagestatus;
    }

    public String getTrainer_id() {
        return trainer_id;
    }

    public void setTrainer_id(String trainer_id) {
        this.trainer_id = trainer_id;
    }

    public String getArea_id() {
        return area_id;
    }

    public void setArea_id(String area_id) {
        this.area_id = area_id;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    @Override
    public String toString() {
        return "AnimalCageDTO{" + "animalcage_id=" + animalcage_id + ", name=" + name + ", cagestatus=" + cagestatus + ", trainer_id=" + trainer_id + ", area_id=" + area_id + ", img=" + img + '}';
    }

 
  
}
