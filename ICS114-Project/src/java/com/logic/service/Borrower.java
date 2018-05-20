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
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Jonjie
 */
public class Borrower {
    
    private String url = "jdbc:mysql://localhost:3306/borrowing_system";
    private String username = "root";
    private String password = "root";
    
    private int borrowerID;
    private int itemID;
    private String itemName;
    private String studentNum;
    private String lastName;
    private String firstName;
    private String section;
    private String room;
    private String subject;
    private String timeBorrowed;
    private String timeReturned = "";
    private String status = "Borrowed";
    
    public ResultSet getBorrowers(){
        ResultSet rs = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,username,password);
            Statement st = conn.createStatement();
            rs = st.executeQuery("SELECT * FROM borrower");
        }
        catch(ClassNotFoundException | SQLException e){
            System.out.print("exception: "+e);
        }
        return rs;
    }

    public int getBorrowerID() {
        return borrowerID;
    }

    public void setBorrowerID(int borrowerID) {
        this.borrowerID = borrowerID;
    }

    public int getItemID() {
        return itemID;
    }

    public void setItemID(int itemID) {
        this.itemID = itemID;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getStudentNum() {
        return studentNum;
    }

    public void setStudentNum(String studentNum) {
        this.studentNum = studentNum;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getSection() {
        return section;
    }

    public void setSection(String section) {
        this.section = section;
    }

    public String getRoom() {
        return room;
    }

    public void setRoom(String room) {
        this.room = room;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getTimeBorrowed() {
        return timeBorrowed;
    }

    public void setTimeBorrowed(String timeBorrowed) {
        this.timeBorrowed = timeBorrowed;
    }

    public String getTimeReturned() {
        return timeReturned;
    }

    public void setTimeReturned(String timeReturned) {
        this.timeReturned = timeReturned;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    public boolean deleteBorrowers(int itemID){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,username,password);
            PreparedStatement pst = conn.prepareStatement("DELETE FROM borrower WHERE item_ID = ?");
            pst.setInt(1,itemID);
            pst.executeUpdate();
        }
        catch(ClassNotFoundException | SQLException e){
            System.out.print("exception: "+e);
            return false;
        }
        return true;
    }
    
    public boolean Return(int borrowerID){
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH-mm");
        Date date = new Date();
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,username,password);
            PreparedStatement pst = conn.prepareStatement("UPDATE borrower SET time_returned=?, status=? WHERE borrower_ID=?");
            pst.setString(1,formatter.format(date));
            pst.setString(2,"Returned");
            pst.setInt(3,borrowerID);
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

    @Override
    public String toString() {
        return "Borrower{" + "borrowerID=" + borrowerID + ", itemID=" + itemID + ", itemName=" + itemName + ", studentNum=" + studentNum + ", lastName=" + lastName + ", firstName=" + firstName + ", section=" + section + ", room=" + room + ", subject=" + subject + ", timeBorrowed=" + timeBorrowed + ", timeReturned=" + timeReturned + ", status=" + status + '}';
    }

}
