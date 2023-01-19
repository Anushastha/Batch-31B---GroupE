<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="booksynopsis.css" />

    <!-- for favourite button -->
    <script
      src="https://kit.fontawesome.com/f6dcf461c1.js"
      crossorigin="anonymous"
    ></script>

    <title>Book Synopsis</title>
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
      </div>
      <div class="main">
        <div class="info-section">
          <div class="image-container">
            <div class="image">
              <img
                src="images/books/${isbn}.png"
                alt="image"
                width="200px"
                height="270px"
              />
            </div>
          </div>
          <div class="info-container">
            <div class="top">
              <div class="title">
                ${bookName}
                <div class="favourite">
                  <button onclick="Toggle1()" id="favbtn" class="btn">
                    <i class="fas fa-heart"></i>
                  </button>
                </div>
              </div>
            </div>
            <div class="author">${authorName}</div>
            <div class="date">${publishedYear}</div>
            <div class="ratings">4/5</div>
          </div>
        </div>
        <%String action = (String) request.getAttribute("action");
          String text = "Book Now";
            if(action.equals("/reserve")){
              text = "Reserve Now";
            }
            else{

            }
        %>
        <div class="buttons">
          <form id = "form" action="${action}">
            <div class="booknow">
                <input value="${isbn}" name="isbn" hidden>
              <button id="booknow-btn"><%out.print(text);%></button>
            </div>
          </form>
          <div class="preview">
            <button id="preview-btn">Preview</button>
          </div>
        </div>
        <div class="bottom-section">
          <div class="information">
            <p>${synopsis}</p>
          </div>
        </div>
      </div>
    </div>
  </body>
  <script>
    // Favourite Button
    var btn = document.getElementById("favbtn");
    var form = document.getElementById("form");
    
    function Toggle1() {
      if (btn.style.color == "gold") {
        btn.style.color = "grey";
      } else {
        btn.style.color = "gold";
      }
    }
  </script>
</html>
