<!DOCTYPE html>
<%@ page import="java.util.*" %> <%@ page
import="com.shelfcontrol.shelfcontrol.Models.borrowed" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/borrow.css" />
    <title>Borrow</title>
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
        <div class="main-body">
          <div class="main-body-container">
            <div class="borrowed-books">
              <div class="borrowed-books-container">
                <div class="borrowed-book-head">Borrowed Books</div>
                <div class="borrowed-books-table">
                  <div class="borrowed-books-table-container">
                    <div class="borrowed-list-head-title">
                      <div class="ind Book-Id">ISBN</div>
                      <div class="ind Book-Name">Book Name</div>
                      <div class="ind Borrowed-Date">Borrowed Date</div>
                      <div class="ind Due-Date">Due Date</div>
                      <div class="ind Status">Status</div>
                      <div class="ind Action">Action</div>
                    </div>

                    <c:forEach var="res" items="${result}">
                    <div class="table-line"></div>
                    <div class="borrow-list-row">
                      <div class="borrow-list-row-container">
                        <div class="ind Book-Id"><c:out value="${res.isbn}" /></div>
                        <div class="ind Book-Name"><c:out value="${res.name}" /></div>
                        <div class="ind Borrowed-Date">
                          <a id="borrow-date"><c:out value="${res.borrowed}" /></a>
                        </div>
                        <div class="ind Due-Date">
                          <a id="due-date"><c:out value="${res.duedate}" /></a>
                        </div>
                        <div class="ind Status"><a id="status"><c:out value="${res.status}" /></div>
                        <div class="ind Action">
                          <button class="notify" id="notify-green">
                            Notify
                          </button>
                        </div>
                      </div>
                    </div>

                    </c:forEach>
                  </div>
                </div>
              </div>
            </div>
            <div class="returned-books">
              <div class="returned-books-container">
                <div class="returned-book-head">Returned Books</div>
                <div class="returned-books-table">
                  <div class="returned-books-table-container">
                    <div class="returned-list-head-title">
                      <div class="ind Book-Id">Book ID</div>
                      <div class="ind Book-Name">Book Name</div>
                      <div class="ind Borrowed-Date">Borrowed Date</div>
                      <div class="ind Due-Date">Due Date</div>
                    </div>
                    <div class="table-line"></div>
                    <div class="returned-list-row">
                      <div class="returned-list-row-container">
                        <div class="ind Book-Id">19888</div>
                        <div class="ind Book-Name">To Paradise</div>
                        <div class="ind Borrowed-Date">
                          <a id="borrow-date">20-09-2022</a>
                        </div>
                        <div class="ind Due-Date">
                          <a id="due-date">27-09-2022</a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
