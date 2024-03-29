<!DOCTYPE html>
<html lang="en">
  <head>
    <link rel="stylesheet" href="/userNavBar.css">
  </head>
  <nav>
    <div class="navigation">
      <div class="navigation-container">
        <div class="line"></div>
        <div class="nav-hover">
          <div class="nav-item">
            <div class="nav-icon">
              <img src="/template/images/icons/books.png" alt="books" height="34px" />
            </div>
            Books
          </div>
        </div>
        <div class="line"></div>
        <div class="nav-hover">
          <div class="nav-item">
            <div class="nav-icon">
              <img
                src="/template/images/icons/borrows.png"
                alt="borrows"
                height="32px"
              />
            </div>
            Borrows
          </div>
        </div>
        <div class="line"></div>
        <div class="nav-hover">
          <a href="/getReservation" style="text-decoration: none; color: #ffffff;">
          <div class="nav-item">
            <div class="nav-icon">
              <img
                src="/template/images/icons/reservations.png"
                alt="reservation"
                height="30px"
              />
            </div>
            Reservations
          </div>
          </a>
        </div>
        <div class="line"></div>
        <div class="nav-hover">
          <a href="subscription" style="text-decoration: none; color: #ffffff;">
          <div class="nav-item">
            <div class="nav-icon">
              <img
                src="/template/images/icons/subscriptions.png"
                alt="subscriptions"
                height="30px"
              />
            </div>
            Subscriptions
          </div>
          </a>
        </div>
        <div class="line"></div>
        <div class="nav-hover">
          <div class="nav-item">
            <div class="nav-icon">
              <img
                src="/template/images/icons/favourites.png"
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
              <img src="/template/images/icons/faqs.png" alt="faqs" height="30px" />
            </div>
            FAQs
          </div>
        </div>
        <div class="line"></div>
        <div id="bottom" class="line"></div>
        <div class="nav-hover">
          <div id="logout" class="nav-item">
            <div class="nav-icon">
              <img src="/template/images/icons/logout.png" alt="logout" height="30px" />
            </div>
            <form action="/logout">
                <button id="logout-text">Log Out</button>  
            </form>
          </div>
        </div>
      </div>
    </div>
  </nav>
</html>
