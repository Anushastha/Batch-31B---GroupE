package com.shelfcontrol.shelfcontrol.Controller;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.List;

import org.apache.catalina.User;
import org.springframework.core.ReactiveAdapter;
import com.mysql.cj.Session;
import com.shelfcontrol.shelfcontrol.Database.db;
import com.shelfcontrol.shelfcontrol.Methods.dates;
import com.shelfcontrol.shelfcontrol.Models.Books;
import com.shelfcontrol.shelfcontrol.Models.Users;
import com.shelfcontrol.shelfcontrol.Models.borrowed;
import com.shelfcontrol.shelfcontrol.Models.reserved;
import com.shelfcontrol.shelfcontrol.Models.search;

public class dbController {
    db database = new db();
    PreparedStatement ps;
    int status;

    public int register(Users user) throws SQLException {
        String query = "insert into Users(UserName, Email, Password, Subscribed, BooksRead, Theme, AccountType) values (?,?,?,?,?,?,?)";
        ps = database.connection.prepareStatement(query);
        ps.setString(1, user.getUsername());
        ps.setString(2, user.getEmail());
        ps.setString(3, user.getPassword());
        ps.setInt(4, user.getSubscribed());
        ps.setInt(5, user.getBooksRead());
        ps.setString(6, user.getTheme());
        ps.setString(7, user.getAccountType());
        int stat = database.manipulate(ps);

        if (stat == 1) {
            return 1;
        } else
            return 0;
    }

    public boolean login(String email, String password) throws SQLException {
        String passwordDb = "";
        String query = "select password from Users where Email=?";
        ps = database.connection.prepareStatement(query);
        ps.setString(1, email);
        ResultSet result = database.retrieve(ps);
        while (result.next()) {
            passwordDb = result.getString("Password");
        }
        if (password.equals(passwordDb)) {
            return (true);
        } else {
            return (false);
        }
    }

    public String getUsername(String email) throws SQLException {
        String userName = "";
        String query = "select UserName from Users where Email=?";
        ps = database.connection.prepareStatement(query);
        ps.setString(1, email);
        ResultSet result = database.retrieve(ps);
        while (result.next()) {
            userName = result.getString("UserName");
        }
        return userName;
    }

    public Integer getUserId(String email) throws SQLException {
        Integer userId = null;
        String query = "select UserId from Users where Email=?";
        ps = database.connection.prepareStatement(query);
        ps.setString(1, email);
        ResultSet result = database.retrieve(ps);
        while (result.next()) {
            userId = result.getInt("UserId");
        }
        return userId;
    }

    public String getUsername(Integer userID) throws SQLException {
        String userName = "";
        String query = "select UserName from Users where userID=?";
        ps = database.connection.prepareStatement(query);
        ps.setInt(1, userID);
        ResultSet result = database.retrieve(ps);
        while (result.next()) {
            userName = result.getString("UserName");
        }
        return userName;
    }

    public Integer getSubscribed(Integer userID) throws SQLException {
        Integer subscribed = 0;
        String query = "select Subscribed from Users where UserID=?";
        ps = database.connection.prepareStatement(query);
        ps.setInt(1, userID);
        ResultSet result = database.retrieve(ps);
        while (result.next()) {
            subscribed = result.getInt("Subscribed");
        }
        return subscribed;
    }

    public String getType(String email) throws SQLException {
        String accountType = "";
        String query = "select AccountType from Users where Email=?";
        ps = database.connection.prepareStatement(query);
        ps.setString(1, email);
        ResultSet result = database.retrieve(ps);
        while (result.next()) {
            accountType = result.getString("AccountType");
        }
        return accountType;
    }

