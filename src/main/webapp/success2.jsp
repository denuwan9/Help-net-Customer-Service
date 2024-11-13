<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success Page</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
        	background-image:url(R.jpeg);
            background-repeat: no-repeat;
            background-position: center;
            background-attachment: fixed;
            background-size: cover;
        	
            font-family: 'Arial', sans-serif;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .success-container {
            background-color: rgb(255, 255, 255);
            border-radius: 10px;
            padding: 40px 20px;
            width: 320px;
            text-align: center;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }

        .success-icon {
            font-size: 50px;
            color: #af4c5e;
            margin-bottom: 10px;
        }

        h1 {
            font-size: 20px;
            color: #4caf50;
            margin-bottom: 10px;
        }

        p {
            color: #666;
            font-size: 14px;
            margin-bottom: 30px;
        }

        .login {
            padding: 12px 24px;
            background-color: #4caf50;
            border: none;
            border-radius: 25px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s, box-shadow 0.3s;
        }

        .login:hover {
            background-color: #43a047;
            box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>

    <div class="success-container">
        <div class="success-icon">✔️</div>
        <h1>SUCCESS</h1>
        <p>Congratulations, your account has been successfully created.</p>
        <a href="login.jsp">
        <button class="login">Login</button>
        </a>
    </div>

</body>
</html>
