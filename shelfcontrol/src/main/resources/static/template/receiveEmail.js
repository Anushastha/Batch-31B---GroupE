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

