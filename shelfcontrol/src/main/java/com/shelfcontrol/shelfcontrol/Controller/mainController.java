package com.shelfcontrol.shelfcontrol.Controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.Year;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.shelfcontrol.shelfcontrol.Methods.Method;
import com.shelfcontrol.shelfcontrol.Methods.storeImage;
import com.shelfcontrol.shelfcontrol.Models.Books;
import com.shelfcontrol.shelfcontrol.Models.Users;
import com.shelfcontrol.shelfcontrol.Models.search;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class mainController {
    
    @GetMapping("/register")
    public String getRegister() {
        return "register";
    }
    @GetMapping({"/login","/",""})
    public String getLogin(Model model){
        model.addAttribute("status", true);
        return "login";
    }
    @GetMapping({"/resetPassword"})
    public String getForgotPassword(){
        return "resetPassword";
    }
    @GetMapping({"/bookupload"})
    public String getBookUpload(){
        return "bookupload";
    }
    
    @GetMapping({"/borrow"})
    public String getBorrow(){
        return "borrow";
    }

    @GetMapping({"/landing"})
    public String getLanding(){
        return "landing";
    }

    @GetMapping({"/aboutus"})
    public String getaboutus(){
        return "aboutus";
    }
    
    @GetMapping({"/contact"})
    public String getcontact(){
        return "contact";
    }

    @GetMapping({"/faqs"})
    public String getfaqs(){
        return "faqs";
    }

    @GetMapping({"/userDash"})
    public String getuserDash(){
        return "userDash";
    }

    @GetMapping({"/userProfile"})
    public String getuserProfile(){
        return "userProfile";
    }
    @GetMapping({"/resetPasssword"})
    public String getresetPassword(){
        return "resetPassword";
    }
    
    @GetMapping("/registerUser")
    public String registerUser(HttpServletRequest request) throws SQLException{
        dbController controller = new dbController();
        String userName = request.getParameter("username");
        String email = request.getParameter("emailAddress");
        String password = request.getParameter("password");
        String accountType = "student";
        int subscribed = 0;
        int booksRead = 0;
        String theme = "";


        Users users = new Users(userName, email, password, subscribed, booksRead, theme, accountType);
        if(controller.register(users) == 1){
            return("login");
        }
        else{
            return("register");
        }
        
    }
    @GetMapping("/auth")
    public String getLogin(HttpServletRequest request, Model model) throws SQLException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String username = "";
        String fChar = "";
        String accountType ="";
        dbController controller = new dbController();
        Method method = new Method();
        if (controller.login(email, password)) {
            username = controller.getUsername(email);
            accountType = controller.getType(email);
            fChar = method.firstCharacter(username);
            model.addAttribute("Name", username);
            model.addAttribute("ProfileIcon", fChar);
            model.addAttribute("Type", accountType);
            HttpSession session = request.getSession();
            session.setAttribute("name", username);
            session.setAttribute("type", accountType);
            if(accountType.equals("Admin")){
                session.setAttribute("username", username);
                return "bookupload";
            }
            return "bookSearch";
        }

        else {
            model.addAttribute("status", false);
            return "login";
        }
    }
    @PostMapping(value = "/upload", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public String uploadBook(HttpServletRequest request, @RequestPart(name = "thumbnail") MultipartFile thumbnail,  @RequestPart(name = "preview") MultipartFile preview,
            Model model) throws IOException, ServletException {
        dbController controller = new dbController();
        int isbn = Integer.parseInt(request.getParameter("isbn"));
        String bookName = request.getParameter("book");
        String authorName = request.getParameter("author");
        String category = request.getParameter("category");
        int noOfCopies = Integer.parseInt(request.getParameter("copies"));
        String publisherName = request.getParameter("publisher");
        Year publishedYear = Year.parse(request.getParameter("published-year"));
        String synopsis = request.getParameter("bookSynopsis");
        storeImage store = new storeImage();
        int status = store.store(thumbnail, preview, request.getParameter("isbn"));
        if (status == 1) {
            String retFile = "/images/books/" + request.getParameter("isbn") + ".png";
            model.addAttribute("image", retFile);
            Books books = new Books(isbn, bookName, authorName, category, noOfCopies, publisherName, publishedYear,
                    synopsis);
            try {
                if (controller.addBooks(books) == 1) {
                    return ("register");
                } else {
                    return ("bookupload");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
            return ("register");
        } else {
            return ("bookupload");
        }
    }
    @GetMapping("/SearchBooks")
    public String searchBooks(HttpServletRequest request, ServletResponse response, Model model) throws SQLException, ServletException, IOException{
        dbController controller = new dbController();
        String search = request.getParameter("bookName");
        String category = request.getParameter("genre");
        List <search> result = controller.bookData(search, category );
        if(result.isEmpty()){
            model.addAttribute("status", 0);
        }
        else{
            model.addAttribute("status", 1);

        }
        model.addAttribute("search", search);
        model.addAttribute("result", result);
        request.setAttribute("result", result);
        return("bookSearch");

    }
    @GetMapping("/updatePage")
    public String getUpdatePage(HttpServletRequest request, Model model){
        String isbn = request.getParameter("isbn");
        dbController controller = new dbController();
        ResultSet resultSet = controller.getBookUpdateData(isbn);
        try {
            while(resultSet.next()){
                model.addAttribute("bookName", resultSet.getString("BookName"));
                model.addAttribute("authorName", resultSet.getString("AuthorName"));
                model.addAttribute("NoOfCopies", resultSet.getInt("NoOfCopies"));
                model.addAttribute("publishedYear", resultSet.getString("PublishedYear"));
                model.addAttribute("publisherName", resultSet.getString("PublisherName"));
                model.addAttribute("synopsis", resultSet.getString("Synopsis"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        model.addAttribute("isbn", isbn);
        model.addAttribute("status", 2);
        return("bookupdate");
    }
    @GetMapping("/update")
    public String update(HttpServletRequest request, Model model) throws SQLException{
        int isbn = Integer.parseInt(request.getParameter("isbn"));
        String bookName = request.getParameter("book");
        String authorName = request.getParameter("author");
        String category = request.getParameter("category");
        int noOfCopies = Integer.parseInt(request.getParameter("copies"));
        String publisherName = request.getParameter("publisher");
        Year publishedYear = Year.parse(request.getParameter("published-year"));
        String synopsis = request.getParameter("bookSynopsis");
        dbController controller = new dbController();
        Books books = new Books(isbn, bookName, authorName, category, noOfCopies, publisherName, publishedYear, synopsis);
        if(controller.updateBooks(books) == 1){
            model.addAttribute("status", 1);
        }
        else{
            model.addAttribute("status", 0);
        }
        model.addAttribute("isbn", isbn);
        return("bookupdate");
    }
    @GetMapping("/delete")
    public String delete(HttpServletRequest request, Model model){
        int isbn = Integer.parseInt(request.getParameter("isbn"));
        dbController controller = new dbController();
        try {
            controller.deleteBook(isbn);
            model.addAttribute("isbn", isbn);
            return("deleted");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return("bookSearch");
    }
    @GetMapping("/updateUser")
    public String getUserInfo(HttpServletRequest request, Model model){
        String email = request.getParameter("Email");
        dbController controller = new dbController();
        ResultSet resultSet = controller.getUserData(email);
        try {
            while(resultSet.next()){
                model.addAttribute("username", resultSet.getString("UserName"));
                model.addAttribute("passOne", resultSet.getString("Password"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        model.addAttribute("Email", email );
        model.addAttribute("status", 2);
        return("userProfile");
    }

    @GetMapping("/userInfo")
    public String updateInfo(HttpServletRequest request, Model model)throws SQLException{
        String username = request.getParameter("username");
        String email = request.getParameter("Email");
        String password = request.getParameter("passOne");
        String newPassword = request.getParameter("passTwo");
        dbController controller = new dbController();
        Users users = new Users(username, email, password, newPassword);
        if(controller.profileUpdate(users)==1){
            model.addAttribute("status",1);
        }
        else{
            model.addAttribute("status",0);
        }
        return ("userProfile");
    }

}
