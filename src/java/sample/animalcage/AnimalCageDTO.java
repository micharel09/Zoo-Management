/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.animalcage;



public class AnimalCageDTO {
    private String animalcage_id;
    private String name;
    private String area_id;
    private String employee_id;
    private String photo;

    public AnimalCageDTO() {
        
    }

    public AnimalCageDTO(String animalcage_id, String name, String area_id, String employee_id, String photo) {
        this.animalcage_id = animalcage_id;
        this.name = name;
        this.area_id = area_id;
        this.employee_id = employee_id;
        this.photo = photo;
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

    public String getArea_id() {
        return area_id;
    }

    public void setArea_id(String area_id) {
        this.area_id = area_id;
    }

    public String getEmployee_id() {
        return employee_id;
    }

    public void setEmployee_id(String employee_id) {
        this.employee_id = employee_id;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    @Override
    public String toString() {
        return "AnimalCageDTO{" + "animalcage_id=" + animalcage_id + ", name=" + name + ", area_id=" + area_id + ", employee_id=" + employee_id;
    }

   

 

    

 


 
  
}
