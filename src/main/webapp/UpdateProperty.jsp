<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%
	HttpSession session2 = request.getSession(false);
	boolean userInSession1 = (session2 != null && session2.getAttribute("User_ID") != null);

    if (!userInSession1) {
        response.sendRedirect(request.getContextPath() + "/userlogin.jsp");
    }
%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>My Home</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/global.css" rel="stylesheet">
	<link href="css/property.css" rel="stylesheet">
	<link href="css/element.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
	<link href="https://fonts.googleapis.com/css?family=Jura" rel="stylesheet">
	<script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </head>
  
<body>
 <%@ include file="header.jsp"%>
<c:if test="${not empty propDetails}">


<section id="center" class="clearfix center_about">
 <div class="container clearfix">
  <div class="row">
   <div class="center_about_1 text-center clearfix">
	<div class="col-sm-12">
	 <h1 class="mgt">Update Property</h1>
	 <p>Just Update Your Property</p>
	</div>
   </div>
  </div>
 </div>
</section>
<section id="prop">
<form action="updateprop" method="post" enctype="multipart/form-data" onsubmit="return validateForm()" name="property-form">
 <div class="container">
  <div class="row">
   <div class="submit_1 mgt clearfix">
    <h4 class="mgt col_1">Property Description And Price</h4>
	<hr>
<input type="hidden" name="propertyId" value="${propDetails[0].propertyId}">
	<h5>Property Title</h5>
	<input class="form-control" placeholder="Property Title" type="text" name="title" value="${propDetails[0].propertyTitle}" required>
	<h5>Property Description</h5>
	<textarea placeholder="Property Description" class="form-control form_o" name="description" required>${propDetails[0].description}</textarea>
	<div class="submit_1i clearfix">
	 <div class="col-sm-4 space_left">
	  <div class="submit_1i1 clearfix">
	    <h5>Status</h5>
	    <select class="form-control" name="status">
		    <option value="" ${propDetails[0].propStatus eq '' ? 'selected' : ''}>Select Status</option>
		    <option value="rent" ${propDetails[0].propStatus eq 'rent' ? 'selected' : ''}>Rent</option>
		    <option value="sale" ${propDetails[0].propStatus eq 'sale' ? 'selected' : ''}>Sale</option>
		</select>

	  </div>
	 </div>
	 <div class="col-sm-4 space_all">
	  <div class="submit_1i1 clearfix">
	    <h5>Type</h5>
	    <select class="form-control" name="type">
		    <option value="" ${propDetails[0].propType eq '' ? 'selected' : ''}>Select Type</option>
		    <option value="house" ${propDetails[0].propType eq 'house' ? 'selected' : ''}>House</option>
		    <option value="commercial" ${propDetails[0].propType eq 'commercial' ? 'selected' : ''}>Commercial</option>
		    <option value="apartment" ${propDetails[0].propType eq 'apartment' ? 'selected' : ''}>Apartment</option>
		    <option value="garage" ${propDetails[0].propType eq 'garage' ? 'selected' : ''}>Garage</option>
		</select>

	  </div>
	 </div>
	 <div class="col-sm-4 space_right">
	 <div class="submit_1i1 clearfix">
    <h5>Rooms</h5>
    <select class="form-control" name="rooms">
        <option value="" ${propDetails[0].propRooms eq '' ? 'selected' : ''}>Select Type</option>
        <option value="1" ${propDetails[0].propRooms eq '1' ? 'selected' : ''}>1</option>
        <option value="2" ${propDetails[0].propRooms eq '2' ? 'selected' : ''}>2</option>
        <option value="3" ${propDetails[0].propRooms eq '3' ? 'selected' : ''}>3</option>
        <option value="4" ${propDetails[0].propRooms eq '4' ? 'selected' : ''}>4</option>
    </select>
</div>


	 </div>
	</div>
	<div class="submit_1i clearfix">
	 <div class="col-sm-6 space_left">
	  <div class="submit_1i1 clearfix">
	    <h5>Price</h5>
	    <input class="form-control" placeholder="USD" type="text" name="price" value="${propDetails[0].price}" required>
	  </div>
	 </div>
	 <div class="col-sm-6 space_right">
	  <div class="submit_1i1 clearfix">
	    <h5>Area</h5>
	    <input class="form-control" placeholder="Sqft" type="text" name="landsize" value ="${propDetails[0].landSize}" required>
	  </div>
	 </div>
	</div>
   </div>
   <div class="submit_1 clearfix">
     <h4 class="mgt col_1">Property Media</h4>
	 <hr>
	 <div class="submit_1ii clearfix">
	  <span class="span_1"><i class="fa fa-cloud-upload"></i></span>
	  <input type="file" name="image" required >
	  <h5>Click Here Or Drop Files To Upload</h5>
	 </div>
   </div>
   <div class="submit_1 clearfix">
    <h4 class="mgt col_1">Property Location</h4>
	<hr>
	<div class="submit_1i clearfix">
	 <div class="col-sm-6 space_left"> 
	  <div class="submit_1i1 clearfix">
	    <h5 class="mgt">Address</h5>
	    <input class="form-control" placeholder="Enter Your Address" type="text" name="address" value="${propDetails[0].propAddress}" required>		
	  </div>
	 </div>
	 <div class="col-sm-6 space_right">
	  <div class="submit_1i1 clearfix">
	    <h5 class="mgt">City</h5>
	    <input class="form-control" placeholder="Enter Your City" type="text" name="city" value="${propDetails[0].propCity}" required>
	  </div>
	 </div>
	</div>
	</div>
   </div>
   <div class="submit_3 clearfix">
	<button class="btn btn-lg btn-block purple-bg" type="submit" name="submit">Make Changes</button>
<!--    <h5 class="mgt"><a class="button mgt" href="insertProp">Submit Property</a></h5> -->
   </div>
  </div>
</form>
</section>
</c:if>
<%@ include file="footer.jsp"%>


    <script>
        function validateForm() {
            // Property Title validation
            var titleInput = document.forms["property-form"]["title"];
            var titleRegex = /^[A-Za-z\s]+$/;
            if (!titleRegex.test(titleInput.value)) {
                alert("Please enter a valid property title (only letters and spaces are allowed).");
                return false;
            }

            // Price validation
            var priceInput = document.forms["property-form"]["price"];
            var priceRegex = /^[0-9]+$/;
            if (!priceRegex.test(priceInput.value)) {
                alert("Please enter a valid price (only numbers are allowed).");
                return false;
            }

            // Area validation
            var landsizeInput = document.forms["property-form"]["landsize"];
            var landsizeRegex = /^[0-9]+$/;
            if (!landsizeRegex.test(landsizeInput.value)) {
                alert("Please enter a valid area (only numbers are allowed).");
                return false;
            }

            // Media validation (file type)
            var mediaInput = document.forms["property-form"]["image"];
            var allowedExtensions = /(\.jpg)$/i;
            if (!allowedExtensions.exec(mediaInput.value)) {
                alert("Please upload a JPG file.");
                return false;
            }

            // Add more validations for other fields as needed

            return true; // Return false to cancel form submission if validation fails
        }
    </script>

<script src="js/classie.js"></script>
<script src="js/cbpAnimatedHeader.js"></script>

</body>
 
</html>