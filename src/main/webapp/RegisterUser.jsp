<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>My Home</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/global.css" rel="stylesheet">
	<link href="css/login.css" rel="stylesheet">
	<link href="css/element.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
	<link href="https://fonts.googleapis.com/css?family=Jura" rel="stylesheet">
	<script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </head>
  
<body>
 <%@ include file="header.jsp"%>

<section id="center" class="clearfix center_about">
 <div class="container clearfix">
  <div class="row">
   <div class="center_about_1 text-center clearfix">
	<div class="col-sm-12">
	 <h1 class="mgt">Register</h1>
	</div>
   </div>
  </div>
 </div>
</section>

<section id="user-details" class="clearfix">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
  <form id="user-details-form" action="register" method="post" onsubmit="return validateForm()">
  	<br>
    <div class="form-group">
        <label for="firstname">First Name:</label>
        <input type="text" class="form-control" id="firstname" name="firstname">
    </div>
    <div class="form-group">
        <label for="lastname">Last Name:</label>
        <input type="text" class="form-control" id="lastname" name="lastname">
    </div>
    <div class="form-group">
        <label for="email">Email:</label>
        <input type="email" class="form-control" id="email" name="email">
    </div>
    <div class="form-group">
        <label for="password">Password:</label>
        <input type="password" class="form-control" id="password" name="password">
    </div>
    <div class="form-group">
        <label for="phone">Contact Number:</label>
        <input type="text" class="form-control" id="phone" name="phone">
    </div>
    <div class="form-group">
        <label for="birthday">Birthday:</label>
        <input type="date" class="form-control" id="birthday" name="birthday">
    </div>
    <button type="submit" class="btn btn-primary">Register</button>

</form>    <br>

<script>
function validateForm() {
    var firstname = document.getElementById('firstname').value;
    var lastname = document.getElementById('lastname').value;
    var email = document.getElementById('email').value;
    var password = document.getElementById('password').value;
    var phone = document.getElementById('phone').value;
    var birthday = document.getElementById('birthday').value;

    if (firstname.trim() === '') {
        alert('Please enter your first name.');
        return false;
    }

    if (lastname.trim() === '') {
        alert('Please enter your last name.');
        return false;
    }

    if (email.trim() === '' || !isValidEmail(email)) {
        alert('Please enter a valid email address.');
        return false;
    }

    if (password.trim() === '') {
        alert('Please enter your password.');
        return false;
    }

    if (phone.trim() === '' || !isValidPhone(phone)) {
        alert('Please enter a valid phone number.');
        return false;
    }

    if (birthday.trim() === '') {
        alert('Please enter your birthday.');
        return false;
    }

    // Add more validations as needed

    return true;
}

function isValidEmail(email) {
    // Use a regular expression to validate email format
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
}

function isValidPhone(phone) {
    // Use a regular expression to validate phone number format
    var phoneRegex = /^\d{10}$/;
    return phoneRegex.test(phone);
}
</script>

            </div>
        </div>
    </div>
</section>

<%@ include file="footer.jsp"%>

<script src="js/classie.js"></script>
<script src="js/cbpAnimatedHeader.js"></script>

</body>
 
</html>
