package com.shelfcontrol.shelfcontrol.Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.time.Year;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.shelfcontrol.shelfcontrol.Methods.Method;
import com.shelfcontrol.shelfcontrol.Methods.storeImage;
import com.shelfcontrol.shelfcontrol.Models.Books;
import com.shelfcontrol.shelfcontrol.Models.Users;

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
            return "bookupload";
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
}
