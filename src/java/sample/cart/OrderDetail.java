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
    private String oid,pid,tid;
    private String date;
    private String promotion;
    private int quantity;
    

    public OrderDetail() {
    }

    public OrderDetail(String oid, String date, String tid,String pid, String promotion, int quantity) {
        this.oid = oid;
        this.pid = pid;
        this.tid = tid;
        this.date = date;
        this.promotion = promotion;
        this.quantity = quantity;
    }

    public String getOid() {
        return oid;
    }

    public void setOid(String oid) {
        this.oid = oid;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getPromotion() {
        return promotion;
    }

    public void setPromotion(String promotion) {
        this.promotion = promotion;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    

    

 
    
}
