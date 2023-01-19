<!DOCTYPE html>
<html lang="en">
  <head>
    <link rel="stylesheet" href="/userTopBar.css" />
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
                    <option value="fantasy">Fantasy</option>
                    <option value="scifi">Science Fiction</option>
                    <option value="action">Action & Adventure</option>
                    <option value="mystery">Mystery</option>
                    <option value="romance">Romance</option>
                    <option value="shortstories">Short Story</option>
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
          <% String username=(String)session.getAttribute("user"); String
          accountType = (String)session.getAttribute("type"); String fchar =
          (String)session.getAttribute("firstname"); %>
          <a href="/userProfile" style="text-decoration: none">
            <div class="account">
              <div class="account-container">
                <div class="profile-picture">
                  <div class="profile-picture-container">
                    <div id="profile-icon"><%out.print(fchar);%></div>
                  </div>
                </div>
                <div class="profile-info">
                  <div class="profile-name"><%out.print(username);%></div>
                  <div class="profile-type"><%out.print(accountType);%></div>
                </div>
              </div>
            </div>
          </a>
        </div>
      </div>
    </div>
  </header>
</html>
