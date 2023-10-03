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
public class Product {
    private String tid;
    private String type;
    private double price;

    public Product() {
    }

    public Product(String tid, String type,  double price) {
        this.tid = tid;
        this.type = type;
        this.price = price;
    }

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }



    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }


   
}
