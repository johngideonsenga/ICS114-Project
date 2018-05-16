/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.logic.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Jonjie
 */
public class Borrower {
    private int borrowerID;
    private String item;
    private String studentNum;
    private String lastName;
    private String firstName;
    private String section;
    private String room;
    private String subject;
    private String timeBorrowed;
    private String timeReturned = "";
    private String status = "borrowed";

    public int getBorrowerID() {
        return borrowerID;
    }

    public void setBorrowerID(int borrowerID) {
        this.borrowerID = borrowerID;
    }

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
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

    public ResultSet getBorrowers(){
        String url = "jdbc:mysql://localhost:3306/borrowing_system";
        String username = "root";
        String password = "root";
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

    @Override
    public String toString() {
        return "Borrower{" + "borrowerID=" + borrowerID + ", item=" + item + ", studentNum=" + studentNum + ", lastName=" + lastName + ", firstName=" + firstName + ", section=" + section + ", room=" + room + ", subject=" + subject + ", timeBorrowed=" + timeBorrowed + ", timeReturned=" + timeReturned + ", status=" + status + '}';
    }

}
