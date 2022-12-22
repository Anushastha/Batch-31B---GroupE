package com.shelfcontrol.shelfcontrol.Models;

public class Users {
    private String username;
    private String email;
    private String password;
    private int subscribed;
    private int booksRead;
    private String theme;
    private String accountType;

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

    public String getUsername() {
        return username;
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

    public int getBooksRead() {
        return booksRead;
    }

    public String getTheme() {
        return theme;
    }

    public String getAccountType() {
        return accountType;
    }

}