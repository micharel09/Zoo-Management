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

    private String employee_id;
    private String password;
    private String fullname;
    private String phone;
    private String email;
    private String gender;
    private String photo;
    private String roleID;

    public UserDTO() {
    }

    public UserDTO(String employee_id, String password, String fullname, String phone, String email, String gender, String photo, String roleID) {
        this.employee_id = employee_id;
        this.password = password;
        this.fullname = fullname;
        this.phone = phone;
        this.email = email;
        this.gender = gender;
        this.photo = photo;
        this.roleID = roleID;
    }

    public String getEmployee_id() {
        return employee_id;
    }

    public void setEmployee_id(String employee_id) {
        this.employee_id = employee_id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getRoleID() {
        return roleID;
    }

    public void setRoleID(String roleID) {
        this.roleID = roleID;
    }

    @Override
    public String toString() {
        return "UserDTO{" + "employee_id=" + employee_id + ", password=" + password + ", fullname=" + fullname + ", phone=" + phone + ", email=" + email + ", gender=" + gender + ", photo=" + photo + ", roleID=" + roleID + '}';
    }



    
    
   
  

}
