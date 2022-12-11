package com.shelfcontrol.shelfcontrol.Controller;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.catalina.User;

import com.shelfcontrol.shelfcontrol.Database.db;
import com.shelfcontrol.shelfcontrol.Models.Users;

public class dbController{
    db database = new db();
    PreparedStatement ps;
    int status;

    public int register(Users user) throws SQLException{
        String query = "insert into Users(UserName, Email, Password, Subscribed, BooksRead, Theme, AccountType) values (?,?,?,?,?,?,?)";
        ps = database.connection.prepareStatement(query);
        ps.setString(1,user.getUsername());
        ps.setString(2, user.getEmail());
        ps.setString(3, user.getPassword());
        ps.setInt(4, user.getSubscribed());
        ps.setInt(5, user.getBooksRead());
        ps.setString(6, user.getTheme());
        ps.setString(7, user.getAccountType());
        int stat = database.manipulate(ps);

        if(stat == 1){
            return 1;
        }
        else return 0;
    }
    public boolean login(String email, String password) throws SQLException{
        String passwordDb = "";
        String query = "select password from Users where Email=?";
        ps = database.connection.prepareStatement(query);
        ps.setString(1, email);
        ResultSet result = database.retrieve(ps);
        while(result.next()){
            passwordDb = result.getString("Password");
        }
        if(password.equals(passwordDb)){
            return(true);
        }
        else{
            return(false);
        }
    }
    public String getUsername(String email) throws SQLException{
        String userName = "";
        String query = "select UserName from Users where Email=?";
        ps = database.connection.prepareStatement(query);
        ps.setString(1, email);
        ResultSet result = database.retrieve(ps);
        while(result.next()){
            userName = result.getString("UserName");
        }
        return userName;
    }
    public String getType(String email) throws SQLException{
        String accountType = "";
        String query = "select AccountType from Users where Email=?";
        ps = database.connection.prepareStatement(query);
        ps.setString(1, email);
        ResultSet result = database.retrieve(ps);
        while(result.next()){
            accountType = result.getString("AccountType");
        }
        return accountType;
    }
    
}
