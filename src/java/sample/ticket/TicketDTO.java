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
public class TicketDTO {
     private String Ticket_ID;
    private String Ticket_Name;
   
    private Double Price;
     private int Discount;
     private Double Price_Main;

    public TicketDTO() {
    }

    public TicketDTO(String Ticket_ID, String Ticket_Name, Double Price, int Discount, Double Price_Main) {
        this.Ticket_ID = Ticket_ID;
        this.Ticket_Name = Ticket_Name;
        this.Price = Price;
        this.Discount = Discount;
        this.Price_Main = Price_Main;
    }

    public String getTicket_ID() {
        return Ticket_ID;
    }

    public void setTicket_ID(String Ticket_ID) {
        this.Ticket_ID = Ticket_ID;
    }

    public String getTicket_Name() {
        return Ticket_Name;
    }

    public void setTicket_Name(String Ticket_Name) {
        this.Ticket_Name = Ticket_Name;
    }

    public Double getPrice() {
        return Price;
    }

    public void setPrice(Double Price) {
        this.Price = Price;
    }

    public int getDiscount() {
        return Discount;
    }

    public void setDiscount(int Discount) {
        this.Discount = Discount;
    }

    public Double getPrice_Main() {
        return Price_Main;
    }

    public void setPrice_Main(Double Price_Main) {
        this.Price_Main = Price_Main;
    }
    

}