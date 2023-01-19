<!DOCTYPE html>
<%@ page import="java.util.*" %> <%@ page
import="com.shelfcontrol.shelfcontrol.Models.reserved" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/reservations.css" />
    <title>Reservations</title>
  </head>
  <header>
    <jsp:include page="userTopBar.jsp" />
  </header>
  <body>
    <div class="body">
      <div class="body-container">
        <div class="navigation">
          <div class="navigation-contianer">
            <jsp:include page="userNavBar.jsp" />
          </div>
        </div>
        <div class="reserved-books">
          <div class="reserved-books-container">
            <div class="reserved-book-name">Your Reservations</div>
            <c:forEach var="res" items="${result}">
                <div class="book-card">
                  <div class="book-card-container">
                    <div class="book-ind">
                      <div class="book-img">
                        <img
                          id="book-icon"
                          src="/template/images/books/${res.isbn}.png"
                          alt=""
                          height="150px"
                        />
                      </div>
                      <div class="card-content">
                        <div class="card-title">
                          <c:out value="${res.name}" />
                        </div>
                        <div class="card-author">
                          <c:out value="${res.authorName}" />
                        </div>
                        <div class="card-rating">3.5/5</div>
                      </div>
                    </div>
                    <form action="/deleteReserve">
                      <input name = "isbn" hidden value= <c:out value="${res.isbn}" />>
                    <div class="buttons">
                      <div class="buttons-container">
                        <div class="remove-button">
                          <button class="remove-button-container">Remove</button>
                        </div>
                      </div>
                    </div>
                  </form>
                  </div>
                </div>
            </c:forEach>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
