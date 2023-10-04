/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.animal;

/**
 *
 * @author dinhg
 */
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

public class AnimalError {
    private String animal_IDError;
    private String nameError;
    private String dayInError;
    private String dayOutError;
    private String noteError;

    public AnimalError() {
    }

    public AnimalError(String animal_IDError, String nameError, String dayInError, String dayOutError, String noteError) {
        this.animal_IDError = animal_IDError;
        this.nameError = nameError;
        this.dayInError = dayInError;
        this.dayOutError = dayOutError;
        this.noteError = noteError;
    }

    public String getAnimal_IDError() {
        return animal_IDError;
    }

    public void setAnimal_IDError(String animal_IDError) {
        this.animal_IDError = animal_IDError;
    }

    public String getNameError() {
        return nameError;
    }

    public void setNameError(String nameError) {
        this.nameError = nameError;
    }

    public String getDayInError() {
        return dayInError;
    }

    public void setDayInError(String dayInError) {
        this.dayInError = dayInError;
    }

    public String getDayOutError() {
        return dayOutError;
    }

    public void setDayOutError(String dayOutError) {
        this.dayOutError = dayOutError;
    }

    public String getNoteError() {
        return noteError;
    }

    public void setNoteError(String noteError) {
        this.noteError = noteError;
    }
    
    
}
