/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.ticket;

/**
 *
 * @author ACER
 */
public class OrdersDTO {
    String Order_ID;
    String Email;
    String FullName;
    String PhoneNumber;
    String Date;
    Double TotalPrice;

    public OrdersDTO() {
    }

    public OrdersDTO(String Order_ID, String Email, String FullName, String PhoneNumber, String Date, Double TotalPrice) {
        this.Order_ID = Order_ID;
        this.Email = Email;
        this.FullName = FullName;
        this.PhoneNumber = PhoneNumber;
        this.Date = Date;
        this.TotalPrice = TotalPrice;
    }

    public String getOrder_ID() {
        return Order_ID;
    }

    public void setOrder_ID(String Order_ID) {
        this.Order_ID = Order_ID;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getFullName() {
        return FullName;
    }

    public void setFullName(String FullName) {
        this.FullName = FullName;
    }

    public String getPhoneNumber() {
        return PhoneNumber;
    }

    public void setPhoneNumber(String PhoneNumber) {
        this.PhoneNumber = PhoneNumber;
    }

    public String getDate() {
        return Date;
    }

    public void setDate(String Date) {
        this.Date = Date;
    }

    public Double getTotalPrice() {
        return TotalPrice;
    }

    public void setTotalPrice(Double TotalPrice) {
        this.TotalPrice = TotalPrice;
    }
    
    
}