      public int addBooks(Books books) throws SQLException {
        try {
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
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return database.manipulate(ps);
    }

    public List<search> bookData(String search, String category) {
        ResultSet resultSet = null;
        List<search> result = new ArrayList<>();
        try {
            if (search.strip() != "") {
                String query = "select * from Books where BookName = ? or AuthorName = ? or PublisherName = ?";
                ps = database.connection.prepareStatement(query);
                ps.setString(1, search);
                ps.setString(2, search);
                ps.setString(3, search);
            } else {

                System.out.println("----------------------------------------->" + category);
                String query = "select * from Books where Category = ?";
                ps = database.connection.prepareStatement(query);
                ps.setString(1, category);
            }

            resultSet = database.retrieve(ps);
            while (resultSet.next()) {
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

   public int updateBooks(Books books) throws SQLException {
        try {
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
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return database.manipulate(ps);
    }

    public ResultSet getBookUpdateData(String isbn) {
        ResultSet resultSet = null;
        try {
            String query = "select * from Books where isbn = ?";
            ps = database.connection.prepareStatement(query);
            ps.setString(1, isbn);
            resultSet = database.retrieve(ps);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return (resultSet);
    }
    public int deleteBook(Integer isbn) throws SQLException {
        String query = "delete from Books where ISBN = ?";
        ps = database.connection.prepareStatement(query);
        ps.setInt(1, isbn);
        return database.manipulate(ps);
    }

    public int deleteAccount(Integer userID) throws SQLException {

        String query = "delete from Users where UserId = ?";
        Integer returnStatus = 0;
        ps = database.connection.prepareStatement(query);
        ps.setInt(1, userID);
        Integer stat = 0;
        try {

            stat = database.manipulate(ps);
        } catch (Exception e) {
            e.printStackTrace();
        }
        Integer status1 = deleteBorrowed(userID);
        Integer stat2 = deleteReserve(userID);
        if (stat == 1 || status1 == 1 || stat2 == 1) {
            returnStatus = 1;
        }
        return returnStatus;
    }

    public int deleteBorrowed(Integer userID) throws SQLException {

        String query = "delete from Borrowed where UserID = ?";
        ps = database.connection.prepareStatement(query);
        ps.setInt(1, userID);
        status = database.manipulate(ps);
        System.out.println(status);
        return status;
    }

    public int deleteReserve(Integer userID) throws SQLException {
        String query = "delete from Reservations where UserID = ?";
        ps = database.connection.prepareStatement(query);
        ps.setInt(1, userID);
        status = database.manipulate(ps);
        System.out.println(status);
        return status;
    }

    public ResultSet getUserData(String email) {
        ResultSet resultSet = null;
        try {
            String query = "select * from Users where Email = ?";
            ps = database.connection.prepareStatement(query);
            ps.setString(1, email);
            resultSet = database.retrieve(ps);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return (resultSet);
    }

    public String getPass(String email) throws SQLException{
        String password = "";
        String query = "select Password from Users where Email=?";
        ps = database.connection.prepareStatement(query);
        ps.setString(1,password);
        ResultSet result = database.retrieve(ps);
        while(result.next()){
            password = result.getString("Password");
        }
        return password;
    }

    public int profileUpdate(Users users, String sessionEmail)throws SQLException{   
        try{
            if(users.getPassword().strip().equals("")){
            String query = "update Users set UserName=? where Email=?";
            ps = database.connection.prepareStatement(query);
            ps.setString(1, users.getUsername());
            ps.setString(2, sessionEmail);
            }
            else{
            String query = "update Users set UserName=?, Password=? where Email=?";
            ps = database.connection.prepareStatement(query);
            ps.setString(1, users.getUsername());
            ps.setString(2, users.getNewPassword());
            ps.setString(3, sessionEmail);
            }
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return database.manipulate(ps);
    }
    
    public ResultSet getAccType(String email) {
        ResultSet resultSet = null;
        try {
            String query = "select AccountType from Users where Email = ?";
            ps = database.connection.prepareStatement(query);
            ps.setString(1, email);
            resultSet = database.retrieve(ps);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return (resultSet);
    }

    public int typeUpdate(Users users) throws SQLException {
        try {
            String query = "update Users set Subscribed = ? where Email = ?";
            ps = database.connection.prepareStatement(query);
            ps.setInt(1, 1);
            ps.setString(2, users.getEmail());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return database.manipulate(ps);
    }

    // new code reset

    public int resetPassword(Users users) throws SQLException {
        try {
            String query = "update Users set Password=? where Email=?";
            ps = database.connection.prepareStatement(query);
            ps.setString(1, users.getPassword());
            ps.setString(2, users.getEmail());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return database.manipulate(ps);
    }

    public int getBookID(Integer isbn) throws SQLException {
        ResultSet resultSet = null;
        Integer bookID = null;
        try {
            String query = "select BookID from Books where ISBN = ?";
            ps = database.connection.prepareStatement(query);
            ps.setInt(1, isbn);
            resultSet = database.retrieve(ps);
            while (resultSet.next()) {
                bookID = resultSet.getInt("BookID");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bookID;
    }


    public String getBookName(Integer isbn) {
        ResultSet resultSet = null;
        String bookName = null;
        try {
            String query = "select BookName from Books where ISBN = ?";
            ps = database.connection.prepareStatement(query);
            ps.setInt(1, isbn);
            resultSet = database.retrieve(ps);
            while (resultSet.next()) {
                bookName = resultSet.getString("BookName");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bookName;
    }

    public String getAuthor(Integer isbn) {
        ResultSet resultSet = null;
        String authorName = null;
        try {
            String query = "select AuthorName from Books where ISBN = ?";
            ps = database.connection.prepareStatement(query);
            ps.setInt(1, isbn);
            resultSet = database.retrieve(ps);
            while (resultSet.next()) {
                authorName = resultSet.getString("AuthorName");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return authorName;
    }

    public Integer getNumberOfCopies(Integer isbn) throws SQLException {
        String query = "select NoOfCopies from Books where ISBN=?";
        Integer copies = null;
        ps = database.connection.prepareStatement(query);
        ps.setInt(1, isbn);
        ResultSet result = database.retrieve(ps);
        while (result.next()) {
            copies = result.getInt("NoOfCopies");
        }
        return copies;
    }

    public void updateCopies(Integer isbn, String action) throws SQLException {
        try {
            Integer copies = getNumberOfCopies(isbn);
            if (action.equals("+")) {
                copies++;
            } else {
                copies--;
            }
            String query = "update Books set NoOfCopies = ? where isbn = ?";
            ps = database.connection.prepareStatement(query);
            ps.setInt(1, copies);
            ps.setInt(2, isbn);
            Integer status = database.manipulate(ps);

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public Integer getReadBooks(Integer userId) {
        String query = "select BooksRead from Users where UserId = ?";
        ResultSet resultSet;
        Integer booksRead = 0;
        try {
            ps = database.connection.prepareStatement(query);
            ps.setInt(1, userId);
            resultSet = database.retrieve(ps);
            while (resultSet.next()) {
                booksRead = resultSet.getInt("BooksRead");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return (booksRead);

    }

    public void addReadBooks(Integer userId) {
        try {
            Integer books = getReadBooks(userId) + 1;

            System.out.println(books);
            String query = "update Users set BooksRead = ? where UserId = ?";
            ps = database.connection.prepareStatement(query);
            ps.setInt(1, books);
            ps.setInt(2, userId);
            Integer status = database.manipulate(ps);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Integer Borrow(Integer userID, Integer isbn) throws SQLException {
        Integer status = null;
        try {

            String query = "INSERT INTO Borrowed (ISBN, UserID, BorrowedDate, DueDate) VALUES (?,?,?,?);";
            ps = database.connection.prepareStatement(query);
            ps.setInt(1, isbn);
            ps.setInt(2, userID);
            ps.setDate(3, java.sql.Date.valueOf(dates.getDate()));
            ps.setDate(4, java.sql.Date.valueOf(dates.getDueDate()));
            status = database.manipulate(ps);
            updateCopies(isbn, "-");
            addReadBooks(userID);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return (status);
    }

    public List<borrowed> getBorrows(Integer userID) {
        ResultSet result = null;
        List<borrowed> borrow = new ArrayList<>();
        try {
            String query = "Select * from Borrowed where UserId = ?";
            ps = database.connection.prepareStatement(query);
            ps.setInt(1, userID);
            result = database.retrieve(ps);
            while (result.next()) {
                borrowed bor = new borrowed();
                bor.setIsbn(result.getInt("ISBN"));
                bor.setName(getBookName(result.getInt("ISBN")));
                bor.setBorrowed(result.getDate("BorrowedDate"));
                bor.setDuedate((result.getDate("DueDate")));
               bor.setStatus((result.getDate("DueDate")).toLocalDate());
                borrow.add(bor);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return (borrow);
    }

    public Integer Reserve(Integer userID, Integer isbn) throws SQLException {
        Integer status = null;
        try {

            String query = "INSERT INTO Reservations (UserID, Isbn, ReservationDate) VALUES (?,?,?);";
            ps = database.connection.prepareStatement(query);
            ps.setInt(1, userID);
            ps.setInt(2, isbn);
            ps.setDate(3, java.sql.Date.valueOf(dates.getDate()));
            status = database.manipulate(ps);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return (status);
    }

    public List<reserved> getReservations(Integer userID) {
        ResultSet result = null;
        List<reserved> reserveds = new ArrayList<>();
        try {
            String query = "Select * from Reservations where UserId = ?";
            ps = database.connection.prepareStatement(query);
            ps.setInt(1, userID);
            result = database.retrieve(ps);
            while (result.next()) {
                reserved reserved = new reserved();
                reserved.setIsbn(result.getInt("Isbn"));
                reserved.setName(getBookName(result.getInt("Isbn")));
                reserved.setAuthorName(getAuthor(result.getInt("Isbn")));
                reserveds.add(reserved);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return (reserveds);
    }

    public List<Users> getReservationByBook(Integer isbn) {
        ResultSet result = null;
        List<Users> reserveds = new ArrayList<>();
        try {
            String query = "Select * from Reservations where Isbn = ?";
            ps = database.connection.prepareStatement(query);
            ps.setInt(1, isbn);
            result = database.retrieve(ps);
            while (result.next()) {
                System.out.println("----------------------------->");
                Users user = new Users();
                user.setUserId(result.getInt("UserID"));
                user.setUserName(getUsername(result.getInt("UserID")));
                user.setSubscribed(getSubscribed(result.getInt("UserID")));
                user.setReserved(result.getDate("ReservationDate"));
                reserveds.add(user);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return (reserveds);
    }

    public List<Books> getBooks() {
        ResultSet resultSet = null;
        List<Books> books = new ArrayList<>();
        try {
            String query = "Select * from Books";
            ps = database.connection.prepareStatement(query);
            resultSet = database.retrieve(ps);

            while (resultSet.next()) {
                Books book = new Books();
                book.setIsbn(resultSet.getInt("ISBN"));
                book.setBookName(resultSet.getString("BookName"));
                book.setAuthorName(resultSet.getString("AuthorName"));
                book.setCategory(resultSet.getString("Category"));
                // book.setPublishedYear(Year.parse(resultSet.getString("PublishedYear")));
                books.add(book);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (books);
    }

    public int deleteReservation(Integer isbn) throws SQLException {
        String query = "delete from Reservations where Isbn = ?";
        ps = database.connection.prepareStatement(query);
        ps.setInt(1, isbn);
        status = database.manipulate(ps);
        System.out.println(status);
        return status;
    }
    List<Users> userData() throws SQLException{
        ResultSet result = null;
        List<Users> users = new ArrayList<>();
        try {
            String query = "select * from Users where AccountType = ?";
            ps = database.connection.prepareStatement(query);
            ps.setString(1,"Student");
            result = database.retrieve(ps);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        while (result.next()) {
            Users userList = new Users();
            userList.setUserId(result.getInt("UserId"));
            userList.setUserName(result.getString("UserName"));
            userList.setSubscribed(result.getInt("Subscribed"));
            userList.setBookRead(result.getInt("BooksRead"));
            users.add(userList);
        }
        return users;
    }

public ResultSet getUserNotification(){
    ResultSet resultSet = null;
    try{
        String query = "select * from notification_table where notification_receiver_id = ?";
        ps = database.connection.prepareStatement(query);
        ps.setString(1, "id");
        resultSet = database.retrieve(ps);
        System.out.println(resultSet);
    }
    catch (SQLException e){
        e.printStackTrace();
    }
    return(resultSet);
}
public int notification(String message, Integer senderID, Integer recieverID){
    Integer status = 0;
    try{
        String query = "INSERT into notification_table(notification_date,notification_time,notification_receiver_id,notification_sender_id, message) VALUES (?,?,?,?,?) ";
        ps = database.connection.prepareStatement(query);
        ps.setDate(1, java.sql.Date.valueOf(dates.getDate()));
        ps.setString(2, "1234");
        ps.setInt(3, recieverID);
        ps.setInt(4, senderID);
        ps.setString(5, message);
        status = database.manipulate(ps);
    }
    catch(Exception e){
        e.printStackTrace();
    }
    return status;
}
}


