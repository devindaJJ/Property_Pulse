<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="javax.servlet.http.HttpSession"%>

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


<section id="center" class="clearfix center_about">
 <div class="container clearfix">
  <div class="row">
   <div class="center_about_1 text-center clearfix">
	<div class="col-sm-12">
	 <h1 class="mgt">Submit Property</h1>
	 <p>Just Submit Your Property</p>
	</div>
   </div>
  </div>
 </div>
</section>
<section id="prop">
<form action="insertProp" method="post" enctype="multipart/form-data" onsubmit="return validateForm()" name="property-form">
 <div class="container">
  <div class="row">
   <div class="submit_1 mgt clearfix">
    <h4 class="mgt col_1">Property Description And Price</h4>
	<hr>
	<h5>Property Title</h5>
	<input class="form-control" placeholder="Property Title" type="text" name="title" required>
	<h5>Property Description</h5>
	<textarea placeholder="Property Description" class="form-control form_o" name="description" required></textarea>
	<div class="submit_1i clearfix">
	 <div class="col-sm-4 space_left">
	  <div class="submit_1i1 clearfix">
	    <h5>Status</h5>
	    <select class="form-control" name="status">
		    <option value="">Select Status</option>
		    <option value="rent">Rent</option>
		    <option value="sale">Sale</option>
		</select>
	  </div>
	 </div>
	 <div class="col-sm-4 space_all">
	  <div class="submit_1i1 clearfix">
	    <h5>Type</h5>
	    <select class="form-control" name="type">
		    <option value="">Select Type</option>
		    <option value="house">House</option>
		    <option value="commercial">Commercial</option>
		    <option value="apartment">Apartment</option>
		    <option value="garage">Garage</option>
		</select>
	  </div>
	 </div>
	 <div class="col-sm-4 space_right">
	  <div class="submit_1i1 clearfix">
	    <h5>Rooms</h5>
	   <select class="form-control" name="rooms">
		    <option value="">Select Type</option>
		    <option value="1">1</option>
		    <option value="2">2</option>
		    <option value="3">3</option>
		    <option value="4">4</option>
		</select>
	  </div>
	 </div>
	</div>
	<div class="submit_1i clearfix">
	 <div class="col-sm-6 space_left">
	  <div class="submit_1i1 clearfix">
	    <h5>Price</h5>
	    <input class="form-control" placeholder="LKR" type="text" name="price" required>
	  </div>
	 </div>
	 <div class="col-sm-6 space_right">
	  <div class="submit_1i1 clearfix">
	    <h5>Area</h5>
	    <input class="form-control" placeholder="Sqft" type="text" name="landsize" required>
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
	    <input class="form-control" placeholder="Enter Your Address" type="text" name="address" required>		
	  </div>
	 </div>
	 <div class="col-sm-6 space_right">
	  <div class="submit_1i1 clearfix">
	    <h5 class="mgt">City</h5>
	    <input class="form-control" placeholder="Enter Your City" type="text" name="city" required>
	  </div>
	 </div>
	</div>
	</div>
   </div>
   <div class="submit_3 clearfix">
	<button class="btn btn-lg btn-block purple-bg" type="submit" name="submit">Submit Property</button>
<!--    <h5 class="mgt"><a class="button mgt" href="insertProp">Submit Property</a></h5> -->
   </div>
  </div>
</form>
</section>

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

            var priceInput = document.forms["property-form"]["price"];
            var priceRegex = /^[0-9]+$/;
            if (!priceRegex.test(priceInput.value)) {
                alert("Please enter a valid price (only numbers are allowed).");
                return false;
            }

            var landsizeInput = document.forms["property-form"]["landsize"];
            var landsizeRegex = /^[0-9]+$/;
            if (!landsizeRegex.test(landsizeInput.value)) {
                alert("Please enter a valid area (only numbers are allowed).");
                return false;
            }

            var mediaInput = document.forms["property-form"]["image"];
            var allowedExtensions = /(\.jpg)$/i;
            if (!allowedExtensions.exec(mediaInput.value)) {
                alert("Please upload a JPG file.");
                return false;
            }

            return true; // Return false to cancel form submission if validation fails
        }
    </script>

<script src="js/classie.js"></script>
<script src="js/cbpAnimatedHeader.js"></script>

</body>
 
</html>