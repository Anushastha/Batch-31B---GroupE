package com.shelfcontrol.shelfcontrol.Controller;

import java.net.http.HttpRequest;
import java.sql.SQLException;
import java.time.Year;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.mysql.cj.jdbc.Blob;
import com.shelfcontrol.shelfcontrol.Methods.Method;
import com.shelfcontrol.shelfcontrol.Models.Users;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


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
    
}
