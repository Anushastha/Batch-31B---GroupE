<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="template/css/notification.css" />
    <title>Notification</title>
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
              <a href="/notificationPage">

              <div class="bell-icon" id="bell-icon">
                <img src="template/images/icons/bell.png" alt="" height="30px" />
              </div>
            </a>

            </div>
            <div class="account">
              <div>
                <a href="userProfile" style="text-decoration: none;">
              </div>
              <div class="account-container">
                <div class="profile-picture">
                  <div class="profile-picture-container">
                    <div id="profile-icon">UN</div>
                  </div>
                </div>
                <div class="profile-info">
                  <div class="profile-name">User Name</div>
                  <div class="profile-type">Student</div>
                </div>
              </div>
            </a>
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
            <div class="dashboard">
              <div class="dashboard-container">
                </div>
              </div>
            </div>
          </div>
        </body>
      </html>