<!DOCTYPE html>
<%@ page import="java.util.*" %> <%@ page
import="com.shelfcontrol.shelfcontrol.Models.Books" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="reservationsAdmin.css">
    <title>User List</title>
  </head>
  <header>
    <jsp:include page="adminTopBar.jsp" />
  </header>
  <body>
    <div class="body">
      <div class="body-contianer">
        <div class="navigation">
          <div class="navigation-contianer">
            <jsp:include page="adminNavBar.jsp" />
          </div>
        </div>
      </div>
    <div class="main-screen">
      <div class="userList">
        <div class="users-container">
          <div class="Title">
            <div class="pageTitle">Reserved Books</div>
          </div>
          <div class="users-table-container">
            <div class="user-table-column-head">
              <div class="Isbn">ISBN</div>
              <div class="BookName">Book Name</div>
              <div class="AuthorName">Author Name</div>
              <div class="PublishedYear">Published Year</div>
              <div class="action">Action</div>
            </div>
            <div class="tableLine"></div>
            <div class="user-row">
             <c:forEach var="res" items="${result}">
              <div class="user-row-container">
                <div class="ind Isbn"><c:out value="${res.isbn}"/></div>
                <div class="ind BookName"><c:out value="${res.bookName}"/></div>
                <div class="ind AuthorName"><c:out value="${res.authorName}"/></div>
                <div class="ind PublishedYear"><c:out value="${res.category}"/></div>
                <form action="/viewBookReservations">
                <div class="ind action">
                    <input name = "isbn" hidden value= <c:out value="${res.isbn}" />>
                    <button class="View" id="Notify-green">
                      View
                    </button>
                  </div>    
                </form>
              </div>
            </c:forEach>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>