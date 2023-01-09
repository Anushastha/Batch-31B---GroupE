<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/bookUpdate.css">
    <title>Book Update</title>
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
      <div class="book-upload">
        <div class="book-upload-container">
          <div class="book-upload-form">
            <div class="heading">
              <div class="heading-container">
                <div class="heading-text">Update Book Form</div>
              </div>
            </div>
            <form action="/update">
              <div class="top-form">
                <div class="top-form-left">
                  <div class="top-form-left-container">
                    <div class="isbn">
                      <div class="isbn-container">
                        <label for="isbn">ISBN</label>
                        <br />
                        <input type="text" name="isbn" id="isbn" placeholder= "${isbn}" value = "${isbn}" readonly />
                      </div>
                    </div>
                    <div class="book-name">
                      <div class="book-name-container">
                        <label for="bookName">Book Name</label>
                        <br />
                        <input type="text" name="book" id="bookName" placeholder = "${bookName}" value = "${bookName}" required />
                      </div>
                    </div>
                    <div class="author-name">
                      <div class="author-name-container">
                        <label for="authorName">Author Name</label>
                        <br />
                        <input
                          type="text"
                          name="author"
                          id="authorName"
                          value="${authorName}"
                          placeholder="${authorName}"
                          required
                        />
                      </div>
                    </div>
                    <div class="category">
                      <div class="category-container">
                        <label for="category">Category</label>
                        <br />
                        <select name="category" id="category">
                          <option value="horror">Horror</option>
                          <option value="thriller">Thriller</option>
                        </select>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="form-line"></div>
                <div class="top-form-right">
                  <div class="top-form-right-container">
                    <div class="no-of-copies">
                      <div class="no-of-copies-container">
                        <label for="noOfCopies">Number of Copies</label>
                        <br />
                        <input
                          type="text"
                          name="copies"
                          id="noOfCopies"
                          value="${NoOfCopies}"
                          placeholder="${NoOfCopies}"
                          required
                        />
                      </div>
                    </div>
                    <div class="publisher-name">
                      <div class="publisher-name-container">
                        <label for="publisherName">Publisher Name</label>
                        <br />
                        <input
                          type="text"
                          name="publisher"
                          id="publisherName"
                          value="${publisherName}"
                          placeholder="${publisherName}"
                          required
                        />
                      </div>
                    </div>
                    <div class="published-year">
                      <div class="published-year-container">
                        <label for="publishedYear">Published Year</label>
                        <br />
                        <input id = "publishedYear" name = "published-year" type="number" min="1900" max="2022" step="1" value="${publishedYear}" />
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="form-bottom">
                <div class="form-bottom-container">
                  <div class="book-synopsis">
                    <div class="book-synopsis-container">
                      <label class="synopsis-text" for="synopsis">Synopsis</label>
                      <br />
                      <textarea type="text" name="bookSynopsis" id="synopsis" placeholder="${synopsis}" required ></textarea>
                      <script>
                      </script>
                    </div>
                  </div>
                </div>
              </div>
              <div class="update-button">
                <div class="update-button-container">
                  <button type="submit" id = "update-button">Update</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </body>
  <script>
    var status = "${status}";
    var isbn = "${isbn}";
    console.log(status);
    if(status == 1){
      alert("Successfully Updated Book No: " + isbn);
    }
    else if(status == 0){
      alert("Error")
    }
  </script>
</html>