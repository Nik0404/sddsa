package com.entity;

public class Cart {

    private int id;
    private int toolsId;
    private int userId;
    private String toolsName;
    private String brend;
    private double price;
    private int count;
    private double totalPrice;

    public Cart() {
        super();
    }

    public Cart(int id, int toolsId, int userId, String toolsName, String brend, double price, int count, double totalPrice) {
        this.id = id;
        this.toolsId = toolsId;
        this.userId = userId;
        this.toolsName = toolsName;
        this.brend = brend;
        this.price = price;
        this.count = count;
        this.totalPrice = totalPrice;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getToolsId() {
        return toolsId;
    }

    public void setToolsId(int toolsId) {
        this.toolsId = toolsId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getToolsName() {
        return toolsName;
    }

    public void setToolsName(String toolsName) {
        this.toolsName = toolsName;
    }

    public String getBrend() {
        return brend;
    }

    public void setBrend(String brend) {
        this.brend = brend;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    @Override
    public String toString() {
        return "Cart{" + "id=" + id + ", toolsId=" + toolsId + ", userId=" + userId + ", toolsName=" + toolsName + ", brend=" + brend + ", price=" + price + ", count=" + count + ", totalPrice=" + totalPrice + '}';
    }
    
    

}
