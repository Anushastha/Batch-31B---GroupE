<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="subscriptionForm.css" />
    <title>Subscription Form</title>
</head>
<header>
  <div class="header">
    <div class="header-container">
      <div class="logo">
        <div class="logo-container">
          <img id="logo" src="template/images/logo2.png" alt="logo" height="60px" />
        </div>
      </div>
      <div class="form">
        <div class="form-container">
          <div class="search">
            <div class="search-bar-container">
              <input
                class="search-bar-input"
                type="text"
                name="bookName"
                id="book"
                placeholder="Search for book title, author, publisher or users"
              />
            </div>
            <div class="Genre-container">
              <select name="genre" id="genre">
                <option value="horror">Horror</option>
                <option value="classic">Classic</option>
                <option value="fiction">Fiction</option>
                <option value="thriller">Thriller</option>
              </select>
            </div>
          </div>
        </div>
      </div>
      <div class="nav-right">
        <div class="notifications">
          <div class="bell-icon" id="bell-icon">
            <img src="template/images/icons/bell.png" alt="" height="30px" />
          </div>
        </div>
        <div class="account">
          <div class="account-container">
            <div class="profile-picture">
              <div class="profile-picture-container">
                <div id="profile-icon">AD</div>
              </div>
            </div>
            <div class="profile-info">
              <div class="profile-name">User Name</div>
              <div class="profile-type">Student</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</header>
<body>
    <div class="body">
      <div class="body-container">
        <div class="navigation">
          <div class="navigation-container">
            <div class="line"></div>
            <div class="nav-hover">
              <div class="nav-item">
                <div class="nav-icon">
                  <img
                    src="template/images/icons/books.png"
                    alt="books"
                    height="34px"
                  />
                </div>
                Books
              </div>
            </div>
            <div class="line"></div>
            <div class="nav-hover">
              <div class="nav-item">
                <div class="nav-icon">
                  <img
                    src="template/images/icons/borrows.png"
                    alt="borrows"
                    height="32px"
                  />
                </div>
                Borrows
              </div>
            </div>
            <div class="line"></div>
            <div class="nav-hover">
              <div class="nav-item">
                <div class="nav-icon">
                  <img
                    src="template/images/icons/reservations.png"
                    alt="reservation"
                    height="30px"
                  />
                </div>
                Reservations
              </div>
            </div>
            <div class="line"></div>
            <div class="nav-hover">
              <div class="nav-item">
                <div class="nav-icon">
                  <img
                    src="template/images/icons/subscriptions.png"
                    alt="subscriptions"
                    height="30px"
                  />
                </div>
                Subscriptions
              </div>
            </div>
            <div class="line"></div>
            <div class="nav-hover">
              <div class="nav-item">
                <div class="nav-icon">
                  <img
                    src="template/images/icons/favourites.png"
                    alt="favourites"
                    height="30px"
                  />
                </div>
                Favourites
              </div>
            </div>
            <div class="line"></div>
            <div class="nav-hover">
              <div class="nav-item">
                <div class="nav-icon">
                  <img src="template/images/icons/faqs.png" alt="faqs" height="30px" />
                </div>
                FAQs
              </div>
            </div>
            <div class="line"></div>
            <div id="bottom" class="line"></div>
            <div class="nav-hover">
              <div id="logout" class="nav-item">
                <div class="nav-icon">
                  <img
                    src="template/images/icons/logout.png"
                    alt="logout"
                    height="30px"
                  />
                </div>
                <div id="logout-text">Log Out</div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="user-side">
        <div class="sub-form">
            <div class="title">Subscription Form</div>
            <div class="name-container">
                <label for="user-name">User Name</label>
                <br/>
                <input type="text" name="name" id="name" required/>
            </div>
            <div class="emailContainer">
              <label for="email-address">E-mail Address</label>
              <br/>
              <input type="email" name="emailAddress" id="emailAddress" required/>
            </div>
            <div class="date">
              <label for="date">Payment Date</label>
              <br/>
              <input type="date" name="paydate" id="paydate" required />
            </div>
            <div class="months">
              <div class="month-label">
              <label for="months">Number of Months</label>
              </div>
              <br/>
              <input type="number" name="months" id="months" min="1" max="7" onchange="calculateAmount(this.value)" required/>
            </div>
            <div class="total">
              <label for="totalprice">Total Price</label>
              <br/>
              <input type="text" name="total" id="total" readonly/>
            </div>
            <div class="method">
              <label for="paymethod">Payment Method</label>
              <br/>
              <select name="method" id="method">
                <option value="" disabled selected>Please select a method</option>
                <option value="cash">Cash</option>
                <option value="esewa">E-Sewa</option>
                <option value="khalti">Khalti</option>
              </select>
            </div>
            <div class="confirm-button-container">
              <button id="confirm-button" onclick="paydone()">Confirm Payment</button>
            </div>
            </div>
        </div>
      </div> 
</body>
  <script>
    function calculateAmount(val) {
      var tot_price = val * 1000;
      /*display the result*/
      var divobj = document.getElementById('total');
      divobj.value = tot_price;
    }

    function paydone(){
    var status = '${status}';
    var name = document.getElementById("name");
    var emailAddress = document.getElementById("emailAddress");
    var paydate = document.getElementById("paydate");
    var months = document.getElementById("months");
    var method = document.getElementById("method");

    if(status==0){
      name.style.borderBottom = "solid 1px red"
      emailAddress.style.borderBottom = "solid 1px red"
      paydate.style.borderBottom = "solid 1px red"
      months.style.borderBottom = "solid 1px red"
      method.style.borderBottom = "solid 1px red"
    }
    else{
      alert("Your payment of "+tot_price+" has been made.")
    }
  }
  </script>
</html>