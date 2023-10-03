/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controllers.manager;

/**
 *
 * @author khong phai Minh Tuan
 */
public class AreaDTO {
    
    private String area_id;
    private String arealocation;
    private String genre;
    private String areastatus;
    private String manager_id;

    public AreaDTO() {
    }

    public AreaDTO(String area_id, String arealocation, String genre, String areastatus, String manager_id) {
        this.area_id = area_id;
        this.arealocation = arealocation;
        this.genre = genre;
        this.areastatus = areastatus;
        this.manager_id = manager_id;
    }

    public String getArea_id() {
        return area_id;
    }

    public void setArea_id(String area_id) {
        this.area_id = area_id;
    }

    public String getArealocation() {
        return arealocation;
    }

    public void setArealocation(String arealocation) {
        this.arealocation = arealocation;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getAreastatus() {
        return areastatus;
    }

    public void setAreastatus(String areastatus) {
        this.areastatus = areastatus;
    }

    public String getManager_id() {
        return manager_id;
    }

    public void setManager_id(String manager_id) {
        this.manager_id = manager_id;
    }
    
   
    
    
}
