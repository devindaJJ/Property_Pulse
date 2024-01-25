<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
  }

  h1 {
    text-align: center;
    color: #333;
  }

  table {
    width: 80%;
    margin: 0 auto;
    border-collapse: collapse;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }

  th, td {
    padding: 10px;
    text-align: left;
  }

  th {
    background-color: #333;
    color: #fff;
  }

  tr:nth-child(even) {
    background-color: #f2f2f2;
  }

  a {
    text-decoration: none;
    display: block;
    width: 120px;
    margin: 10px auto;
    text-align: center;
  }

  input[type="button"] {
    background-color: #333;
    color: #fff;
    border: none;
    padding: 10px;
    cursor: pointer;
    width: 100%;
  }

  input[type="button"]:hover {
    background-color: #555;
  }
</style>

</head>
<body>
<%@ include file="header.jsp"%>

<section id="center" class="clearfix center_about">
 <div class="container clearfix">
  <div class="row">
   <div class="center_about_1 text-center clearfix">
	<div class="col-sm-12">
	 <h1 class="mgt">Your Ticket Details</h1><br><br>
	</div>
   </div>
  </div>
 </div>
</section>
	<table border="1px" >
	
	<c:forEach var="tic" items="${details }">
	
	<c:set var="id" value="${tic.ticketId}"/>
	<c:set var="email" value="${tic.email}"/>
	<c:set var="topic" value="${tic.topic}"/>
	<c:set var="message" value="${tic.message}"/>
	
	
	<tr>
	<th>Message ID</th>
	<td>${tic.ticketId }</td>
	</tr>
	
	<tr>
	<th>Email</th>
	<td>${tic.email }</td>
	</tr>
	
	<tr>
	<th>Message Title</th>
	<td>${tic.topic }</td>
	</tr>
	
	<tr>
	<th>Message </th>
	<td>${tic.message }</td>
	</tr>
	
	
	</c:forEach>
	</table>
	<c:url value="updateTicket.jsp" var="ticUpdate">
		<c:param name="id" value="${id}"/>
		<c:param name="mail" value="${email}"/>
		<c:param name="title" value="${topic}"/>
		<c:param name="msg" value="${message}"/>
	</c:url>
	 
	<a href="${ticUpdate}">
	<input type="button" value="Edit Message" name="update">
	</a>
	
	<c:url value="deleteTicket.jsp" var="deleteMessage" >
		<c:param name ="id" value="${id}"/>
		<c:param name="mail" value="${email}"/>
		<c:param name="title" value="${topic}"/>
		<c:param name="msg" value="${message}"/>
	
	</c:url>
	

	
	<a href="${deleteMessage}">
	
	<input type="button" value="Delete" name="delete">
	</a>
	<%@ include file="footer.jsp"%>
	
</body>
</html>