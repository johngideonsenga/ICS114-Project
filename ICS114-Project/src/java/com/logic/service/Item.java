package com.logic.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Item {
    
    private String url = "jdbc:mysql://localhost:3306/borrowing_system";
    private String username = "root";
    private String password = "root";
    
    private int itemID;
    private String itemName;
    private int stock;

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

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }
    
    public ResultSet getItems(){
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
    
    public boolean deleteItem(int itemID){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,username,password);
            PreparedStatement pst = conn.prepareStatement("DELETE FROM item WHERE item_ID = ?");
            pst.setInt(1,itemID);
            pst.executeUpdate();
        }
        catch(ClassNotFoundException | SQLException e){
            System.out.print("exception: "+e);
            return false;
        }
        return true;
    }
    
    public boolean decrementStock(int itemID){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,username,password);
            PreparedStatement pst = conn.prepareStatement("UPDATE item SET stock = stock-1 WHERE item_ID=? AND stock>0;");
            pst.setInt(1,itemID);
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
        return "Item{" + "itemID=" + itemID + ", itemName=" + itemName + ", stock=" + stock + '}';
    }
    
}
