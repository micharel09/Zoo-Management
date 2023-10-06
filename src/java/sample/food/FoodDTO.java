/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.food;

/**
 *
 * @author dinhg
 */
public class FoodDTO {
    
    private String food_id;
    private String foodname;

    public FoodDTO() {
    }

    public FoodDTO(String food_id, String foodname) {
        this.food_id = food_id;
        this.foodname = foodname;
    }

    public String getFood_id() {
        return food_id;
    }

    public void setFood_id(String food_id) {
        this.food_id = food_id;
    }

    public String getFoodname() {
        return foodname;
    }

    public void setFoodname(String foodname) {
        this.foodname = foodname;
    }
    
    
    
    
}
