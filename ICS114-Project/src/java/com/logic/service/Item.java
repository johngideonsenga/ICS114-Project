package com.logic.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class Item {
    private String itemName;
    private int stock;

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }
    
    public ResultSet getItems(){
        String url = "jdbc:mysql://localhost:3306/borrowing_system";
        String username = "root";
        String password = "root";
        ResultSet rs = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,username,password);
            Statement st = conn.createStatement();
            rs = st.executeQuery("SELECT * FROM item");
        }
        catch(ClassNotFoundException | SQLException e){
            System.out.print("exception: "+e);
        }
        return rs;
    }

    @Override
    public String toString() {
        return "Item{" + "itemName=" + itemName + ", stock=" + stock + '}';
    }
    
}
