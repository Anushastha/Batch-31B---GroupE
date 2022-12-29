package com.shelfcontrol.shelfcontrol.Controller;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.catalina.User;

import com.shelfcontrol.shelfcontrol.Database.db;
import com.shelfcontrol.shelfcontrol.Models.Books;
import com.shelfcontrol.shelfcontrol.Models.Users;
import com.shelfcontrol.shelfcontrol.Models.search;

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
    public int addBooks(Books books) throws SQLException{
        try{
            String query = "insert into Books(ISBN,BookName,AuthorName,Category,NoOfCopies,PublisherName,PublishedYear,Synopsis) values (?,?,?,?,?,?,?,?)";
            ps = database.connection.prepareStatement(query);
            ps.setInt(1, books.getIsbn());
            ps.setString(2, books.getBookName());
            ps.setString(3, books.getAuthorName());
            ps.setString(4, books.getCategory());
            ps.setInt(5, books.getCopies());
            ps.setString(6, books.getPublisherName());
            ps.setInt(7, books.getPublishedYear().getValue());
            ps.setString(8, books.getSynopsis());
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return database.manipulate(ps);
    }
    public List <search> bookData(String search){
        ResultSet resultSet = null;
        List <search> result = new ArrayList<>();
        try{
            String query = "select * from Books where BookName = ? or AuthorName = ? or PublisherName = ?";
            ps = database.connection.prepareStatement(query);
            ps.setString(1, search);
            ps.setString(2, search);
            ps.setString(3, search);
            resultSet = database.retrieve(ps);   
            while (resultSet.next()){
                search s = new search();
                s.setAuthorName(resultSet.getString("AuthorName"));
                s.setBookName(resultSet.getString("BookName"));
                s.setCategory(resultSet.getString("Category"));
                s.setIsbn(resultSet.getInt("ISBN"));
                result.add(s);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
    public int updateBooks(Books books) throws SQLException{
        try{
            String query = "update Books set BookName = ?, AuthorName = ?, Category = ?, NoOfCopies = ?, PublisherName = ?, PublishedYear = ?, Synopsis = ? where ISBN = ?";
            ps = database.connection.prepareStatement(query);
            ps.setString(1, books.getBookName());
            ps.setString(2, books.getAuthorName());
            ps.setString(3, books.getCategory());
            ps.setInt(4, books.getCopies());
            ps.setString(5, books.getPublisherName());
            ps.setInt(6, books.getPublishedYear().getValue());
            ps.setString(7, books.getSynopsis());
            ps.setInt(8, books.getIsbn());
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return database.manipulate(ps);
    }
    public ResultSet getBookUpdateData(String isbn){
        ResultSet resultSet = null;
        try{
            String query = "select * from Books where isbn = ?";
            ps = database.connection.prepareStatement(query);
            ps.setString(1, isbn);
            resultSet = database.retrieve(ps);
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return(resultSet);
    }
    public int deleteBook(Integer isbn) throws SQLException{
        String query = "delete from Books where ISBN = ?";
        ps = database.connection.prepareStatement(query);
        ps.setInt(1, isbn);
        return database.manipulate(ps);
    }
}
