<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update customer</title>

<style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
        	background-image:url(6jWZFw.webp);
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

        .profile-container {
            background-color: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            width: 400px;
            text-align: center;
        }

        .profile-container h2 {
            color: #333;
            margin-bottom: 20px;
        }

        .profile-container .profile-field {
            margin: 15px 0;
            text-align: left;
        }

        .profile-container label {
            font-size: 14px;
            font-weight: bold;
            color: #666;
            display: block;
            margin-bottom: 5px;
        }

        .profile-container input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            outline: none;
        }

        .profile-container input:focus {
            border-color: #2575fc;
            box-shadow: 0 0 8px rgba(37, 117, 252, 0.5);
        }

        .profile-container .Update-button {
            background-color: #fc2525;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 5px;
            margin-top: 20px;
            width: 100%;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .profile-container .Update-button:hover {
            background-color: #c91e1e8a;
        }
    </style>

</head>
<body>

	<%
		String id= request.getParameter("id");
		String name= request.getParameter("name");
		String email= request.getParameter("email");
		String phone= request.getParameter("phone");
		String userName= request.getParameter("uname");
		String password= request.getParameter("pass");
	%>

 <div class="profile-container">
        <h2>Update Profile</h2>

        <form action="update2" method="post">

            <div class="profile-field">
                <label for="name"> Customer ID </label>
               <input type = "text" name ="cusid" value = "<%= id %>" readonly>
            </div>

            <div class="profile-field">
                <label for="name">Name</label>
                <input type = "text" name ="name" value = "<%= name %>">
            </div>

            <div class="profile-field">
                <label for="email">Email</label>
                <input type = "text" name ="email" value = "<%= email %>">
            </div>

            <div class="profile-field">
                <label for="phone">Phone</label>
                <input type = "text" name ="phone" value = "<%= phone %>">
            </div>

            <div class="profile-field">
                <label for="username">Username</label>
                <input type = "text" name ="uname" value = "<%= userName %>">
            </div>
			
			 <div class="profile-field">
                <label for="password">Password</label>
                <input type = "text" name ="pass" value = "<%= password %>">
            </div>
			
            <input type = "submit" name ="submit" value = "Update My Data" class="Update-button">
        </form>
    </div>

</body>
</html>