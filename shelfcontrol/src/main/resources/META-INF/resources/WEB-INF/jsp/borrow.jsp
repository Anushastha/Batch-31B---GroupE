<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/borrow.css" />
    <title>Borrow</title>
  </head>
  <header>
    <div class="header">
      <div class="header-container">
        <div class="logo">
          <div class="logo-container">
            <img id="logo" src="/template/images/logo2.png" alt="logo" height="60px" />
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
              <img src="/template/images/icons/bell.png" alt="" height="30px" />
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
                    src="/template/images/icons/books.png"
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
                    src="/template/images/icons/borrows.png"
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
                    src="/template/images/icons/reservations.png"
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
                    src="/template/images/icons/subscriptions.png"
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
                    src="/template/images/icons/favourites.png"
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
                  <img src="/template/images/icons/faqs.png" alt="faqs" height="30px" />
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
                    src="/template/images/icons/logout.png"
                    alt="logout"
                    height="30px"
                  />
                </div>
                <div id="logout-text">Log Out</div>
              </div>
            </div>
          </div>
        </div>
        <div class="main-body">
          <div class="main-body-container">
            <div class="borrowed-books">
              <div class="borrowed-books-container">
                <div class="borrowed-book-head">Borrowed Books</div>
                <div class="borrowed-books-table">
                  <div class="borrowed-books-table-container">
                    <div class="borrowed-list-head-title">
                      <div class="ind Book-Id">Book ID</div>
                      <div class="ind Book-Name">Book Name</div>
                      <div class="ind Borrowed-Date">Borrowed Date</div>
                      <div class="ind Due-Date">Due Date</div>
                      <div class="ind Status">Status</div>
                      <div class="ind Action">Action</div>
                    </div>
                    <div class="table-line"></div>
                    <div class="borrow-list-row">
                      <div class="borrow-list-row-container">
                        <div class="ind Book-Id">19888</div>
                        <div class="ind Book-Name">To Paradise</div>
                        <div class="ind Borrowed-Date">
                          <a id="borrow-date">20-09-2022</a>
                        </div>
                        <div class="ind Due-Date">
                          <a id="due-date">27-09-2022</a>
                        </div>
                        <div class="ind Status"><a id="status">4 Days</a></div>
                        <div class="ind Action">
                          <button class="notify" id="notify-green">
                            Notify
                          </button>
                        </div>
                      </div>
                    </div>
                    <div class="borrow-list-row">
                      <div class="borrow-list-row-container">
                        <div class="ind Book-Id">19888</div>
                        <div class="ind Book-Name">To Paradise</div>
                        <div class="ind Borrowed-Date">
                          <a id="borrow-date">20-09-2022</a>
                        </div>
                        <div class="ind Due-Date">
                          <a id="due-date">27-09-2022</a>
                        </div>
                        <div class="ind Status"><a id="status">4 Days</a></div>
                        <div class="ind Action">
                          <button class="notify" id="notify-green">
                            Notify
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="returned-books">
              <div class="returned-books-container">
                <div class="returned-book-head">Returned Books</div>
                <div class="returned-books-table">
                  <div class="returned-books-table-container">
                    <div class="returned-list-head-title">
                      <div class="ind Book-Id">Book ID</div>
                      <div class="ind Book-Name">Book Name</div>
                      <div class="ind Borrowed-Date">Borrowed Date</div>
                      <div class="ind Due-Date">Due Date</div>
                    </div>
                    <div class="table-line"></div>
                    <div class="returned-list-row">
                      <div class="returned-list-row-container">
                        <div class="ind Book-Id">19888</div>
                        <div class="ind Book-Name">To Paradise</div>
                        <div class="ind Borrowed-Date">
                          <a id="borrow-date">20-09-2022</a>
                        </div>
                        <div class="ind Due-Date">
                          <a id="due-date">27-09-2022</a>
                        </div>
                      </div>
                    </div>
                    <div class="returned-list-row">
                      <div class="returned-list-row-container">
                        <div class="ind Book-Id">19888</div>
                        <div class="ind Book-Name">To Paradise</div>
                        <div class="ind Borrowed-Date">
                          <a id="borrow-date">20-09-2022</a>
                        </div>
                        <div class="ind Due-Date">
                          <a id="due-date">27-09-2022</a>
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
    </div>
  </body>
</html>
