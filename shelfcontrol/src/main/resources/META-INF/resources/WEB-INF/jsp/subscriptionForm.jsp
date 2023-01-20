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
  <jsp:include page="adminTopBar.jsp" />
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
      <div class="user-side">
        <% String username=(String)session.getAttribute("user");
          String email= (String)session.getAttribute("email");%>
        <form action="/updateType">
        <div class="sub-form">
            <div class="title">Subscription Form</div>
            <div class="name-container">
                <label for="user-name">User Name</label>
                <br/>
                <input type="text" name="name" id="name" value="<%out.print(username);%>"/>
            </div>
            <div class="emailContainer">
              <label for="email-address">E-mail Address</label>
              <br/>
              <input type="email" name="emailAddress" id="emailAddress" value="<%out.print(email);%>"/>
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
          </form>
        </div>
      </div> 
</body>
  <script>
    var status = '${status}';
    var name = document.getElementById("name");
    var emailAddress = document.getElementById("emailAddress");
    var paydate = document.getElementById("paydate");
    var months = document.getElementById("months");
    var method = document.getElementById("method");
    var total = document.getElementById("total");

    function calculateAmount(val) {
      var tot_price = val * 1000;
      /*display the result*/
      var divobj = document.getElementById('total');
      divobj.value = tot_price;
    }

    function paydone(){
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