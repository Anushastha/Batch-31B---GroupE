package com.shelfcontrol.shelfcontrol.Controller;

import com.shelfcontrol.shelfcontrol.Methods.Method;
import com.shelfcontrol.shelfcontrol.Methods.storeImage;
import com.shelfcontrol.shelfcontrol.Models.Books;
import com.shelfcontrol.shelfcontrol.Models.Users;
import com.shelfcontrol.shelfcontrol.Models.search;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.Year;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

    @GetMapping({ "/login", "/", "" })
    public String getLogin(Model model) {
        model.addAttribute("status", true);
        return "login";
    }

    @GetMapping({ "/resetPassword" })
    public String getForgotPassword() {
        return "resetPassword";
    }
    @GetMapping({"/adminDash"})
    public String getadminDash(){
        return "adminDash";
    }

    @GetMapping({ "/bookupload" })
    public String getBookUpload() {
        return "bookupload";
    }

    @GetMapping({ "/landing" })
    public String getLanding() {
        return "landing";
    }

    @GetMapping({ "/aboutus" })
    public String getaboutus() {
        return "aboutus";
    }

    @GetMapping({ "/contact" })
    public String getcontact() {
        return "contact";
    }

    @GetMapping({ "/faqs" })
    public String getfaqs() {
        return "faqs";
    }

    @GetMapping({ "/userDash" })
    public String getuserDash() {
        return "userDash";
    }

    @GetMapping({ "/userProfile" })
    public String getuserProfile() {
        return "userProfile";
    }

    @GetMapping({ "/resetPasssword" })
    public String getresetPassword() {
        return "resetPassword";
    }

    @GetMapping({ "/subscription" })
    public String getsubscrition() {
        return "subscription";
    }

    @GetMapping({ "/subscriptionForm" })
    public String getsubscriptionForm() {
        return "subscriptionForm";
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate();
        return "login";
    }


      @GetMapping("/registerUser")
    public String registerUser(HttpServletRequest request) throws SQLException {
        dbController controller = new dbController();
        String userName = request.getParameter("username");
        String email = request.getParameter("emailAddress");
        String password = request.getParameter("password");
        String accountType = "Student";
        int subscribed = 0;
        int booksRead = 0;
        String theme = "";

        Users users = new Users(userName, email, password, subscribed, booksRead, theme, accountType);
        if (controller.register(users) == 1) {
            return ("login");
        } else {
            return ("register");
        }

    }

 @GetMapping("/auth")
    public String getLogin(HttpServletRequest request, Model model, ServletResponse response) throws SQLException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String username = "";
        String fChar = "";
        String accountType = "";
        dbController controller = new dbController();
        Method method = new Method();
        if (controller.login(email, password)) {
            username = controller.getUsername(email);
            accountType = controller.getType(email);
            fChar = method.firstCharacter(username);
            model.addAttribute("Name", username);
            model.addAttribute("password", password);
            model.addAttribute("ProfileIcon", fChar);
            model.addAttribute("Type", accountType);
            HttpSession session = request.getSession();
            session.setAttribute("user", username);
            session.setAttribute("type", accountType);
            session.setAttribute("firstname", fChar);
            session.setAttribute("password", password);
            session.setAttribute("userId", controller.getUserId(email));
            session.setAttribute("email", email);
            if (accountType.equals("Admin")) {
                return "bookupload";
            }
            return "userDash";
        }

        else {
            model.addAttribute("status", false);
            return "login";
        }
    }

    @PostMapping(value = "/upload", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public String uploadBook(HttpServletRequest request, @RequestPart(name = "thumbnail") MultipartFile thumbnail,
            @RequestPart(name = "preview") MultipartFile preview,
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
                    return ("adminDash");
                } else {
                    return ("bookupload");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
            return ("bookupload");
        } else {
            return ("bookupload");
        }
    }
   @GetMapping("/SearchBooks")
    public String searchBooks(HttpServletRequest request, ServletResponse response, Model model)
            throws SQLException, ServletException, IOException {
        dbController controller = new dbController();
        String search = request.getParameter("bookName");
        String category = request.getParameter("genre");
        List<search> result = new ArrayList<>();
        result = controller.bookData(search, category);
        if (result.isEmpty()) {
            model.addAttribute("status", 0);
        } else {
            model.addAttribute("status", 1);
        }
        model.addAttribute("search", search);
        model.addAttribute("result", result);
        request.setAttribute("result", result);
        if (request.getSession().getAttribute("type").equals("Admin")) {
            return ("bookSearch");
        } else {
            return ("bookSearchUser");
        }
    }

    @GetMapping("/updatePage")
    public String getUpdatePage(HttpServletRequest request, Model model) {
        String isbn = request.getParameter("isbn");
        dbController controller = new dbController();
        ResultSet resultSet = controller.getBookUpdateData(isbn);
        try {
            while (resultSet.next()) {
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
        return ("bookupdate");
    }
      @GetMapping("/update")
    public String update(HttpServletRequest request, Model model) throws SQLException {
        int isbn = Integer.parseInt(request.getParameter("isbn"));
        String bookName = request.getParameter("book");
        String authorName = request.getParameter("author");
        String category = request.getParameter("category");
        int noOfCopies = Integer.parseInt(request.getParameter("copies"));
        String publisherName = request.getParameter("publisher");
        Year publishedYear = Year.parse(request.getParameter("published-year"));
        String synopsis = request.getParameter("bookSynopsis");
        dbController controller = new dbController();
        Books books = new Books(isbn, bookName, authorName, category, noOfCopies, publisherName, publishedYear,
                synopsis);
        if (controller.updateBooks(books) == 1) {
            model.addAttribute("status", 1);
        } else {
            model.addAttribute("status", 0);
        }
        model.addAttribute("isbn", isbn);
        return ("bookupdate");
    }

    @GetMapping("/delete")
    public String delete(HttpServletRequest request) {
        int isbn = Integer.parseInt(request.getParameter("isbn"));
        dbController controller = new dbController();
        try {
            controller.deleteBook(isbn);
            return ("bookupdate");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ("bookSearch");
    }


    @GetMapping("/deleteAccount")
    public String deleteAcc(HttpServletRequest request) throws SQLException {
        HttpSession session = request.getSession();
        Integer userID = Integer.parseInt(String.valueOf(session.getAttribute("userId")));
        dbController controller = new dbController();
        if (controller.deleteAccount(userID) != 0) {
            return ("login");
        } else {
            return ("userProfile");
        }
    }

    @GetMapping("/updateUser")
    public String getUserInfo(HttpServletRequest request, Model model) {
        String email = request.getParameter("Email");
        dbController controller = new dbController();
        ResultSet resultSet = controller.getUserData(email);
        try {
            while (resultSet.next()) {
                model.addAttribute("username", resultSet.getString("UserName"));
                model.addAttribute("passOne", resultSet.getString("Password"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        model.addAttribute("Email", email);
        model.addAttribute("status", 2);
        return ("userProfile");
    }

    @GetMapping("/userInfo")
    public String updateInfo(HttpServletRequest request, Model model)throws SQLException{
        HttpSession session = request.getSession();
        String sessionEmail = String.valueOf(session.getAttribute("email"));
        String username = request.getParameter("username");
        String email = request.getParameter("Email");
        String password = request.getParameter("passOne");
        String newPassword = request.getParameter("passTwo");
        dbController controller = new dbController();
        Users users = new Users(username, email, password, newPassword);

        if(controller.profileUpdate(users, sessionEmail)==1){
            model.addAttribute("status",1);
            session.setAttribute("user", username);
            session.setAttribute("password", newPassword);
    }
        else{
            model.addAttribute("status",0);
        }
        return ("userProfile");
    }

    @GetMapping("/getEmail")
    public String getEmail(HttpServletRequest request, Model model){
        String email = request.getParameter("emailAddress");
        dbController controller = new dbController();
        ResultSet resultSet = controller.getAccType(email);
        try {
            while(resultSet.next()){
                model.addAttribute("emailAddress", resultSet.getString("Email"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        model.addAttribute("emailAddress", email );
        model.addAttribute("status", 1);
        return("subscriptionForm");
    }
    @GetMapping("/updateType")
    public String updateType(HttpServletRequest request, Model model) throws SQLException{
        String email = request.getParameter("emailAddress");
        int months = Integer.parseInt(request.getParameter("months"));
        dbController controller = new dbController();
        Users user = new Users(email);
        if(controller.typeUpdate(user) == 1){
            model.addAttribute("status", 1);;
            model.addAttribute("months", months);
            return "bookupload";
        } else {
            model.addAttribute("status", 0);
        }
        return "userDash";
    }

    // resetpassword
    @GetMapping("/show")
    public String resetPass(HttpServletRequest request, Model model) throws SQLException {
        String email = request.getParameter("emailAddress");
        String password = request.getParameter("password");
        String newPassword = request.getParameter("confirmPassword");
        dbController controller = new dbController();
        Users users = new Users(email, password, newPassword);
        if (controller.resetPassword(users) == 1) {
            model.addAttribute("status", 1);
        } else {
            model.addAttribute("status", 0);
        }
        return ("login");
    }

    @GetMapping("/booksynopsis")
    public String bookSynopsis(HttpServletRequest request, Model model) throws SQLException {
        String isbn = request.getParameter("isbn");
        String action = "";
        dbController controller = new dbController();
        ResultSet result = controller.getBookUpdateData(isbn);
        while (result.next()) {
            model.addAttribute("bookName", result.getString("BookName"));
            model.addAttribute("authorName", result.getString("AuthorName"));
            model.addAttribute("NoOfCopies", result.getInt("NoOfCopies"));
            model.addAttribute("publishedYear", result.getString("PublishedYear"));
            model.addAttribute("isbn", isbn);
            model.addAttribute("synopsis", result.getString("Synopsis"));
            if (result.getInt("NoOfCopies") != 0) {
                action = "/borrow";
            } else {
                action = "/reserve";
            }
            model.addAttribute("action", action);
        }

        return ("booksynopsis");
    }

     @GetMapping("/borrow")
    public String borrowBook(HttpServletRequest request, Model model) throws NumberFormatException, SQLException {

        dbController controller = new dbController();
        // Integer bookID =
        // controller.getBookID(Integer.parseInt(request.getParameter("isbn")));
        Integer isbn = Integer.parseInt(request.getParameter("isbn"));
        HttpSession session = request.getSession();
        Integer userID = Integer.parseInt(String.valueOf(session.getAttribute("userId")));
        Integer status = controller.Borrow(userID, isbn);
        if (status == 1) {
            model.addAttribute("result", controller.getBorrows(userID));
            return ("borrow");
        } else {
            return ("/");
        }

    }

    @GetMapping("/reserve")
    public String reserveBook(HttpServletRequest request, Model model) throws NumberFormatException, SQLException {
        Integer isbn = Integer.parseInt(request.getParameter("isbn"));
        HttpSession session = request.getSession();
        Integer userID = Integer.parseInt(String.valueOf(session.getAttribute("userId")));
        dbController controller = new dbController();
        Integer status = controller.Reserve(userID, isbn);
        if (status == 1) {
            model.addAttribute("result", controller.getReservations(userID));
            return ("reservations");
        }
        return ("/");
    }
  @GetMapping("/getReservation")
    public String getReservation(HttpServletRequest request, Model model){
        dbController controller = new dbController();
        HttpSession session = request.getSession();
        Integer userID = Integer.parseInt(String.valueOf(session.getAttribute("userId")));
        model.addAttribute("result", controller.getReservations(userID));
        return ("reservations");
    }

    @GetMapping("/reservepage")
    public String getReservePage(Model model) {
        dbController controller = new dbController();
        List<Books> bookResults = new ArrayList<>();
        bookResults = controller.getBooks();
        model.addAttribute("result", bookResults);
        return "reservationsAdmin";
    }

    @GetMapping("/deleteReserve")
    public String deleteReservation(HttpServletRequest request) throws SQLException {
        int isbn = Integer.parseInt(request.getParameter("isbn"));
        dbController controller = new dbController();
        try {
            controller.deleteReservation(isbn);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ("reservations");
    }

    @GetMapping("/viewBookReservations")
    public String viewBookReservation(HttpServletRequest request, Model model) {
        Integer isbn = Integer.parseInt(request.getParameter("isbn"));
        dbController controller = new dbController();
        List<Users> result = new ArrayList<>();
        result = controller.getReservationByBook(isbn);
        System.out.println(result);
        model.addAttribute("result", result);
        return "bookReservationList";
    }
    @GetMapping("/users")
    public String User(Model model) throws SQLException {
        dbController controller = new dbController();
        List<Users> result = new ArrayList<>();
        result = controller.userData();
        model.addAttribute("result", result);
        return ("userList");
    }
    @GetMapping("notification")
    public String notfication(HttpServletRequest request, Model model){
        dbController controller = new dbController();
        String message = request.getParameter("message");
        HttpSession session = request.getSession();
        Integer senderID = Integer.parseInt(String.valueOf(session.getAttribute("userID")));
        Integer recieverID = Integer.parseInt(request.getParameter("reciever"));
        controller.notification(message,senderID, recieverID);
        return "Notification";
    }
}
