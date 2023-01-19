package com.shelfcontrol.shelfcontrol.Models;

import java.sql.Date;
public class Users {
    private int userId;
    private String username;
    private String email;
    private String password;
    private String newPassword;
    private int subscribed;
    private int booksRead;
    private String theme;
    private String accountType;
    private Date reserved;

    public Users(String username, String email, String password, int subscribed, int booksRead, String theme,
            String accountType) {
        this.username = username;
        this.email = email;
        this.password = password;
        this.subscribed = subscribed;
        this.booksRead = booksRead;
        this.theme = theme;
        this.accountType = accountType;
    }

    public Users(String username, String email, String password, String newPassword) {
        this.username = username;
        this.email = email;
        this.password = password;
        this.newPassword = newPassword;
    }

    // resetpass
    public Users(String email, String password, String newPassword) {
        this.email = email;
        this.password = password;
        this.newPassword = newPassword;
    }
    public Users(String email) {
        this.email = email;
    }

    public Users() {
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
    public String getUsername() {
        return username;
    }
    public void setUserName(String username) {
        this.username = username;
    }
    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public int getSubscribed() {
        return subscribed;
    }
    public void setSubscribed(int subscribed) {
        this.subscribed = subscribed;
    }
    public int getBooksRead() {
        return booksRead;
    }
    public void setBookRead(int booksRead) {
        this.booksRead = booksRead;
    }
    public String getTheme() {
        return theme;
    }

    public String getAccountType() {
        return accountType;
    }

    public String getNewPassword() {
        return newPassword;
    }
    public void setReserved(Date reserved){
        this.reserved = reserved;
    }
    public Date getReserved(){
        return reserved;
    }

}
