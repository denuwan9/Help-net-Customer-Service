<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inquiry Login</title>
<link rel="stylesheet" href="inqstyles.css">
</head>

<body>

	<section id="contact">
        <div class="container">
            <h2>Login your Inquiry</h2>
            <form id="contact-form" action="log" method="post">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required>
                </div>
               
                <button type="submit" class="btn">Submit</button>
                
            </form>
        </div>
    </section>
</body>
</html>