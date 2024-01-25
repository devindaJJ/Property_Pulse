<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.bs.controller.propertyController" %>
<%@ page import="com.bs.model.property" %>
<%@ page import="java.util.List" %>
<%@ page import="java.io.IOException" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Property Pulze</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/global.css" rel="stylesheet">
	<link href="css/index.css" rel="stylesheet">
	<link href="css/element.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
	<link href="https://fonts.googleapis.com/css?family=Jura" rel="stylesheet">
	<script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </head>
  
<body>
 <%@ include file="header.jsp"%>

<section id="center" class="center_home clearfix">
<div class="center_home_m clearfix">
 <div class="container">
  <div class="row">
   <div class="center_home_1 clearfix">
    <h1 class="text-center col">Find Your RealHome</h1>
   </div>
  </div>
 </div>
</div>
</section>

<section id="popular">
<%
    List<property> propDetails = propertyController.DisplayAllProperty();
    request.setAttribute("propDetails", propDetails);
    
%>
    <div class="container">
        <div class="row">
            <div class="popular_1 text-center clearfix">
                <div class="col-sm-12">
                    <h1 class="mgt">New and Top Rated Property</h1>
                    <p>Find new and top-rated property for you.</p>
                </div>
            </div>
            <div class="popular_2 clearfix">
                <c:forEach var="prop" items="${propDetails}">
                <c:set var="title" value="${prop.propertyTitle} "/>
                <c:set var="rooms" value="${prop.propRooms}"/>
                    <div class="col-sm-4">
                        <div class="popular_2i clearfix">
                            <div class="popular_2i1 clearfix">
								<img src="data:image/jpeg;base64, ${prop.imageData}" alt="property-image" width="370" height="270">
                            </div>
                            <div class="popular_2i2 clearfix">
                                <h5 class="mgt"><a href="#">FOR ${prop.propStatus}</a></h5>
                            </div>
                        </div>
                        <div class="popular_2i3 clearfix">
                            <h5 class="mgt"><a href="<%= request.getContextPath() %>/displaypropByPropID?propid=${prop.propertyId}">${prop.propertyTitle }<i class="fa fa-check-square col_1"></i></a></h5>
                            <h4 class="col_1">${prop.price} / <span class="col_2">Total</span></h4>
                            <h6><i class="fa fa-hotel col_2"></i> ${prop.propRooms} Beds </h6>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</section>


<section id="client">
 <div class="container">
  <div class="row">
   <div class="client_1  clearfix">
    <div class="col-sm-4">
	 <div class="client_1l clearfix">
	  <h1 class="mgt">What Clients Saying</h1>
	  <p>City Homes Management has truly made a difference in my property renting experience. The team is responsive, and their attention to detail is unmatched. I'm a satisfied tenant!.</p>
	  <h5><a class="button_1" href="#">See More Reviewer</a></h5>
	 </div>
	</div>
	<div class="col-sm-8">
	 <div class="client_1r clearfix">
	   <div id="carousel-example" class="carousel slide" data-ride="carousel">
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
				 <div class="col-sm-6 space_left">
				  <div class="client_1ri clearfix">
				    <img src="img/13.jpg" class="img-circle" alt="abc">
					<h5 class="mgt col_1"> Amith Botheju</h5>
					<h6>Prime Properties Enthusiast</h6>
					<p>City Homes Management sets the standard for property management. Their professionalism and commitment to excellence shine through in every interaction. I highly recommend their services to anyone in the market for prime properties. </p>
				  </div>
				  </div>
                 <div class="col-sm-6 space_left">
				  <div class="client_1ri clearfix">
				    <img src="img/14.jpg" class="img-circle" alt="abc">
					<h5 class="mgt col_1"> Saman Edirimuni</h5>
					<h6> Happy Homeowner</h6>
					<p>I purchased my dream home through City Homes Management, and it was a delight working with them. The process was smooth, and their guidance was invaluable. A big thanks to the team for making my homeownership journey so pleasant. </p>
				  </div>
				  </div>
                </div>
                <div class="item">
                  <div class="col-sm-6 space_left">
				  <div class="client_1ri clearfix">
				    <img src="img/15.jpg" class="img-circle" alt="abc">
					<h5 class="mgt col_1"> Mahinda Rajapakshe</h5>
					<h6>Happy Customer</h6>
					<p>I recently leased a property through City Homes Management, and the entire process was seamless. The team was prompt, professional, and answered all my queries. Renting has never been this easy!. </p>
				  </div>
				  </div>
                  <div class="col-sm-6 space_left">
				  <div class="client_1ri clearfix">
				    <img src="img/16.jpg" class="img-circle" alt="abc">
					<h5 class="mgt col_1"> Martin Wickramasinghe</h5>
					<h6>Customer</h6>
					<p>City Homes Management has been our go-to for property management services. Their reliability and trustworthiness stand out. They go the extra mile to ensure both landlords and tenants are satisfied. Highly recommended for a hassle-free property experience.. </p>
				  </div>
				  </div>
                </div>
            </div>
        </div>
	 </div>
	</div>
   </div>
  </div>
 </div>
