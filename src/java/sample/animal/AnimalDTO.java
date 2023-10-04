/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.animal;

/**
 *
 * @author HoangNQ
 */
public class AnimalDTO {

    private String animal_id;
    private String name;
    private String dayin;
    private String dayout;
    private String note;
    private String photo;
    private String animalcage_id;

    public AnimalDTO() {
    }

    public AnimalDTO(String animal_id, String name, String dayin, String dayout, String note, String photo, String animalcage_id) {
        this.animal_id = animal_id;
        this.name = name;
        this.dayin = dayin;
        this.dayout = dayout;
        this.note = note;
        this.photo = photo;
        this.animalcage_id = animalcage_id;
    }

    public String getAnimal_id() {
        return animal_id;
    }

    public void setAnimal_id(String animal_id) {
        this.animal_id = animal_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDayin() {
        return dayin;
    }

    public void setDayin(String dayin) {
        this.dayin = dayin;
    }

    public String getDayout() {
        return dayout;
    }

    public void setDayout(String dayout) {
        this.dayout = dayout;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getAnimalcage_id() {
        return animalcage_id;
    }

    public void setAnimalcage_id(String animalcage_id) {
        this.animalcage_id = animalcage_id;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }
    
    
   


   
    
    
   
  

}
