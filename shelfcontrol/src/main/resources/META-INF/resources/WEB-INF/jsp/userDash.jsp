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
                        <a href="booksynopsis" style="text-decoration: none;">
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
                            <div class="card-rating">4/5</div>
                          </div>
                          </a>
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