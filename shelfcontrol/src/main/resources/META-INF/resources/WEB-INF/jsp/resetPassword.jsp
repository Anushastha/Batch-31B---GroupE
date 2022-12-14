<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Forgot Password</title>
    <link rel="stylesheet" href="/css/resetPassword.css">
  </head>
  <body>
    <div class="forgot-password">
      <div class="forgot-password-container">
        <div class="logo">
          <div class="logo-container">
            <img src="/images/logo.png" alt="logo" height="100" />
          </div>
        </div>
        <div class="reset-password-form">
          <div class="reset-password-form-container">
            <div class="heading">
              <section id="password-heading">Forgot Password</section>
            </div>
            <form action="/show">
              <div class="form">
                <div class="form-container">
                  <div class="email">
                    <div class="email-container">
                      <label for="email">Email Address</label>
                      <br />
                      <input
                        type="email"
                        name="emailAddress"
                        id="email"
                        required
                        placeholder="user@mail.com"
                      />
                    </div>
                  </div>
                  <div class="password">
                    <div class="password-container">
                      <label for="password">Password</label>
                      <br />
                      <input
                        type="password"
                        name="password"
                        id="password"
                        required
                        placeholder=***********
                      />
                    </div>
                  </div>
                  <div class="confirm-password">
                    <div class="confirm-password-container">
                      <label for="confirmPassword">Confirm Password</label>
                      <br />
                      <input
                        type="password"
                        name="confirmPassword"
                        id="confirmPassword"
                        required
                        placeholder=***********
                        />
                    </div>
                  </div>
                  <div class="reset-button">
                    <div class="reset-button-container">
                      <button action="submit" class="reset">Reset Password</button>
                    </div>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
