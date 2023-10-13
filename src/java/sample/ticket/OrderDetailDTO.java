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
public class OrderDetailDTO {
    String OrderDetail_ID;
    String EntryDay;
    String Ticket_ID;
    String Order_ID;
    String Promotion;
    int Quantity;

    public OrderDetailDTO() {
    }

    public OrderDetailDTO(String OrderDetail_ID, String EntryDay, String Ticket_ID, String Order_ID, String Promotion, int Quantity) {
        this.OrderDetail_ID = OrderDetail_ID;
        this.EntryDay = EntryDay;
        this.Ticket_ID = Ticket_ID;
        this.Order_ID = Order_ID;
        this.Promotion = Promotion;
        this.Quantity = Quantity;
    }

    public String getOrderDetail_ID() {
        return OrderDetail_ID;
    }

    public void setOrderDetail_ID(String OrderDetail_ID) {
        this.OrderDetail_ID = OrderDetail_ID;
    }

    public String getEntryDay() {
        return EntryDay;
    }

    public void setEntryDay(String EntryDay) {
        this.EntryDay = EntryDay;
    }

    public String getTicket_ID() {
        return Ticket_ID;
    }

    public void setTicket_ID(String Ticket_ID) {
        this.Ticket_ID = Ticket_ID;
    }

    public String getOrder_ID() {
        return Order_ID;
    }

    public void setOrder_ID(String Order_ID) {
        this.Order_ID = Order_ID;
    }

    public String getPromotion() {
        return Promotion;
    }

    public void setPromotion(String Promotion) {
        this.Promotion = Promotion;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }
    
    
    
}
