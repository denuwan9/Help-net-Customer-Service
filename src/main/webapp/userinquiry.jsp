<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inquiry Details</title>
    <link rel="stylesheet" href="userstyles.css">
</head>
<body>

<div class="container">
    <h1>Inquiry Details</h1>

    <table class="inquiry-table">
        <c:forEach var="inq" items="${inqDetails}">
            <c:set var="inqNo" value="${inq.inqNo}"/>
            <c:set var="name" value="${inq.name}"/>
            <c:set var="email" value="${inq.email}"/>
            <c:set var="message" value="${inq.message}"/>

            <tr>
                <td>Inquiry ID</td>
                <td>${inqNo}</td>
            </tr>
            <tr>
                <td>Name</td>
                <td>${name}</td>
            </tr>
            <tr>
                <td>Email</td>
                <td>${email}</td>
            </tr>
            <tr>
                <td>Message</td>
                <td>${message}</td>
            </tr>
        </c:forEach>
    </table>

    <div class="button-group">
        <c:url value="updateinquiry.jsp" var="inqupdate">
            <c:param name="inqNo" value="${inqNo}"/>
            <c:param name="name" value="${name}"/>
            <c:param name="email" value="${email}"/>
            <c:param name="message" value="${message}"/>
        </c:url>
        
        <a href="${inqupdate}" class="btn btn-update">Update My Inquiry</a>

        <c:url value="deleteinquiry.jsp" var="inqdelete">
            <c:param name="inqNo" value="${inqNo}"/>
            <c:param name="name" value="${name}"/>
            <c:param name="email" value="${email}"/>
            <c:param name="message" value="${message}"/>
        </c:url>
        
        <a href="${inqdelete}" class="btn btn-delete">Delete My Inquiry</a>
    </div>
</div>

</body>
</html>
