<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>My Home</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/global.css" rel="stylesheet">
	<link href="css/contact.css" rel="stylesheet">
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
	 <h1 class="mgt">Contact Us</h1>
	 <p>Lists of our all Popular agencies</p>
	</div>
   </div>
  </div>
 </div>
</section>

<section id="contact">
	<form action="ticketinsert" method="post" onsubmit="return validateEmail()">
 <div class="container clearfix">
  <div class="row">
	<div class="col-sm-7">
     <div class="contact_1l clearfix">
	    <div class="blog_detail_l3 clearfix">
	     <h3 class="mgt">Get Support</h3>
		 <div class="blog_detail_l3i clearfix">
		  <div class="col-sm-6 space_left">
		   <input class="form-control" placeholder="Enter Email" type="text" required name="email">
		  </div>
		
		 </div>
		 <div class="blog_detail_l3i clearfix">
		  <div class="col-sm-6 space_left">
		   <input class="form-control" placeholder="Subject" type="text" required name="topic">
		  </div>
	
		 </div>
		 <div class="blog_detail_l3i clearfix">
		  <div class="col-sm-12 space_all">
		   <textarea required placeholder="Comments" class="form-control form_1" name="message"></textarea>
		   <h5 class="text-center"><input type="submit" class="button_1 block" value="Send Request" ></h5>
                    
            <h5 class="text-center"><input type="reset" class="button_1 block" value="Clear"></h5>
            <h5 class="text-center"><a class="button_1 block" href="viewTickets.jsp">View Tickets </a></h5> 
		  </div>
		 </div>
	  </div>
	 </div>
	</div>
	
	</form>
	
	
	<div class="col-sm-5">
     <div class="contact_1r clearfix">
	  <h3 class="mgt">Get In Touch</h3>
	  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
	  <div class="mission_1ri clearfix">
	   <div class="col-sm-1 space_all">
	    <span><i class="fa fa-building col_1"></i></span>
	   </div>
	   <div class="col-sm-11">
	    <h4 class="mgt">Reach Us</h4>
		<p class="col_2">1417, Eget Market,<br>
Lorem Road, Semper 50 DB,<br>
India, VTB</p>
	   </div>
	  </div>
	  <div class="mission_1ri clearfix">
	   <div class="col-sm-1 space_all">
	    <span><i class="fa fa-envelope col_1"></i></span>
	   </div>
	   <div class="col-sm-11">
	    <h4 class="mgt">Drop A Mail</h4>
		<p class="col_2">info@gmail.com <br>info@gmail.com</p>
	   </div>
	  </div>
	  <div class="mission_1ri clearfix">
	   <div class="col-sm-1 space_all">
	    <span><i class="fa fa-phone col_1"></i></span>
	   </div>
	   <div class="col-sm-11">
	    <h4 class="mgt">Call Us</h4>
		<p class="col_2">1234567890 <br>1234567890</p>
	   </div>
	  </div>
	 </div>
	</div>
   </div>
   <div class="contact_2 clearfix">
	 <div class="col-sm-12">
	  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d114964.53925916665!2d-80.29949920266738!3d25.782390733064336!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88d9b0a20ec8c111%3A0xff96f271ddad4f65!2sMiami%2C+FL%2C+USA!5e0!3m2!1sen!2sin!4v1530774403788" width="100%" height="400px" frameborder="0" style="border:0" allowfullscreen=""></iframe>
	 </div>
	 </div>
  </div>
 </div>
</section>

<section id="footer">
 <div class="container">
  <div class="row">
   <div class="footer_1 clearfix">
    <div class="col-sm-3">
	 <div class="footer_1i1 clearfix">
	  <h4 class="mgt col">About Us</h4>
	  <p class="col_2">This My Template is a team of young professionals that has been successfully creating Creative Website templates already for several years.</p>
	  <h5><a class="button col_2" href="#"><i class="fa fa-android"></i> Google Store</a></h5>
	 </div>
	</div>
	<div class="col-sm-3">
	 <div class="footer_1i1 clearfix">
	  <h4 class="mgt col">Useful Links</h4>
	  <ul>
	   <li><a class="col_2" href="#">About Us</a></li>
	   <li><a class="col_2" href="#">FAQs Page</a></li>
	   <li><a class="col_2" href="#">Checkout</a></li>
	   <li><a class="col_2" href="#">Services</a></li>
	   <li><a class="col_2" href="#">Contact Us</a></li>
	  </ul>
	 </div>
	</div>
	<div class="col-sm-3">
	 <div class="footer_1i1 clearfix">
	  <h4 class="mgt col">Get In Touch</h4>
	  <h6 class="col_2"><i class="fa fa-map-marker"></i> 65 North Park Avenue, USA</h6>
	  <h6 class="col_2"><i class="fa fa-envelope"></i> <a class="col_2" href="#">info@gmail.com</a></h6>
	  <h6 class="col_2"><i class="fa fa-phone"></i> +91 123 456 7890</h6>
	  <h6 class="col_2"><i class="fa fa-fax"></i> +91 123 456 7890</h6>
	  <h6 class="col_2"><i class="fa fa-globe"></i> All Country Realhome</h6>
	 </div>
	</div>
	<div class="col-sm-3">
	 <div class="footer_1i1 clearfix">
	  <h4 class="mgt col">Follow Us</h4>
      <p class="col_2">Follow & Subscribe your email to get new business tips.</p>
	  <ul class="social-network social-circle">
                        <li><a href="#" class="icoRss" title="Rss"><i class="fa fa-rss"></i></a></li>
                        <li><a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#" class="icoGoogle" title="Google +"><i class="fa fa-google-plus"></i></a></li>
                        <li><a href="#" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
      </ul>
	  <input class="form-control" placeholder="Your Email" type="text">
	 </div>
	</div>
   </div>
   <div class="footer_2 text-center clearfix">
	 <div class="col-sm-12">
	  <p class="col_2 mgt">© 2013 Your Website Name. All Rights Reserved | Design by <a class="col_1" href="http://www.templateonweb.com">TemplateOnWeb</a></p>
	 </div>
   </div>
  </div>
 </div>
</section>


<script src="js/classie.js"></script>
<script src="js/cbpAnimatedHeader.js"></script>
<script>
    function validateEmail() {
        var emailInput = document.querySelector('input[name="email"]');
        var email = emailInput.value;
        // Regular expression for a basic email validation
        var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

        if (!emailRegex.test(email)) {
            alert("Please enter a valid email address.");
            emailInput.focus();
            return false; // Prevent form submission
        }

        return true; // Allow form submission
    }
</script>
</body>
 
</html>
