<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/bookUpload.css">
    <title>Book Upload</title>
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
                <div class="heading-text">Upload Book Form</div>
              </div>
            </div>
            <form action="/upload" method="post" enctype="multipart/form-data">
              <div class="top-form">
                <div class="top-form-left">
                  <div class="top-form-left-container">
                    <div class="isbn">
                      <div class="isbn-container">
                        <label for="isbn">ISBN</label>
                        <br />
                        <input type="text" name="isbn" id="isbn" required />
                      </div>
                    </div>
                    <div class="book-name">
                      <div class="book-name-container">
                        <label for="bookName">Book Name</label>
                        <br />
                        <input type="text" name="book" id="bookName" required />
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
                          <option value="classic">Classic</option>
                          <option value="fiction">Fiction</option>
                          <option value="thriller">Thriller</option>
                          <option value="fantasy">Fantasy</option>
                          <option value="scifi">Science Fiction</option>
                          <option value="action">Action & Adventure</option>
                          <option value="mystery">Mystery</option>
                          <option value="romance">Romance</option>
                          <option value="shortstories">Short Story</option>
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
                          required
                        />
                      </div>
                    </div>
                    <div class="published-year">
                      <div class="published-year-container">
                        <label for="publishedYear">Published Year</label>
                        <br />
                        <input id = "publishedYear" name = "published-year" type="number" min="1900" max="2022" step="1" value="2016" />
                      </div>
                    </div>
                    <div class="preview">
                      <div class="preview-container">
                        <div class="preview-text">Upload Preview</div>
                        <input type="file" name = "preview" id="upload-preview" hidden accept="application/pdf"/>
                        <label id = "select" for="upload-preview">Choose file</label>
                      </div>
                    </div>
                    <div class="icon">
                      <div class="icon-container">
                        <div class="icon-text">Upload Icon</div>
                        <input type="file" name = "thumbnail"id="upload-icon" hidden accept="image/*"/>
                        <label id = "select" for="upload-icon">Choose file</label>
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
                      <textarea type="text" name="bookSynopsis" id="synopsis" required></textarea>
                    </div>
                  </div>
                </div>
              </div>
              <div class="upload-button">
                <div class="upload-button-container">
                  <button type="submit" id = "upload-button">Upload</button>
                </div>
              </div>
              
            </form>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
