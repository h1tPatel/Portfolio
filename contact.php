<?php
$servername = "localhost";
$username = "rgqq9286_h1tpatel";
$password = "I,L#j+PAI*h4";
$dbname = "rgqq9286_database_portfolio1";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = filter_input(INPUT_POST, 'name', FILTER_SANITIZE_STRING);
    $email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_EMAIL);
    $phoneNumber = filter_input(INPUT_POST, 'phoneNumber', FILTER_SANITIZE_STRING);
    $message = filter_input(INPUT_POST, 'message', FILTER_SANITIZE_STRING);

    $stmt = $conn->prepare("INSERT INTO contact (contact_name, contact_email, contact_phone, contact_message) VALUES (?, ?, ?, ?)");
    if (!$stmt) {
        die("Prepare failed: (" . $conn->errno . ") " . $conn->error);
    }

    $stmt->bind_param("ssss", $name, $email, $phoneNumber, $message);

    if ($stmt->execute()) {
        echo "<script>alert('Message sent successfully!');</script>";
    } else {
        echo "<script>alert('Error: " . $stmt->error . "');</script>";
    }

    $stmt->close();
    $conn->close();
}
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact</title>
    <link rel="stylesheet" href="./css/grid.css">
    <link rel="stylesheet" href="./css/main.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400&display=swap" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.3/gsap.min.js"></script> 
</head>
<body >
    
    
    <header>
        <nav>
            <div class="left">Hit's Portfolio</div>
            <div class="right">
                <div class="hamburger" onclick="toggleMenu()">
                    &#9776;
                </div>
                <ul class="menu">
                    <li><a href="index.html" class="hvr-underline-from-left">Home</a></li>
                    <li><a href="about.html" class="hvr-underline-from-left">About</a></li>
                    <li><a href="work.php" class="hvr-underline-from-left">Work</a></li>
                    <li><a href="blog.html" class="hvr-underline-from-left">Blog</a></li>
                    <li><a href="contact.php" class="hvr-underline-from-left">Contact Me</a></li>
                </ul>
            </div>
        </nav>
    </header>

    <form class="container" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">

	<div class="row">
			<h1 class="heading-contact">Contact me</h1>
	</div>
	<div class="row">
			<h4>I'd love to hear from you!</h4>
	</div>
	<div class="row input-container animation-contact" id="contactForm">
			<div class="styled-input wide">
    <input type="text" id="name" name="name" required/>
    <label>Name</label> 
</div>

<div class="styled-input">
    <input type="text" id="email" name="email" required/>    
    <label>Email</label> 
</div>

<div class="styled-input" style="float:right;">
    <input type="text" id="phoneNumber" name="phoneNumber" required />
    <label>Phone Number</label> 
</div>

<div class="styled-input wide">
    <textarea id="message" name="message" required></textarea>
    <label>Message</label>
</div>

			<div>
                <button type="submit" class="btn-lrg submit-btn">Send Message</button>
				
			</div>
	</div>
</form>


<footer class="footer-all">
          <div class="footer">
              <div class="footer-first">
                  <h3>Hit's Devloper Portfolio</h3>
              </div>
              <div class="footer-second">
                  <ul >
                      <li><a href="./index.html">Home</a></li>
                      <li><a href="./about.html">About</a></li>
                      <li><a href="./contact.php">Contact</a></li>
                  </ul>
              </div>
          </div>
          <div class="footer-social">
            <a href="https://twitter.com/i/flow/login?redirect_after_login=%2Fh1t_patel"><img src="./images/twitter.png" alt="twitter"></a>
            <a href="https://www.instagram.com/h1t_patel/"><img src="./images/instagram.png" alt="instagram"></a>
            <a href="https://www.facebook.com/hit.9191"><img src="./images/facebook.png" alt="facebook"></a>
          </div>
          <div class="footer-rights">
              Copyright &#169; hitpatelportfolio.com | All rights reserved.
          </div>
</footer>
<script src="./js/main.js"></script>
</body>
</html>