/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.area;

/**
 *
 * @author khong phai Minh Tuan
 */
public class AreaDTO {
    
    private String area_id;
    private String arealocation;
    private String genre;
    private String photo;

    public AreaDTO() {
    }

    public AreaDTO(String area_id, String arealocation, String genre, String photo) {
        this.area_id = area_id;
        this.arealocation = arealocation;
        this.genre = genre;
        this.photo = photo;
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

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    @Override
    public String toString() {
        return "AreaDTO{" + "area_id=" + area_id + ", arealocation=" + arealocation + ", genre=" + genre + ", photo=" + photo + '}';
    }

    
   
    
    
}
