package com.shelfcontrol.shelfcontrol.Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class db {
    public Connection connection;
    private int status;
    private ResultSet resultSet;
    public db(){

        try {
            String username = "root";
            String password = null;
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ShelfControl", username, password);
            if(connection != null){
                System.out.println("database connected");
            }
            else {
                System.out.println("Error Connecting Database");

            }

        } catch (Exception e) {
            System.out.println("--------------------- \n ----------------------------");
            e.printStackTrace();
        }

    }
    public int manipulate(PreparedStatement ps){
        try {
            status = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }
    public ResultSet retrieve(PreparedStatement ps){
        try {
            resultSet = ps.executeQuery();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return resultSet;
    }

}