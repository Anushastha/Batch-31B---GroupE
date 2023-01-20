<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="userProfile.css" />
    <title>User Profile</title>
  </head>
  <header>
    <jsp:include page="adminTopBar.jsp" />
  </header>
  <body>
    <div class="body">
      <div class="body-container">
        <div class="navigation">
          <div class="navigation-contianer">
            <jsp:include page="userNavBar.jsp" />
          </div>
        </div>
      </div>
      <% String username=(String)session.getAttribute("user");
      String fchar =(String)session.getAttribute("firstname");
      String email= (String)session.getAttribute("email");
      String password = (String)session.getAttribute("password");%>
      <form action="/userInfo">
      <div class="user-page">
        <div class="user-page-container">
          <div class="user-page-left">
            <div class="user-page-left-container">
              <div class="account-info">
                <div class="account-info-container">
                  <div class="profile">
                    <div class="profile-container">
                      <div id="profile-name-icon"><%out.print(fchar);%></div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="theme-container">
                <div id="tname">Theme Option</div>
                <div class="theme-selector">
                  <select name="theme" id="theme">
                    <option value="light-theme">Light Theme</option>
                    <option value="dark-theme">Dark Theme</option>
                  </select>
                </div>
              </div>
              <div class="delete-btn-area">
                <form action="/deleteAccount">
                  <input name = "email" hidden value= "<%out.print(email);%>">
                  <button id="delete-btn">Delete Account</button>
                </form>
              </div>
            </div>
          </div>
          <div class="divide-line"></div>
          <div class="user-page-right">
            <div class="user-page-right-container">
              <div id="personal-info">Personal Information              
                <div class="personal-container">
                  <input type="text" maxlength="35" name="username" id="username" value="<%out.print(username);%>">
                  <div id="name">| Name</div>
                </div>
              </div>
              <div id="contact">Contact Information
                <div class="contact-container">
                  <input type="text" maxlength="35" name="Email" id="Email" value="<%out.print(email);%>">
                  <div id="email">| Email</div>
                </div>
              </div>
              <div class="password">
                <label for="password" class="passTitle">Password Management</label>
                <div class="passwordOne">
                  <input type="password" maxlength="10" name="passOne" id="passOne" placeholder="Old Password" onchange="red()">
                </div>
                <div id="match-pass" class="match-pass">
                  * Password Incorrect.
                </div>
                <div class="passwordTwo">
                  <input type="password" maxlength="10" name="passTwo" id="passTwo" placeholder="New Password">
                </div>
                <div class="checkbox">
                  <input type="checkbox" name="checkbox" id="checkbox"onclick="showpass()">
                  <label for="checkbox_id" id="text">Show password</label>
                </div>
              </div>
              <div id="match-pass" class="match-pass">
                * Password Incorrect.
              </div>
              <div class="change-btn-area">
                <button id="change-btn">Change</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </form>
    </div>
  </body>
  <script>
    function red(){
    //var status = "${status}";
    var email = document.getElementById("Email")
    var passOne = document.getElementsById("passOne");
    var session = data = '@Session["passOne"]';
    if(session==passOne){
      passOne.style.borderBottom = "solid 1px green"
    }else{
      passOne.style.borderBottom = "solid 1px red"
    }
  }
  
    function showpass() {
      if (passTwo.type === "password" || passOne.type === "password" ) {
        passTwo.type = "text";
        passOne.type = "text";
      } else {
        passTwo.type = "password";
        passOne.type = "password";
      }
      }
  </script>
</html>