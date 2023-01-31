<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="template/admin.css" />
    <title>Admin Dashboard</title>
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
    </div>
    <div class="content">
        <div class="booklist">
            <div class="head">
                <h1>Books</h1>
            </div>
            <div class="cardBox">
                <div class="card">
                    <img src="template/images/fellow.jpg" id="photo">
                    <input type="file" id="updt" style="display:none">
                    <button for="file" class="styleClass" id="updtBtn">Update</button>
                    <button class="styleClass" id="del">Delete</button>
                    <p>The Fellowship of the Ring</p>
                    <p>JRR Tolkein</p>
                </div>
                <div class="card">
                    <img src="images/td.jpg" alt="">
                    <button class="styleClass" onclick="document.getElementById('updt').click(); return false;">Update</button>
                    <a><span> <input type= "file" id="updt" style="display:none"></span>
                    <span> <button class="styleClass" id="del">Delete</button></span></a>
                    <p>The Diary of a Young Girl</p>
                    <p>Anne Frank</p>
                </div>
                <div class="card">
                    <img src="images/lll.jpg" alt="">
                    <button class="styleClass" onclick="document.getElementById('updt').click(); return false;">Update</button>
                    <a><span> <input type= "file" id="updt" style="display:none"></span>
                    <span> <button class="styleClass" id="del">Delete</button></span></a>
                    <p>Live Love Laughter</p>
                    <p>Osho</p>
                </div>
                <div class="card">
                    <img src="images/got.jpg" alt="">
                    <button class="styleClass" onclick="document.getElementById('updt').click(); return false;">Update</button>
                    <a><span> <input type= "file" id="updt" style="display:none"></span>
                    <span> <button class="styleClass" id="del">Delete</button></span></a>
                    <p>The Fellowship of the Ring</p>
                    <p>JRR Tolkein</p>
                </div>
                <div class="card">

                    <button class="styleClass" onclick="document.getElementById('updt').click(); return false;">Update</button>
                    <a><span> <input type= "file" id="updt" style="display:none"></span>
                    <span> <button class="styleClass" id="del">Delete</button></span></a>
                    <p>The Fellowship of the Ring</p>
                    <p>JRR Tolkein</p>
                </div>
                <div class="card">
                    <button class="styleClass" onclick="document.getElementById('updt').click(); return false;">Update</button>
                    <a><span> <input type= "file" id="updt" style="display:none"></span>
                    <span> <button class="styleClass" id="del">Delete</button></span></a>
                    <p>The Fellowship of the Ring</p>
                    <p>JRR Tolkein</p>
                </div>
                <div class="card">
                    <button class="styleClass" onclick="document.getElementById('updt').click(); return false;">Update</button>
                    <a><span> <input type= "file" id="updt" style="display:none"></span>
                    <span> <button class="styleClass" id="del">Delete</button></span></a>
                    <p>The Fellowship of the Ring</p>
                    <p>JRR Tolkein</p>
                </div>
                <div class="card">
                    <button class="styleClass" onclick="document.getElementById('updt').click(); return false;">Update</button>
                    <a><span> <input type= "file" id="updt" style="display:none"></span>
                    <span> <button class="styleClass" id="del">Delete</button></span></a>
                    <p>The Fellowship of the Ring</p>
                    <p>JRR Tolkein</p>
                </div>
                <div class="card">
                    <button class="styleClass" onclick="document.getElementById('updt').click(); return false;">Update</button>
                    <a><span> <input type= "file" id="updt" style="display:none"></span>
                    <span> <button class="styleClass" id="del">Delete</button></span></a>
                    <p>The Fellowship of the Ring</p>
                    <p>JRR Tolkein</p>
                </div>
                <div class="card">
                    <button class="styleClass" onclick="document.getElementById('updt').click(); return false;">Update</button>
                    <a><span> <input type= "file" id="updt" style="display:none"></span>
                    <span> <button class="styleClass" id="del">Delete</button></span></a>
                    <p>The Fellowship of the Ring</p>
                    <p>JRR Tolkein</p>
                </div>
                <div class="card">
                    <button class="styleClass" onclick="document.getElementById('updt').click(); return false;">Update</button>
                    <a><span> <input type= "file" id="updt" style="display:none"></span>
                    <span> <button class="styleClass" id="del">Delete</button></span></a>
                    <p>The Fellowship of the Ring</p>
                    <p>JRR Tolkein</p>
                </div>

            </div>
        </div>
        <div class="dataBox">
            <div class="dataCard">
                <div class="datas">
                    <div class="icnbx">
                        <ion-icon name="people"></ion-icon>
                    </div>
                    <div>
                        <div class="numbers">Users</div>
                        <div class="numbers">142</div>
                    </div>

                </div>
                <div class="datas">
                    <div class="icnbx">
                        <ion-icon name="flash"></ion-icon>
                    </div>
                    <div>
                        <div class="numbers">Subscribers</div>
                        <div class="numbers">80</div>
                    </div>

                </div>
                <div class="datas">
                    <div class="icnbx">
                        <ion-icon name="cart"></ion-icon>
                    </div>
                    <div>
                        <div class="numbers">Rented</div>
                        <div class="numbers">100</div>
                    </div>

                </div>
                <div class="datas">
                    <div class="icnbx">
                        <ion-icon name="alarm"></ion-icon>
                    </div>
                    <div>
                        <div class="numbers">Overdue</div>
                        <div class="numbers">20</div>
                    </div>

                </div>
            </div>
        </div>
            <div class="bBooks">
                <div class="borrowed-books-container">
                    <div class="borrowed-book-head">Borrowed Books</div>
                    <div class="borrowed-books-table">
                      <div class="borrowed-books-table-container">
                        <div class="borrowed-list-head-title">
                          <div class="ind Book-Id">Book ID</div>
                          <div class="ind Book-Name">Book Name</div>
                          
                          <div class="ind Borrowed-Date">Borrowed Date</div>
                          <div class="ind Due-Date">Due Date</div>
                          <div class="ind Status">Status</div>
                          <div class="ind Action">Action</div>
                        </div>
                        <div class="table-line"></div>
                        <div class="borrow-list-row">
                          <div class="borrow-list-row-container">
                            <div class="ind Book-Id">19888</div>
                            <div class="ind Book-Name">To Paradise</div>
                            <div class="ind Borrowed-Date">
                              <a id="borrow-date">20-09-2022</a>
                            </div>
                            <div class="ind Due-Date">
                              <a id="due-date">27-09-2022</a>
                            </div>
                            <div class="ind Status"><a id="status">4 Days</a></div>
                            <div class="ind Action">
                              <button class="notify" id="notify-green">
                                Notify
                              </button>
                            </div>
                          </div>
                        </div>
                        <div class="borrow-list-row">
                          <div class="borrow-list-row-container">
                            <div class="ind Book-Id">19888</div>
                            <div class="ind Book-Name">To Paradise</div>
                            <div class="ind Borrowed-Date">
                              <a id="borrow-date">20-09-2022</a>
                            </div>
                            <div class="ind Due-Date">
                              <a id="due-date">27-09-2022</a>
                            </div>
                            <div class="ind Status"><a id="status">4 Days</a></div>
                            <div class="ind Action">
                              <button class="notify" id="notify-green">
                                Notify
                              </button>
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
