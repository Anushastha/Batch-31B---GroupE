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
    <div class="header">
      <div class="header-container">
        <div class="logo">
          <div class="logo-container">
            <img id="logo" src="template/images/logo2.png" alt="logo" height="60px" />
          </div>
        </div>
        <div class="form">
          <div class="form-container">
            <div class="search">
              <div class="search-bar-container">
                <input
                  class="search-bar-input"
                  type="text"
                  name="bookName"
                  id="book"
                  placeholder="Search for book title, author, publisher or users"
                />
              </div>
              <div class="Genre-container">
                <select name="genre" id="genre">
                  <option value="horror">Horror</option>
                  <option value="classic">Classic</option>
                  <option value="fiction">Fiction</option>
                  <option value="thriller">Thriller</option>
                </select>
              </div>
            </div>
          </div>
        </div>
        <div class="nav-right">
          <div class="notifications">
            <div class="bell-icon" id="bell-icon">
              <img src="template/images/icons/bell.png" alt="" height="30px" />
            </div>
          </div>
          <div class="account">
            <div class="account-container">
              <div class="profile-picture">
                <div class="profile-picture-container">
                  <div id="profile-icon">AD</div>
                </div>
              </div>
              <div class="profile-info">
                <div class="profile-name">User Name</div>
                <div class="profile-type">Student</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </header>
  <body>
    <div class="body">
      <div class="body-container">
        <div class="navigation">
          <div class="navigation-container">
            <div class="line"></div>
            <div class="nav-hover">
              <div class="nav-item">
                <div class="nav-icon">
                  <img
                    src="template/images/icons/books.png"
                    alt="books"
                    height="34px"
                  />
                </div>
                Books
              </div>
            </div>
            <div class="line"></div>
            <div class="nav-hover">
              <div class="nav-item">
                <div class="nav-icon">
                  <img
                    src="template/images/icons/borrows.png"
                    alt="borrows"
                    height="32px"
                  />
                </div>
                Borrows
              </div>
            </div>
            <div class="line"></div>
            <div class="nav-hover">
              <div class="nav-item">
                <div class="nav-icon">
                  <img
                    src="template/images/icons/reservations.png"
                    alt="reservation"
                    height="30px"
                  />
                </div>
                Reservations
              </div>
            </div>
            <div class="line"></div>
            <div class="nav-hover">
              <div class="nav-item">
                <div class="nav-icon">
                  <img
                    src="template/images/icons/subscriptions.png"
                    alt="subscriptions"
                    height="30px"
                  />
                </div>
                Subscriptions
              </div>
            </div>
            <div class="line"></div>
            <div class="nav-hover">
              <div class="nav-item">
                <div class="nav-icon">
                  <img
                    src="template/images/icons/favourites.png"
                    alt="favourites"
                    height="30px"
                  />
                </div>
                Favourites
              </div>
            </div>
            <div class="line"></div>
            <div class="nav-hover">
              <div class="nav-item">
                <div class="nav-icon">
                  <img src="template/images/icons/faqs.png" alt="faqs" height="30px" />
                </div>
                FAQs
              </div>
            </div>
            <div class="line"></div>
            <div id="bottom" class="line"></div>
            <div class="nav-hover">
              <div id="logout" class="nav-item">
                <div class="nav-icon">
                  <img
                    src="template/images/icons/logout.png"
                    alt="logout"
                    height="30px"
                  />
                </div>
                <div id="logout-text">Log Out</div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <form action="/userInfo"></form>
      <div class="user-page">
        <div class="user-page-container">
          <div class="user-page-left">
            <div class="user-page-left-container">
              <div class="account-info">
                <div class="account-info-container">
                  <div class="profile">
                    <div class="profile-container">
                      <div id="profile-name-icon">UN</div>
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
                <button id="delete-btn">Delete Account</button>
              </div>
            </div>
          </div>
          <div class="divide-line"></div>
          <div class="user-page-right">
            <div class="user-page-right-container">
              <div id="personal-info">Personal Information              
                <div class="personal-container">
                  <input type="text" maxlength="35" name="username" id="username">
                  <div id="name">| Name</div>
                </div>
              </div>
              <div id="contact">Contact Information
                <div class="contact-container">
                  <input type="text" maxlength="35" name="Email" id="Email">
                  <div id="email">| Email</div>
                </div>
              </div>
              <div id="password">Password Management
                <div class="passwordOne">
                  <input type="password" maxlength="10" name="passOne" id="passOne">
                  <div id="old-pass">| Old Password</div>
                </div>
                <div class="passwordTwo">
                  <input type="password" maxlength="10" name="passTwo" id="passTwo">
                  <div id="new-pass">| New Password</div>
                </div>
              </div>
              <div class="change-btn-area">
                <button id="change-btn">Change</button>
              </div>
              
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>