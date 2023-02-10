<!DOCTYPE html>
<html lang="en">
  <head>
    <link rel="stylesheet" href="/adminNavBar.css">
  </head>
  <nav>
    <div class="naviation-bar">
      <div class="navigation-bar-container">
        <div class="navigation">
          <div class="navigation-container">
            <div class="line"></div>
            <div class="nav-hover">
              <a href="/bookupload" style="text-decoration: none; color: #ffffff;">
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
            </a>
            </div>
            <div class="line"></div>
            <div class="nav-hover">
              <a href="/users" style="text-decoration: none; color: #ffffff;">              
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
            </a>
            </div>
            <div class="line"></div>
            <div class="nav-hover">
              <a href="/reservepage" style="text-decoration: none; color: #ffffff;">
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
            </a>
            </div>
            <div class="line"></div>
            <div class="logout-container">
              <div id="bottom" class="line"></div>
              <div class="nav-hover">
                <div id="logout" class="nav-item">
                  <div class="nav-icon">
                    <img src="/template/images/icons/logout.png" alt="logout" height="30px" />
                  </div>
                  <form action="/logout">
                      <button id="logout-text">Log Out</button>  
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </nav>
</html>
