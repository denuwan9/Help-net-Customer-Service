<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Care</title>
    <link rel="stylesheet" href="inqstyles.css">
    <link rel="stylesheet" href="footer.css">
</head>
<body>
    <header>
        <div class="container">
            <div class="logo-container">
                <img src="logo.png" alt="Customer Care Logo" class="logo">
                <h1>Help NET</h1>
            </div>
            <nav>
                <ul>
                    <li><a href="#home">Home</a></li>
                    <li><a href="#services">Services</a></li>
                    <li><a href="#Price">Price</a></li>
                    <li><a href="#about">About Us</a></li>
                    <li><a href="customerinsert.jsp" class="btn sign-in">Sign In</a></li> 
                </ul>
            </nav>
        </div>
    </header>

    <section id="home" class="hero">
        <div class="hero-content">
            <h2>How can we help you today?</h2>
            <p>Your satisfaction is our mission. We're here to assist you 24/7.</p>
            <a href="#services" class="btn">Explore Our Services</a>
        </div>
    </section>

    <section id="services">
        <div class="container">
            <h2>Our Services</h2>
            <div class="services-grid">
                <div class="service">
                    <h3>Technical Support</h3>
                    <p>Our team is ready to solve any technical issues you may encounter.</p>
                </div>
                <div class="service">
                    <h3>Customer Inquiries</h3>
                    <p>We’re here to answer your questions and provide the information you need.</p>
                </div>
                <div class="service">
                    <h3>Feedback and Suggestions</h3>
                    <p>Your feedback helps us grow. Let us know what you think.</p>
                </div>
            </div>
        </div>
    </section>

    <section id="contact">
        <div class="container">
            <h2>Customer Inquiry</h2>
            <form id="contact-form" action="insert" method="post">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="message">Message</label>
                    <textarea id="message" name="message" required></textarea>
                </div>
                <button type="submit" class="btn">Send Message</button>
                <a href="inqlogin.jsp" class="btn"> Edit or Delete Message</a>
            </form>
        </div>
    </section>



    <script src="scripts.js"></script>
    
    
    
    
    
    
    
    <footer class="footer">
    <div class="footer-container">

        <div class="footer-section">
            <h4>Company</h4>
            <ul>
                <div class="logo-container">
                    <center><img src="logoo.jpg" alt="Customer Care Logo" class="logo"></center>
               </div>
                <li><a href="#"><br>124, main Street,Colombo,Sri Lanka </a></li>
                <li><a href="#">Phone : +1(800) 123-4567 </a></li>
                <li><a href="#">helpnet@support.com </a></li>
                
               
            </ul>
        </div>

        <div class="footer-section">
            <h4>Contact Us</h4>
            <ul>
                <li><a href="#">Phone : +1(800) 123-4567</a></li>
                <li><a href="#">Email - helpNetsup@gmail.com</a></li>
                <li><a href="#">Live Chat</a></li>
                <li><a href="#">Twitter</a></li>
                <li><a href="#">facebook</a></li>
                
            </ul>
        </div>
        <div class="footer-section">
            <h4>Quick Links</h4>
            <ul>
                <li><a href="#">FAQ</a></li>
                <li><a href="#">Raise ticket</a></li>
                <li><a href="#">Service Status</a></li>
                <li><a href="#">PrivacyPolicy</a></li>
                <li><a href="#">Terms of services</a></li>
            </ul>
        </div>
        <div class="footer-section">
            <h4>Follow Us</h4>
            <ul>
                <li><a href="#">Facebook </a></li>
                <li><a href="#">Twitter </a></li>
                <li><a href="#">Intergram </a></li>
                
               
            </ul>
        </div>

        
     
    </div>

    <div class="footer-bottom">
        <div class="social-icons">
            <a href="#"><img src="fb_icon.jpg" alt="Facebook"></a>
            <a href="#"><img src="linkedin_icon.jpg" alt="LinkedIn"></a>
            <a href="#"><img src="inster_icon.jpg" alt="Instagram"></a>
        </div>
        <div class="footer-certifications">
            
            <p>&copy; 2024 Customer Care Center. All rights reserved.</p>
        </div>
    </div>
</footer>
</body>
</html>
