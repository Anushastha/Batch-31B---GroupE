<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="template/css/userDash.css" />
    <title>UserDashboard</title>
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
              <div>
                <a href="userProfile.jsp" style="text-decoration: none;">
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
              <div class="books-slider">
                  <div class="slider">
                      <div class="slides">
                          <input type="radio" name="btn" id="rad1">
                          <input type="radio" name="btn" id="rad2">
                          <input type="radio" name="btn" id="rad3">
                          <input type="radio" name="btn" id="rad4">
          
                          <div class="sliding">
                              <img src="template/images/fellow.jpg" alt="">
                          </div>
                          <div class="slide">
                              <img src="template/images/lll.jpg" alt="">
                          </div>
                          <div class="slide">
                              <img src="template/images/loginpage.png" alt="">
                          </div>
                          <div class="slide">
                              <img src="template/images/td.jpg" alt="">
                          </div>
          
                          <div class="manualslide">
                              <label for="rad1" class="m-btn"></label>
                              <label for="rad2" class="m-btn"></label>
                              <label for="rad3" class="m-btn"></label>
                              <label for="rad4" class="m-btn"></label>
                          </div>
                          <div class="autoslide">
                              <div class="auto1"></div>
                              <div class="auto2"></div>
                              <div class="auto3"></div>
                              <div class="auto4"></div>
                          </div>
          
                      </div>
              </div>
              <div class="books">
                <div class="books-container">
                  <div class="books-title">New Arrivals</div>
                  <div class="books-cards">
                   <div class="books-card-container">
                      <div class="card-ind">
                          <div class="card-img">
                            <img
                              id="book-icon"
                              src="template/images/books/liberation.jpg"
                              alt=""
                              height="140px"
                            />
                          </div>
                          <div class="card-content">
                            <div class="card-title">Harry Potter</div>
                            <div class="card-author">J.K Rowling</div>
                            <div class="card-rating">3.5/5</div>
                          </div>
                        </div>
                      <div class="card-ind">
                          <div class="card-img">
                            <img
                              id="book-icon"
                              src="template/images/books/liberation.jpg"
                              alt=""
                              height="140px"
                            />
                          </div>
                          <div class="card-content">
                            <div class="card-title">Harry Potter</div>
                            <div class="card-author">J.K Rowling</div>
                            <div class="card-rating">3.5/5</div>
                          </div>
                        </div>
                      <div class="card-ind">
                          <div class="card-img">
                            <img
                              id="book-icon"
                              src="template/images/books/liberation.jpg"
                              alt=""
                              height="140px"
                            />
                          </div>
                          <div class="card-content">
                            <div class="card-title">Harry Potter</div>
                            <div class="card-author">J.K Rowling</div>
                            <div class="card-rating">3.5/5</div>
                          </div>
                        </div>
                        <div class="card-ind">
                            <div class="card-img">
                              <img
                                id="book-icon"
                                src="template/images/books/liberation.jpg"
                                alt=""
                                height="140px"
                              />
                            </div>
                            <div class="card-content">
                              <div class="card-title">Harry Potter</div>
                              <div class="card-author">J.K Rowling</div>
                              <div class="card-rating">3.5/5</div>
                            </div>
                          </div>
                        <div class="card-ind">
                            <div class="card-img">
                              <img
                                id="book-icon"
                                src="template/images/books/liberation.jpg"
                                alt=""
                                height="140px"
                              />
                            </div>
                            <div class="card-content">
                              <div class="card-title">Harry Potter</div>
                              <div class="card-author">J.K Rowling</div>
                              <div class="card-rating">3.5/5</div>
                            </div>
                          </div>
                        <div class="card-ind">
                            <div class="card-img">
                              <img
                                id="book-icon"
                                  src="template/images/books/liberation.jpg"
                                alt=""
                                height="140px"
                              />
                            </div>
                            <div class="card-content">
                              <div class="card-title">Harry Potter</div>
                              <div class="card-author">J.K Rowling</div>
                              <div class="card-rating">3.5/5</div>
                            </div>
                          </div>
                     </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </body>
    </html>