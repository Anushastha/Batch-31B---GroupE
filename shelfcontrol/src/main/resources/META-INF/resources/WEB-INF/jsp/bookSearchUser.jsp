<!DOCTYPE html>
<%@ page import="java.util.*" %> <%@ page
import="com.shelfcontrol.shelfcontrol.Models.search" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/bookSearchUser.css" />
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
            <div id="searched-book-name">Search Results for ${search}</div>
            <script>
              var searchTitle = document.getElementById("searched-book-name");
              if ("${status}" != 1) {
                searchTitle.innerHTML = "No Books Named ${search} found";
                searchTitle.style.color = "Red";
                searchTitle.style.fontSize = "16px";
              }
            </script>
            <div class="search-results">
              <c:forEach var="res" items="${result}">
                <form id = "form" action="/booksynopsis">
                  <input name = "isbn" hidden value= <c:out value="${res.isbn}" />>
                  <div class="book-card" id = "book-card">
                    <div class="book-card-container">
                      <div class="book-ind">
                        <div class="book-img">
                          <img
                            id="book-icon"
                            src= <c:out value="/template/images/books/${res.isbn}.png"/>
                            value="/images/books/${res.isbn}.png"
                            height="150px" alt="thumbnail" 
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
                          <div class="read-more">
                            <button id = "read-more">Read More</button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </form>
              </c:forEach>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
