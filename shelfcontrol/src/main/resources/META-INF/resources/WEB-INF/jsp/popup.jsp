<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />

    <link rel="stylesheet" href="1.css" />
  </head>
<div class="form-bottom">
    <form action="/notification">
    <div class="form-bottom-container">
      <div class="book-synopsis">
        <div class="book-synopsis-container">
          <label class="synopsis-text" for="synopsis">Description</label>
          <br />
          <textarea type="text" name="message" id="synopsis" required></textarea>
          <input type="text", name="reciever" required>
        </div>
      </div>
    </div>
        
  </div>
  <div class="upload-button">
    <div class="upload-button-container">
      <button type="submit" id = "upload-button">Send</button>
    </div>
  </div>
</form>
</html>