</section>


<section id="places">
 <div class="places_m clearfix">
  <div class="container">
  <div class="row">
   <div class="places_1 text-center clearfix">
    <div class="col-sm-12">
	 <h1 class="mgt col">Are You Searching Top Places</h1>
	 <p class="col">If you find yourself in the pursuit of discovering the finest destinations, look no further. At Property Pulze, we specialize in curating a collection of top-tier places that cater to your preferences and needs. Whether you seek a serene residential neighborhood, a bustling commercial hub, or a charming spot for your business, we are here to guide you. Our commitment is to simplify your search for the top places, ensuring that each recommendation aligns with your unique vision. Trust Property Pulze to be your compass in the exploration of the most sought-after locales, because when it comes to finding the best places, your journey starts with us..</p>
	 <h5><a class="button_1" href="#">Browse Top Property Places</a></h5>
	</div>
   </div>
  </div>
 </div>
 </div>
</section>

<section id="work_h">
 <div class="container">
  <div class="row">
   <div class="popular_1 text-center clearfix">
    <div class="col-sm-12">
	 <h1 class="mgt"> See How It Works</h1>
	 <p>How to start work with us and working process</p>
	</div>
   </div>
   <div class="work_h_1 clearfix">
     <div class="col-sm-4">
	  <div class="work_h_1i text-center clearfix">
	   <div class="work_h_1ii clearfix">
	    <span class="col_4"><i class="fa fa-user"></i></span>
	   </div>
	   <div class="work_h_1ii1 clearfix">
	    <h5 class="bg_1">01</h5>
	   </div>
	  </div>
	  <div class="work_h_1i1 text-center clearfix">
	   <h4>Create An Account</h4>
	   <p>Uncover exclusive features by creating your account. Your gateway to a world of possibilities awaits as you join us today.</p>
	  </div>
	 </div>
	 <div class="col-sm-4">
	  <div class="work_h_1i text-center clearfix">
	   <div class="work_h_1ii clearfix">
	    <span class="col_5"><i class="fa fa-search"></i></span>
	   </div>
	   <div class="work_h_1ii1 clearfix">
	    <h5 class="bg_2">03</h5>
	   </div>
	  </div>
	  <div class="work_h_1i1 text-center clearfix">
	   <h4>Find and Search Property</h4>
	   <p>Effortlessly navigate properties with our intuitive search tools.</p>
	  </div>
	 </div>
	 <div class="col-sm-4">
	  <div class="work_h_1i text-center clearfix">
	   <div class="work_h_1ii clearfix">
	    <span class="col_6"><i class="fa fa-location-arrow"></i></span>
	   </div>
	   <div class="work_h_1ii1 clearfix">
	    <h5 class="bg_3">01</h5>
	   </div>
	  </div>
	  <div class="work_h_1i1 text-center clearfix">
	   <h4>Book Your Property</h4>
	   <p>Seal the deal on your dream property with ease. </p>
	  </div>
	 </div>
   </div>
  </div>
 </div>
</section>

<%@ include file="footer.jsp"%>

<script src="js/classie.js"></script>
<script src="js/cbpAnimatedHeader.js"></script>
 
</body>
 
</html>
