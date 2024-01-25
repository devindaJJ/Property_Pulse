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
    
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
        $(document).ready(function() {
            // Function to toggle the visibility of the property details table
            function togglePropertyDetails() {
                $('#property-details').toggle();
            }

            // Attach the function to the click event of the button
            $('#show-properties-button').click(function() {
                togglePropertyDetails();
            });
        });
    </script>
  </head>
  
<body>
	<c:forEach var="usr" items="${usrDetails}">	
		<c:set var="firstname" value="${usr.firstname}"/>
		<c:set var="lname" value="${usr.lastname}"/>
		<c:set var="birthday" value="${usr.birthday}"/>
		<c:set var="phone" value="${usr.phone}"/>
		<c:set var="email" value="${usr.email}"/>
		<c:set var="password" value="${usr.password}"/>
	</c:forEach>

 <%@ include file="header.jsp"%>

<section id="center" class="clearfix center_about">
 <div class="container clearfix">
  <div class="row">
   <div class="center_about_1 text-center clearfix">
	<div class="col-sm-12">
	 <h1 class="mgt">User Details</h1><br><br>
	 <a href="<%= request.getContextPath() %>/loadusr"><button type="button" class="btn btn-primary">Show My Details</button></a>
	 
	</div>
   </div>
  </div>
 </div>
</section>

<section id="user-details" class="clearfix">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3"><br><br>
                <form id="user-details-form" action="updateCustomerServlet" method="post">
                    <div class="form-group">
                        <label for="firstname">First Name:</label>
                        <input type="text" class="form-control" id="firstname" name="firstname" value="${firstname}" >
                    </div>
                    <div class="form-group">
                        <label for="lastname">Last Name:</label>
                        <input type="text" class="form-control" id="lastname" name="lastname" value="${lname}" >
                    </div>
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" id="email" name="email" value="${email}" >
                    </div>
                    <div class="form-group">
                        <label for="phone">Contact Number:</label>
                        <input type="text" class="form-control" id="phone" name="phone" value="${phone}" >
                    </div>
                    <div class="form-group">
                        <label for="birthday">Birthday:</label>
                        <input type="date" class="form-control" id="birthday" name="birthday" value="${birthday}" >
                    </div>
                    <button type="submit" class="btn btn-primary">Update Details</button>
                    <a href="<%= request.getContextPath() %>/deleteuser"><button type="button" class="btn btn-primary">Delete Account</button></a>
                </form>
            </div>
        </div>
    </div>
</section>
<section id="center" class="clearfix center_about">
 <div class="container clearfix">
  <div class="row">
   <div class="center_about_1 text-center clearfix">
	<div class="col-sm-12">
	 <h1 class="mgt">Property Details</h1><br><br>
	 <form action="display" method="POST">
           <button type="submit" class="btn btn-primary" id="show-properties-button">Show My Property Details</button>
     </form>
	</div>
   </div>
  </div>
 </div>
</section>

<section id="property-details" class="clearfix">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
            <br>
                <!-- Display property details in a table -->
                <table class="table">
                    <thead>
                        <tr>
                            <th>Property ID</th>
                            <th>Property Title</th>
                            <th>Status</th>
                            <th>Price</th>
                            <th>Type</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Use forEach loop to iterate through all properties -->
                        <c:forEach var="prop" items="${propDetails}">
                            <tr>
                                <td>${prop.propertyId}</td>
                                <td>${prop.propertyTitle}</td>
                                <td>${prop.propStatus}</td>
                                <td>${prop.price}</td>
                                <td>${prop.propType}</td>
                                <td><a href="<%= request.getContextPath() %>/displaypropByPropID?propid=${prop.propertyId}"><button type="submit" class="btn btn-primary">Preview</button></a><br>
                                 <br><a href="<%= request.getContextPath() %>/updatepropdisplay?propid=${prop.propertyId}"><button type="submit" class="btn btn-primary">Update</button></a><br>
                                 <br><a href="<%= request.getContextPath() %>/deleteprop?propid=${prop.propertyId}"><button type="submit" class="btn btn-primary">Delete</button></a>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <br><br>
            </div>
            
        </div>
    </div>
</section>

<%@ include file="footer.jsp"%>

<script src="js/classie.js"></script>
<script src="js/cbpAnimatedHeader.js"></script>

</body>
 
</html>
