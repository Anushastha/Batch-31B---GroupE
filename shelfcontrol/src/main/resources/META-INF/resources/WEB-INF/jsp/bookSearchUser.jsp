<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="bookSearchUser.css" />
    <title>Search</title>
  </head>
  <header>
    <jsp:include page="userTopBar.jsp" />
  </header>
  <body>
    <div class="body">
      <div class="body-contianer">
        <div class="navigation">
          <div class="navigation-contianer">
            <jsp:include page="userNavBar.jsp" />
          </div>
        </div>
        <div class="search-books">
            <div class="search-books-container">
              <div class="searched-book-name">
                Search Results for Harry Potter
              </div>
              <div class="search-results">
                <div class="book-card">
                  <div class="book-card-container">
                    <div class="book-ind">
                      <div class="book-img">
                        <img
                          id="book-icon"
                          src="template/images/candyHouse.png"
                          alt=""
                          height="150px"
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
    </body>
  </html>