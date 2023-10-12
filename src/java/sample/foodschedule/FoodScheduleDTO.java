/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.foodschedule;

/**
 *
 * @author dinhg
 */
public class FoodScheduleDTO {
    private String schedule_id;
    private String time;
    private String animalcage_id;
    private String food_id;

    public FoodScheduleDTO() {
    }

    public FoodScheduleDTO(String schedule_id, String time, String animalcage_id, String food_id) {
        this.schedule_id = schedule_id;
        this.time = time;
        this.animalcage_id = animalcage_id;
        this.food_id = food_id;
    }

    public String getSchedule_id() {
        return schedule_id;
    }

    public void setSchedule_id(String schedule_id) {
        this.schedule_id = schedule_id;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getAnimalcage_id() {
        return animalcage_id;
    }

    public void setAnimalcage_id(String animalcage_id) {
        this.animalcage_id = animalcage_id;
    }

    public String getFood_id() {
        return food_id;
    }

    public void setFood_id(String food_id) {
        this.food_id = food_id;
    }

    @Override
    public String toString() {
        return "FoodScheduleDTO{" + "schedule_id=" + schedule_id + ", time=" + time + ", animalcage_id=" + animalcage_id + ", food_id=" + food_id + '}';
    }

    
    
    
}
