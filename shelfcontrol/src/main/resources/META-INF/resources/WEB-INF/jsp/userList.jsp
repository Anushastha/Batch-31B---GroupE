<!DOCTYPE html>
<%@ page import="java.util.*" %> <%@ page
import="com.shelfcontrol.shelfcontrol.Models.Users" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="userList.css" />
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
              <div class="pageTitle">Users</div>
            </div>
            <div class="users-table-container">
              <div class="user-table-column-head">
                <div class="MemberId">Member ID</div>
                <div class="MemberName">Member Name</div>
                <div class="AccountType">Account Type</div>
                <div class="NumofBooks">Number of Books</div>
                <div class="action">Action</div>
              </div>
              <div class="tableLine"></div>
              <c:forEach var="users" items="${result}">
                <div class="user-row">
                  <div class="user-row-container">
                    <div class="ind MemberId">
                      <c:out value="${users.userId}" />
                    </div>
                    <div class="ind MemberName">
                      <c:out value="${users.username}" />
                    </div>
                    <div class="ind AccountType">
                      <script>
                        if (<c:out value="${users.subscribed}" /> == 1) {
                          document.write("Subscribed");
                        } else {
                          document.write("Basic");
                        }
                      </script>
                    </div>
                    <div class="ind NumofBooks">
                      <c:out value="${users.booksRead}" />
                    </div>
                    <div class="ind action">
                      <button class="Notify" id="Notify-green">Notify</button>
                    </div>
                  </div>
                </div>
              </c:forEach>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>