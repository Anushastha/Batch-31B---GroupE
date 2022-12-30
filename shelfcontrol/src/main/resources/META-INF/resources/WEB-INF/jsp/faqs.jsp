<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FAQ'S</title>
    <link rel="stylesheet" href="template/css/faqs.css">
</head>

<body>
    <div class="book">
        <input type="checkbox" id="c1">
        <input type="checkbox" id="c2">
        <input type="checkbox" id="c3">
        <div id="cover">
            <img src="template/images/fandq.jpg" alt="">
            <div class="title">
                The Book of FAQ's
            </div>
        </div>
        <div class="flip-book">
            <div class="flip" id="p1">
                <div class="back">
                    <h2>How can I borrow book?</h2>
                    <p>Simply login to the system, search for the book, click on borrow book then you can enjoy the book after completing payment method.</p>
                    <label class="back-btn" for="c1">Back</label>
                </div>
                <div class="front">
                    <h2>Can I change themes?</h2>
                    <p>Yes, you can change themes to dark or light.</p>
                    <label class="next-btn" for="c1">Next</label>
                </div>
            </div>
            <div class="flip" id="p2">
                <div class="back">
                    <h2>Why should I buy premium?</h2>
                    <p>In premium you can enjoy unlimited borrowing of books, priority in reservation list and many more.</p>
                    <label class="back-btn" for="c2">Back</label>
                </div>
                <div class="front">
                    <h2>Can I extend rent duration?</h2>
                    <p>Yes, you can extend your rent time duration.</p>
                    <label class="next-btn" for="c2">Next</label>
                </div>
            </div>

            <div class="flip" id="p3">
                <div class="back">
                    <label class="back-btn" for="c3">Back</label>
                </div>
                <div class="front">
                    <h2>What system do you use?</h2>
                    <p>This system uses spring boot as a backend.</p>
                    <label class="next-btn" for="c3">Next</label>
                </div>
            </div>
            <div class="flip" id="p4">

                <div class="front">
                    <h1>Thank You</h1>

                </div>
            </div>
        </div>
    </div>

</body>

</html>