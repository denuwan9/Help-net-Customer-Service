<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Update Inquiry</title>
  <link rel="stylesheet" href="upstyles.css">
</head>
<body>

<%
  String inqNo = request.getParameter("inqNo");
  String name = request.getParameter("name");
  String email = request.getParameter("email");
  String message = request.getParameter("message");
%>

<div class="container">
  <header>
    <h1>Update Inquiry</h1>
  </header>

  <section class="form-section">
    <form action="update" method="POST">
      <div class="form-group">
        <label for="inquiry-id">Inquiry ID</label>
        <input type="text" id="inquiry-id" name="inqNo" value="<%= inqNo %>" readonly>
      </div>

      <div class="form-group">
        <label for="name">Name</label>
        <input type="text" id="name" name="name" value="<%= name %>" required>
      </div>

      <div class="form-group">
        <label for="email">Email</label>
        <input type="email" id="email" name="email" value="<%= email %>" required>
      </div>

      <div class="form-group">
        <label for="message">Message</label>
        <textarea id="message" name="message" required><%= message %></textarea>
      </div>

      <div class="form-group buttons">
        <button type="submit" class="btn update-btn">Update</button>
        <a href="inquiry.jsp" class="btn cancel-btn">Cancel</a>
      </div>
    </form>
  </section>
</div>

<footer>
  <p>&copy; 2024 Inquiry Management System. All rights reserved.</p>
</footer>

</body>
</html>
