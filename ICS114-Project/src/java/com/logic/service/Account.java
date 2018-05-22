/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.logic.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Louie Caringal
 */
public class Account {
    private String url = "jdbc:mysql://localhost:3306/borrowing_system";
    private String username = "root";
    private String password = "root";
    
    public boolean login(String user, String pw){
        try{    
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,username,password);
            PreparedStatement pst = conn.prepareStatement("SELECT * FROM administrator WHERE username=? AND password=?");
            pst.setString(1,user);
            pst.setString(2,pw);

            ResultSet rs = pst.executeQuery();
            if(rs.next()) {
                return true;
            }
        }
        catch(ClassNotFoundException | SQLException e){
            System.out.print("exception: "+e);
            return false;
        }
        return false;
    }
    
    public boolean changePw(String user, String currentPw, String newPw){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,username,password);
            PreparedStatement pst = conn.prepareStatement("UPDATE administrator SET password=? WHERE username=? AND password=?");
            pst.setString(1,newPw);
            pst.setString(2,user);
            pst.setString(3,currentPw);
            if(pst.executeUpdate()==0){
                return false;
            }
        }
        catch(ClassNotFoundException | SQLException e){
            System.out.print("exception: "+e);
            return false;
        }
        return true;
    }
    
}
