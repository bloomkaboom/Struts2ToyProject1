/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.studyviral.user;

import java.sql.Connection;
import java.sql.DriverManager;
import in.studyviral.action.RegisterAction;
import java.sql.PreparedStatement;

/**
 *
 * @author Bloom
 */
public class User {
    public static Connection con;
    public static Connection connections() throws Exception {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/struts2video1", "root", "");
        return con;
    }
    
    public static int register(RegisterAction ra) {
        int flag = 0;
        
        try {
            PreparedStatement pst = connections().prepareStatement("INSERT INTO login_table (fname,lname,email,pword) VALUES (?,?,?,?)");
            pst.setString(1, ra.getFname());
            pst.setString(2, ra.getLname());
            pst.setString(3, ra.getEmail());
            pst.setString(4, ra.getPword());
            flag = pst.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return flag;
    }
}
