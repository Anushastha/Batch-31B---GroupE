<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="template/css/booksynopsis.css" />

    <!-- for favourite button -->
    <script src="https://kit.fontawesome.com/f6dcf461c1.js" crossorigin="anonymous"></script>

    <title>Book Synopsis</title>
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
                  <div id="profile-icon">UN</div>
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
      <div class="main">
        <div class="info-section">
          <div class="image-container">
          <div class="image">
            <img 
              src="template/images/candyHouse.png"
              alt="image"
              width="200px"
              height="270px"
              />
          </div>
        </div>
          <div class="info-container">
            <div class="top">
              <div class="title">
                Harry Potter And The Prizoner Of Azkaban
              </div>
              <div class="favourite">
                <button onclick="Toggle1()" id="favbtn" class="btn"><i class="fas fa-heart"></i></button>
              </div>
            </div>
              <div class="author">
                J.K. Rowling
              </div>
              <div class="date">
                1999
              </div>
              <div class="ratings">
                4/5
              </div>
          </div>
        </div>
          <div class="buttons">
            <div class="booknow">
              <button id="booknow-btn">Book Now</button>
            </div>
            <div class="preview">
              <button id="preview-btn">Preview</button>
            </div>
          </div>
        <div class="bottom-section">
          <div class="information">
            <p>For twelve long years, the dread fortress of Azkaban held an infamous 
              prisoner named Sirius Black. Convicted of killing thirteen people with 
              a single curse, he was said to be the heir apparent to the Dark Lord, 
              Voldemort.Now he has escaped, leaving only two clues as to where he might 
              be headed: Harry Potter's defeat of You-Know-Who was Black's downfall 
              as well. And the Azkaban guards heard Black muttering in his sleep, 
              "He's at Hogwarts . . . he's at Hogwarts."Harry Potter isn't safe, not 
              even within the walls of his magical school, surrounded by his friends.
              Because on top of it all, there may well be a traitor in their midst.
              </p>
          </div>
        </div>
      </div>
    </div>
  </body>
  <script>
    // Favourite Button   
    var btn = document.getElementById('favbtn');
    function Toggle1(){
             if (btn.style.color =="gold") {
                 btn.style.color = "grey"
             }
             else{
                 btn.style.color = "gold"
             }
    }
        </script>
</html>