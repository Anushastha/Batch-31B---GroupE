<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/bookUpload.css">
    <title>Book Upload</title>
  </head>
  <header>
    <div class="header">
      <div class="header-container">
        <div class="logo">
          <div class="logo-container">
            <img id="logo" src="/template/images/logo2.png" alt="logo" height="60px" />
          </div>
        </div>
        <form action="/SearchBooks" method="get">
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
        </form>
        <div class="nav-right">
          <div class="notifications">
            <div class="bell-icon" id="bell-icon">
              <img src="/template/images/icons/bell.png" alt="" height="30px" />
            </div>
          </div>
          <div class="account">
            <div>
              <a href="userProfile" style="text-decoration: none;">
              </div>
            <div class="account-container">
              <div class="profile-picture">
                <div class="profile-picture-container">
                  <div id="profile-icon">${ProfileIcon}</div>
                </div>
              </div>
              <div class="profile-info">
                <div class="profile-name">${Name}</div>
                <div class="profile-type">${Type}</div>
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
      <div class="body-contianer">
        <div class="navigation">
          <div class="navigation-container">
            <div class="line"></div>
            <div class="nav-hover">
              <div class="nav-item">
                <div class="nav-icon">
                  <img
                    src="/template/images/icons/addBooks.png"
                    alt="add books"
                    height="30px"
                  />
                </div>
                Add Books
              </div>
            </div>
            <div class="line"></div>
            <div class="nav-hover">
              <div class="nav-item">
                <div class="nav-icon">
                  <img
                    src="/template/images/icons/users.png"
                    alt="users"
                    height="30px"
                  />
                </div>
                Users
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
            <div id="bottom" class="line"></div>
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
      <div class="book-upload">
        <div class="book-upload-container">
          <div class="book-upload-form">
            <div class="heading">
              <div class="heading-container">
                <div class="heading-text">Upload Book Form</div>
              </div>
            </div>
            <form action="/upload" method="post" enctype="multipart/form-data">
              <div class="top-form">
                <div class="top-form-left">
                  <div class="top-form-left-container">
                    <div class="isbn">
                      <div class="isbn-container">
                        <label for="isbn">ISBN</label>
                        <br />
                        <input type="text" name="isbn" id="isbn" required />
                      </div>
                    </div>
                    <div class="book-name">
                      <div class="book-name-container">
                        <label for="bookName">Book Name</label>
                        <br />
                        <input type="text" name="book" id="bookName" required />
                      </div>
                    </div>
                    <div class="author-name">
                      <div class="author-name-container">
                        <label for="authorName">Author Name</label>
                        <br />
                        <input
                          type="text"
                          name="author"
                          id="authorName"
                          required
                        />
                      </div>
                    </div>
                    <div class="category">
                      <div class="category-container">
                        <label for="category">Category</label>
                        <br />
                        <select name="category" id="category">
                          <option value="adventure">Adventure</option>
                                  <option value="classics">Classics</option>
                                  <option value="fantasy">Fantasy</option>
                                  <option value="horror">Horror</option>
                                  <option value="poetry">Poetry</option>
                                  <option value="thriller">Thriller</option>
                                  <option value="sciFic">Science Fiction</option>
                                  <option value="selfHelp">Self Help</option>
                                  <option value="essays">Essays</option>
                                  <option value="nonFiction">Non Fiction</option>
                                  <option value="other">Others</option>
                        </select>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="form-line"></div>
                <div class="top-form-right">
                  <div class="top-form-right-container">
                    <div class="no-of-copies">
                      <div class="no-of-copies-container">
                        <label for="noOfCopies">Number of Copies</label>
                        <br />
                        <input
                          type="text"
                          name="copies"
                          id="noOfCopies"
                          required
                        />
                      </div>
                    </div>
                    <div class="publisher-name">
                      <div class="publisher-name-container">
                        <label for="publisherName">Publisher Name</label>
                        <br />
                        <input
                          type="text"
                          name="publisher"
                          id="publisherName"
                          required
                        />
                      </div>
                    </div>
                    <div class="published-year">
                      <div class="published-year-container">
                        <label for="publishedYear">Published Year</label>
                        <br />
                        <input id = "publishedYear" name = "published-year" type="number" min="1900" max="2022" step="1" value="2016" />
                      </div>
                    </div>
                    <div class="preview">
                      <div class="preview-container">
                        <div class="preview-text">Upload Preview</div>
                        <input type="file" name = "preview" id="upload-preview" hidden accept="application/pdf"/>
                        <label id = "select" for="upload-preview">Choose file</label>
                      </div>
                    </div>
                    <div class="icon">
                      <div class="icon-container">
                        <div class="icon-text">Upload Icon</div>
                        <input type="file" name = "thumbnail"id="upload-icon" hidden accept="image/*"/>
                        <label id = "select" for="upload-icon">Choose file</label>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="form-bottom">
                <div class="form-bottom-container">
                  <div class="book-synopsis">
                    <div class="book-synopsis-container">
                      <label class="synopsis-text" for="synopsis">Synopsis</label>
                      <br />
                      <textarea type="text" name="bookSynopsis" id="synopsis" required></textarea>
                    </div>
                  </div>
                </div>
              </div>
              <div class="upload-button">
                <div class="upload-button-container">
                  <button type="submit" id = "upload-button">Upload</button>
                </div>
              </div>
              
            </form>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
