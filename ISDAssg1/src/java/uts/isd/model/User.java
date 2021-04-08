/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.isd.model;
import java.io.Serializable;
/**
 *
 * @author risheekprabhakar
 */
public class User implements Serializable{
    
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String gender;
    private String dob;
    private String phone;


public User(String firstName, String lastName, String email, String password, String phone, String gender, String dob) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.gender = gender;
        this.dob = dob;
    }
    
public void updateInfo(String firstName, String lastName, String email, String password, String phone, String gender, String dob) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.gender = gender;
        this.dob = dob;
    }


    public User() {
    }

    public String getfirstName() {
        return firstName;
    }
    
    public void setfirstName(String firstName) {
    this.firstName = firstName;
    }
    
    public String getlastName() {
        return lastName;
    }
    
    public void setlastName (String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }
}
