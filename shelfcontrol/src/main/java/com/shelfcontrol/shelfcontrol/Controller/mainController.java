package com.shelfcontrol.shelfcontrol.Controller;

import java.net.http.HttpRequest;
import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.web.service.annotation.GetExchange;

import com.shelfcontrol.shelfcontrol.Models.Users;

import jakarta.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class mainController {
    
    @GetMapping("/register")
    public String getRegister() {
        return "register.html";
    }
    @GetMapping({"/login","/",""})
    public String getLogin(){
        return "/login.html";
    }
    @GetMapping({"/resetPassword"})
    public String getForgotPassword(){
        return "resetPassword.html";
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
            return("/login.html");
        }
        else{
            return("register.html");
        }
        
    }
    @GetMapping("/auth")
    public String getLogin(HttpServletRequest request) throws SQLException{
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        dbController controller = new dbController();
        if(controller.login(email, password)){
            return "register.html";
        }
        else return "login.html";
    }
    
}
