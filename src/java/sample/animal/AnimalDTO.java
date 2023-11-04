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
    private String photo;
    private String animalcage_id;
    private String status;

    public AnimalDTO() {
    }

    public AnimalDTO(String name) {
        this.name = name;
    }
    

    public AnimalDTO(String animal_id, String name, String dayin, String photo, String animalcage_id, String status) {
        this.animal_id = animal_id;
        this.name = name;
        this.dayin = dayin;
        this.photo = photo;
        this.animalcage_id = animalcage_id;
        this.status = status;
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

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getAnimalcage_id() {
        return animalcage_id;
    }

    public void setAnimalcage_id(String animalcage_id) {
        this.animalcage_id = animalcage_id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

   @Override
    public String toString() {
        return "AnimalDTO{" + "animal_id=" + animal_id + ", name=" + name + ", dayin=" + dayin + ", photo=" + photo + ", animalcage_id=" + animalcage_id + ", status=" + status + '}';
    }



   
    

}