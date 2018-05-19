/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.logic.service;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Louie Caringal
 */
public class Connection {
    public boolean Connection(String user, String pw) throws ClassNotFoundException, SQLException{
        String url = "jdbc:mysql://localhost:3306/borrowing_system";
        String username = "root";
        String password = "root";
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection conn = DriverManager.getConnection(url,username,password);
            
        PreparedStatement pst = conn.prepareStatement("SELECT * FROM administrator WHERE username=? AND password=?");
        pst.setString(1,user);
        pst.setString(2,pw);
        
        ResultSet rs = pst.executeQuery();
                
        while(rs.next()) {
            return true;
        }
        return false;
    }
}
