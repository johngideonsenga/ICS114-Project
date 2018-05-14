/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.logic.service;

/**
 *
 * @author Jonjie
 */
public class Borrower {
    private int borrowerID;
    private int itemID;
    private String studentNum;
    private String lastName;
    private String firstName;
    private String section;
    private String room;
    private String subject;
    private String timeBorrowed;
    private String timeReturned = "";

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

    @Override
    public String toString() {
        return "Borrower{" + "borrowerID=" + borrowerID + ", itemID=" + itemID + ", studentNum=" + studentNum + ", lastName=" + lastName + ", firstName=" + firstName + ", section=" + section + ", room=" + room + ", subject=" + subject + ", timeBorrowed=" + timeBorrowed + ", timeReturned=" + timeReturned + '}';
    }
}
