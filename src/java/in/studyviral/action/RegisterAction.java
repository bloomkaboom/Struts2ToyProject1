/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.studyviral.action;

import com.opensymphony.xwork2.ActionSupport;
import in.studyviral.user.User;
/**
 *
 * @author Bloom
 */
public class RegisterAction extends ActionSupport{
    private String fname;
    private String lname;
    private String email;
    private String pword;

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPword() {
        return pword;
    }

    public void setPword(String pword) {
        this.pword = pword;
    }
    
    public String execute() {
        int rec = User.register(this);
        
        if(rec > 0) {
            return "SUCCESS";
        } else {
            return "ERROR";
        }
    }
    
}
