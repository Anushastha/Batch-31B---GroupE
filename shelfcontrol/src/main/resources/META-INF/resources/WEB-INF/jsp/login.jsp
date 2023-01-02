<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
    <link rel="stylesheet" href="/login.css" />
  </head>
  <body>
    <div class="body-container">
      <div class="body-left">
        <div class="body-left-container">
          <div class="logo">
            <section class="logo-container">
              <img src="/template/images/logo.png" alt="image not found" height="100" />
            </section>
          </div>
          <div class="form">
            <form action="/auth">
            <div class="form-container">
              <div class="headings">
                <section id="login">Login</section>
                <section id="loren">Lorem ipsum dolor sit amet</section>
              </div>
              <div class="email">
                <div class="email-container">
                  <label for="email">E-mail Address</label>
                  <br />
                  <input
                    type="email"
                    name="email"
                    id="email"
                    autocomplete="on"
                    required
                  />
                </div>
              </div>
              <div class="password">
                <div class="password-container">
                  <div class="password-input">
                    <div class="forgot-password">
                      <div class="forgot-password-label-container">
                        <div>
                          <label for="password">Password</label>
                        </div>
                        <div class="forgot-password-container">
                          <section id="forgot-text">
                            <a href="resetPassword" style="text-decoration: none;">Forgot your Password?</a>
                          </section>
                        </div>
                      </div>
                      <input
                        type="password"
                        name="password"
                        id="password"
                        required
                      />
                    </div>
                  </div>
                </div>
              </div>
              <div id="match-password" class="match-password">
                * Incorrect E-Mail Address Or Password.
              </div>
              <div class="logged-in-container">
                <input type="checkbox" name="logged-In" id="loggedIn" />
                <label id="logged-in-text" for="loggedIn"
                  >Keep me logged in</label
                >
              </div>
              <div class="login-button">
                <div class="login-button-container">
                  <button id="login-button">LOGIN</button>
                </div>
              </div>
              <div class="register">
                <div class="register-container">
                  <div id="register-page">
                    <div id="register-text">Dont have an account?</div>
                    <div>
                      <a href="/register" class="register-page-link">Register</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            </form>
          </div>
        </div>
      </div>
      <div class="body-right">
        <div class="body-right-container">
          <div class="body-right-image-container"></div>
          <div class="welcome">
            <div class="welcome-container">
              <section class="welcome-text-top">Welcome To</section>
              <section class="welcome-text-bottom">Shelf Control</section>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
  
  <script>
    var status = '${status}';
    var email = document.getElementById("email");
    var password = document.getElementById("password");
    var matchPassword = document.getElementById("match-password");

    if(status=="false"){
      email.style.borderBottom = "solid 1px red"
      password.style.borderBottom = "solid 1px red"
      matchPassword.style.display = "initial"

    }
  </script>
</html>
