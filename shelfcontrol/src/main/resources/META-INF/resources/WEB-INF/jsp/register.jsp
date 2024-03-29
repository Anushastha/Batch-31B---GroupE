<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/register.css" />
    <title>Register</title>
  </head>
  <body>
    <div class="register-page">
      <div class="register-page-container">
        <div class="logo">
          <div class="logo-container">
            <img src="/template/images/logo.png" alt="logo" height="100" />
          </div>
        </div>
        <div class="register-form">
          <div class="register-form-container">
            <div class="headings">
              <section id="top-heading">Create your account</section>
              <section id="bottom-heading">Lorem ipsum dolor sit amet</section>
            </div>
            <form action="/registerUser">
            <div class="form-container">
              <div class="form-left">
                <div class="form-left-container">
                  <div class="username">
                    <div class="username-container">
                      <label for="username">Username</label>
                      <br />
                      <input
                        type="text"
                        name="username"
                        id="username"
                        required
                      />
                    </div>
                  </div>
                  <div class="email">
                    <div class="email-container" id="email-container">
                      <label for="email">Email Address</label>
                      <br />
                      <input
                        type="email"
                        name="emailAddress"
                        id="email"
                        required
                      />
                    </div>
                  </div>
                  <div id="match-email" class="match-email">
                    *Invalid email.
                  </div>
                  <div class="account-type">
                    <div class="account-type-container">
                      <label for="accountType">Account Type</label>
                      <br />
                      <select name="accountType" id="account">
                        <option value="student">Student</option>
                        <option value="student">Organization</option>
                      </select>
                    </div>
                  </div>
                </div>
              </div>
              <div class="line"></div>
              <div class="form-right">
                <div class="form-right-container">
                  <div class="password">
                    <div class="password-container">
                      <label for="password">Password</label>
                      <br />
                      <input
                        type="password"
                        name="password"
                        id="password"
                        required
                      />
                    </div>
                  </div>
                  <div class="confirm-password">
                    <div class="confirm-password-container"id="confirm-password-container">
                      <label for="confirmPassword">Confirm Password</label>
                      <br />
                      <input
                        type="password"
                        name="confirmPassword"
                        id="confirmPassword"
                        required
                      />
                    </div>
                  </div>
                  <div id="match-password" class="match-password">
                    *Passwords Don't Match.
                  </div>
                  <div class="term-conditions">
                    <div class="terms-and-conditions-container">
                      <input
                        type="checkbox"
                        name="termsAndConditions"
                        id="terms-and-conditions"
                        required
                      />
                      <label
                        for="terms-and-conditions"
                        id="terms-and-conditions-text"
                        >I agree to the Terms and Conditions</label
                      >
                    </div>
                  </div>
                  <div class="register-button">
                    <div class="register-button-container">
                      <button action="submit" onclick="ValidateEmail();validation()" class="register">Register</button>
                    </div>
                  </div>
                  <div class="login">
                    <div class="login-container">
                      <section class="login-question-text">
                        Already have an account?
                      </section>
                      <section class="login-text">
                        <a id="login-link" href="/login.html">Sign-in</a>
                      </section>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </form>
          </div>
        </div>
      </div>
    </div>
    <script>
      var password = document.getElementById("password");
      var confirmPassword = document.getElementById("confirmPassword");
      var matchPassword = document.getElementById("match-password");
      var emailContainer = document.getElementById("email-container");
      var email = document.getElementById("email");
      var matchEmail = document.getElementById("match-email");
      var registerButton = document.getElementById("register-button");

      function validation() {
        if (password.value != confirmPassword.value) {
          matchPassword.style.display = "initial";
          password.style.borderBottom = "solid 1px red";
          confirmPassword.style.borderBottom = "solid 1px red";
          ValidateEmail(email);
        }
      }
      function ValidateEmail(mail) {
        if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email.value)) {
          return true;
        }
        emailContainer.style.marginBottom = "0px";
        // matchEmail.style.marginBottom = "20px"
        matchEmail.style.display = "initial";
        return false;
      }

      registerButton.addEventListener("click", validation);
      registerButton.addEventListener("click", ValidateEmail);
    </script>
  </body>
</html>
