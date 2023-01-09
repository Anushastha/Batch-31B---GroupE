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
    <jsp:include page="adminTopBar.jsp" />
  </header>
  <body>
    <div class="body">
      <div class="body-container">
        <div class="navigation">
          <div class="navigation-contianer">
            <jsp:include page="adminNavBar.jsp" />
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
                      <form action="/delete">
                        <div class="delete-button">
                         <input name = "isbn" hidden value= <c:out value="${res.isbn}" />>
                         <button class="delete-button-container">Delete</button>
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
