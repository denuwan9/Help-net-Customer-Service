<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Delete Inquiry</title>
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
      <h1>Delete Inquiry</h1>
    </header>

    <section class="form-section">
      <form action="delete" method="POST">
        <div class="form-group">
          <label for="inquiry-id">Inquiry ID</label>
          <input type="text" id="inquiry-id" name="inqNo" value="<%= inqNo %>" readonly>
        </div>
        <div class="form-group">
          <label for="name">Name</label>
          <input type="text" id="name" name="name" value="<%= name %>" readonly>
        </div>
        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" id="email" name="email" value="<%= email %>" readonly>
        </div>
        <div class="form-group">
          <label for="message">Message</label>
          <textarea id="message" name="message" value="<%= message %>" readonly></textarea>
        </div>
        <div class="form-group buttons">
          <button type="submit" class="btn update-btn">Delete Inquiry</button>
          <a href="inquiry.jsp"><button type="button" class="btn cancel-btn" onclick="success.jsp">Cancel</button></a>
        </div>
      </form>
    </section>
  </div>
  
</body>
</html>