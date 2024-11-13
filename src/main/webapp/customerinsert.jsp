<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Registration Form</title>
    <link rel="stylesheet" href="regstyle.css">
     
</head>
<body>
    <div class="container">
        <div class="left-side">
            <h2>INFORMATION</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
            <a href="login.jsp">
                <button class="account-btn">Have An Account</button>
            </a>
        </div>

        <div class="right-side">
            <h2>REGISTER FORM</h2>
            <form action="insert2" method="post" id="register-form">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" placeholder="Name" required>

                <label for="email">Your Email</label>
                <input type="email" id="email" name="email" placeholder="Your Email" required>

                <label for="phone">Phone Number</label>
                <input type="number" id="phone" name="phone" placeholder="Your Phone Number" required>

                <label for="username">User Name</label>
                <input type="text" id="username" name="uid" placeholder="Your User Name" required>

                <label for="password">Password</label>
                <input type="password" id="psw" name="psw" placeholder="Password" required>

                <label for="confirm-password">Confirm Password</label>
                <input type="password" id="cpsw" name="cpsw" placeholder="Confirm Password" required>

                
                <div class="terms">
                    <input type="checkbox" id="terms" required>
                    <label for="terms">I agree to the <a href="#">Terms and Conditions</a></label>
                </div>

                <input type="submit" name="submit" value="Create Customer" id="submit">
            </form>
        </div>
    </div>
		

</body>
</html>
