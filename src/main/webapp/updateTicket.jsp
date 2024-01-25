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
    background-color: #f2f2f2;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }

  h1 {
    text-align: center;
    color: #333;
  }

  h4 {
    color: #007BFF;
    margin: 10px 0;
  }

  form {
    max-width: 400px;
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    display: flex;
    flex-direction: column;
    align-items: center;
  }

  input[type="text"] {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    color: black; /* Text color is black */
  }

  input[type="text"]:focus {
    border-color: #007BFF;
  }

  input[type="submit"] {
    background-color: #007BFF;
    color: black; /* Button text color is black */
    border: none;
    padding: 10px 20px;
    cursor: pointer;
    border-radius: 0; /* Make the button rectangular */
    transition: background-color 0.3s;
    margin: 10px 0;
  }

  input[type="submit"]:hover {
    background-color: #0056b3;
  }

  input[readonly] {
    background-color: #f2f2f2;
  }
</style>



</head>
<body>
<%@ include file="header.jsp"%>
	<%
		String Id = request.getParameter("id");
		String email = request.getParameter("mail");
		String topic = request.getParameter("title");
		String message = request.getParameter("msg");
		
		
	%>
	


<form action="ticketupdate" method="post">
<h1>Update Ticket</h1><br>
<h4>Message Id</h4>
<input type ="text" name="id" placeholder="id" value="<%= Id %>"required readonly><br>
<h4>Email</h4>
<input type ="text" name="email" placeholder="email" value="<%= email %>"required><br>
<h4>Topic</h4>
<input type ="text" name="Topic" placeholder="Topic" value="<%= topic %>" required><br>
<h4>Message</h4>
<input type ="text" name="message" placeholder="message" value="<%= message %> "required><br>
<input type="submit"  value="Update" name="submit">


</form>

</body>
</html>