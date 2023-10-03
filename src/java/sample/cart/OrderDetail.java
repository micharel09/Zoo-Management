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
public class OrderDetail {
    private int oid,pid,tid;
    private String date;
    private int quantity;
    private double promotion;
    

    public OrderDetail() {
    }

    public OrderDetail(int oid, int pid, int tid, String date, int quantity, double promotion) {
        this.oid = oid;
        this.pid = pid;
        this.tid = tid;
        this.date = date;
        this.quantity = quantity;
        this.promotion = promotion;
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPromotion() {
        return promotion;
    }

    public void setPromotion(double promotion) {
        this.promotion = promotion;
    }

 
    
}
