<!DOCTYPE html>
<%@ page import="java.util.*" %> <%@ page
import="com.shelfcontrol.shelfcontrol.Models.search" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/bookSearch.css" />
    <title>Books Search</title>
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
                <div class="profile-name">Admin Name</div>
                <div class="profile-type">Librarian</div>
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

        <div class="search-books">
          <div class="search-books-container">
            <div class="searched-book-name" id="search-title">
              Search Results for ${search}
            </div>
            <script>
              var searchTitle = document.getElementById("search-title");
              if ("${status}" != 1) {
                searchTitle.innerHTML = "No Books Named ${search} found";
                searchTitle.style.color = "Red";
              }
            </script>
            <c:forEach var="res" items="${result}">
              <div class="book-card">
                <div class="book-card-container">
                  <div class="book-ind">
                    <div class="book-img">
                      <img
                        id="book-icon"
                        src= <c:out value="/images/books/${res.isbn}.png"/>
                        value="/images/books/${res.isbn}.png"
                        height="150px"
                        alt="book image"
                      />
                    </div>

                    <div class="card-content">
                      <div class="card-title">
                        <c:out value="${res.bookName}" />
                      </div>
                      <div class="card-author">
                        <c:out value="${res.authorName}" />
                      </div>
                      <div class="card-rating">3.5/5</div>
                    </div>
                  </div>

                  <div class="buttons">
                    <div class="buttons-container">
                      <form action="/updatePage">
                        <div class="update-button">
                          <input name = "isbn" hidden value= <c:out value="${res.isbn}" />>
                          <button class="update-button-container">
                            Update
                          </button>
                        </div>
                      </form>
                      <form action="/deletePage">
                      <div class="delete-button">
                        <div class="delete-button-container">Delete</div>
                      </div>
                    </form>
                    </div>
                  </div>
                </div>
              </div>
            </c:forEach>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
