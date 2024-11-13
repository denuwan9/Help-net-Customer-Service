<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user account</title>

<style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
			background-image:url(free-website-background-07.jpg);
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

        .profile-container .update-button {
            background-color: #2575fc;
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

        .profile-container .update-button:hover {
            background-color: #1e5ec9;
        }

        .profile-container .delete-button{
            background-color: #fc2566;
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
        .profile-container .delete-button:hover{
            background-color: #c91e2f4a;
        }
        
    </style>

</head>
<body>

	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var= "id" value ="${cus.id}"/>
	<c:set var= "name" value ="${cus.name}"/>
	<c:set var= "email" value ="${cus.email}"/>
	<c:set var= "phone" value ="${cus.phone}"/>
	<c:set var= "username" value ="${cus.userName}"/>
	<c:set var= "password" value ="${cus.password}"/>
	
	 <div class="profile-container">
        <h2>User Profile</h2>
        	<div class="profile-field">
                <label for="name">Customer ID</label>
                ${cus.id}
            </div>

            <div class="profile-field">
                <label for="name">Name</label>
                ${cus.name}
            </div>

            <div class="profile-field">
                <label for="email">Email</label>
                ${cus.email}
            </div>

            <div class="profile-field">
                <label for="phone">Phone</label>
                ${cus.phone}
            </div>

            <div class="profile-field">
                <label for="username">Username</label>
                ${cus.userName}
            </div>

            <div class="profile-field">
                <label for="password">Password</label>
                ${cus.password}
            </div>

           
           
    
	
	</c:forEach>
	
	
	<c:url value="updatecustomer.jsp" var="cusupdate">
	<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="email" value="${email}"/>
	<c:param name="phone" value="${phone}"/>
	<c:param name="uname" value="${username}"/>
	<c:param name="pass" value="${password}"/>
	</c:url>
	
	<a href="${cusupdate}">
	 <input type="button" name="update"  value="Update Profile" class="update-button">
	</a>
	<br>
	
	<c:url value="deletecustomer.jsp" var="cusdelete">
	<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="email" value="${email}"/>
	<c:param name="phone" value="${phone}"/>
	<c:param name="uname" value="${username}"/>
	<c:param name="pass" value="${password}"/>
	</c:url>
	<a href ="${cusdelete}">
	 <input type="button" name="delete"  value="Delete Profile" class="delete-button">
	</a>
	
	</div>
</body>
</html>