<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/css/bookSearchUser.css" />
    <title>Search</title>
  </head>
  <header>
    <div class="header">
      <div class="header-container">
        <div class="logo">
          <div class="logo-container">
            <img id="logo" src="/images/logo2.png" alt="logo" height="60px" />
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
              <img src="/images/icons/bell.png" alt="" height="30px" />
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