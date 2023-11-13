package com.entity;

public class ToolsDtls {

    private int toolsId;
    private String toolsName;
    private String brend;
    private String price;
    private String toolsCategory;
    private String status;
    private String photoName;
    private String user_email;

    public ToolsDtls(){
        super();
    }
    
    public ToolsDtls(String toolsName, String brend, String price, String toolsCategory, String status, String photoName, String user_email) {
        super();
        this.toolsName = toolsName;
        this.brend = brend;
        this.price = price;
        this.toolsCategory = toolsCategory;
        this.status = status;
        this.photoName = photoName;
        this.user_email = user_email;
    }

    public int getToolsId() {
        return toolsId;
    }

    public void setToolsId(int toolsId) {
        this.toolsId = toolsId;
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

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getToolsCategory() {
        return toolsCategory;
    }

    public void setToolsCategory(String toolsCategory) {
        this.toolsCategory = toolsCategory;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPhotoName() {
        return photoName;
    }

    public void setPhotoName(String photoName) {
        this.photoName = photoName;
    }

    public String getUser_email() {
        return user_email;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }

    @Override
    public String toString() {
        return "ToolsDtls{" + "toolsId=" + toolsId + ", toolsName=" + toolsName + ", brend=" + brend + ", price=" + price + ", toolsCategory=" + toolsCategory + ", status=" + status + ", photoName=" + photoName + ", user_email=" + user_email + '}';
    }

}
