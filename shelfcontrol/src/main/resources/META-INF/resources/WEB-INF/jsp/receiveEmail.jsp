<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Email Form</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
     crossorigin="anonymous"
     />
     <link rel="stylesheet" href="template/receiveEmail.css">
     <script type="text/javascript"
        src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js">
</script>
<script type="text/javascript">
   (function(){
      emailjs.init("J_RzqbFipxS_Frllu");
   })();
</script>
</head>
<body>
        <div class="row">
            <div class="box">
                <div class="head">
                <h1>Hi there!</h1>
                <h4>
                </div>
                    Shelf Control is a weekly celebration of the 
                    unread books on our shelves. Pick a book you own
                     but haven’t read, write a post about it 
                     (suggestions: include what it’s about, why you 
                     want to read it,
                     and when you got it), and link up!
                </h4>
            </div>
            <div class="block-1">
                <h4>Send Email Link</h4>
                <div class="form-group">
                    <div class="title-2"><h6 for="email">Email</h6></div>
                    <input type="email" 
                    class="form-control"
                     id="email"
                     placeholder="Enter your email">
                </div>
                <button class="btn" onclick="sendMail()">Submit</button>
            </div>
        </div>
        <script>
            function sendMail(){
                var params= {
                    name: document.getElementById("name").value,
                    email: document.getElementById("email").value,
                };
            
            const serviceID = "service_t6xogx8";
            const templateID = "template_ad971pd";
            
            
            emailjs.send(serviceID,templateID,params)
            .then(
                res =>{
                document.getElementById("name").value= "";
                document.getElementById("email").value= "";
                 console.log(res);
                alert("Your message sent successfully");
                })
                .catch((err) => console.log(err));
            }
        </script>
</body>
</html>