/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.user;

/**
 *
 * @author HoangNQ
 */
public class UserDTO {

    private String Employee_ID;
    private String Password;
    private String Fullname;
    private String Phone;
    private String Email;
    private String Gender;
    private String Dependent;
    private String RoleID;

    public UserDTO() {
    }

    public UserDTO(String Employee_ID, String Password, String Fullname, String Phone, String Email, String Gender, String Dependent, String RoleID) {
        this.Employee_ID = Employee_ID;
        this.Password = Password;
        this.Fullname = Fullname;
        this.Phone = Phone;
        this.Email = Email;
        this.Gender = Gender;
        this.Dependent = Dependent;
        this.RoleID = RoleID;
    }

    public String getEmployee_ID() {
        return Employee_ID;
    }

    public void setEmployee_ID(String Employee_ID) {
        this.Employee_ID = Employee_ID;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getFullname() {
        return Fullname;
    }

    public void setFullname(String Fullname) {
        this.Fullname = Fullname;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    public String getDependent() {
        return Dependent;
    }

    public void setDependent(String Dependent) {
        this.Dependent = Dependent;
    }

    public String getRoleID() {
        return RoleID;
    }

    public void setRoleID(String RoleID) {
        this.RoleID = RoleID;
    }
    
    
   
  

}
