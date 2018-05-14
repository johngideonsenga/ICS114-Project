package com.logic.service;



public class Item {
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

    @Override
    public String toString() {
        return "Item{" + "itemID=" + itemID + ", itemName=" + itemName + ", stock=" + stock + '}';
    }
    
}
