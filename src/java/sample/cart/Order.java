/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.cart;

/**
 *
 * @author ADMIN
 */
public class Order {
    private String id;
    private String email;
    private String fullname;
    private String phone;
    private String date;
    private double totalmoney;

    public Order() {
    }

    public Order(String id, String email, String fullname, String phone, String date, double totalmoney) {
        this.id = id;
        this.email = email;
        this.fullname = fullname;
        this.phone = phone;
        this.date = date;
        this.totalmoney = totalmoney;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public double getTotalmoney() {
        return totalmoney;
    }

    public void setTotalmoney(double totalmoney) {
        this.totalmoney = totalmoney;
    }


    
    
}
