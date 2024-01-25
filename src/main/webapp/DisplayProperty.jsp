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
	<link href="css/detail.css" rel="stylesheet">
	<link href="css/element.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
	<link href="https://fonts.googleapis.com/css?family=Jura" rel="stylesheet">
	<script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </head>
  
<body>
 <%@ include file="header.jsp"%>
 <c:if test="${not empty propDetails}">
    

<section id="center" class="clearfix center_detail">
 <div class="center clearfix">
	   <div id="carousel" class="carousel slide carousel-fade">
 			<img src="data:image/jpeg;base64, ${propDetails[0].imageData}" alt="property-image">
          </div>
	 </div>
</section>

<section id="list_detail">
 <div class="container clearfix">
  <div class="row">
   <div class="list_detail_1 clearfix">
    <div class="col-sm-8">
	 <div class="list_detail_1l clearfix">
	  <div class="list_detail_1l1 clearfix">
	   <h3 class="mgt">${propDetails[0].price} / <span class="span_2">For ${propDetails[0].propStatus}</span></h3>
	   <p><i class="fa fa-map-marker"></i>  ${propDetails[0].propAddress}</p>
	  </div>
	  
	  <div class="list_detail_1l2 clearfix">
      <h3 class="mgt">${propDetails[0].propertyTitle}</h3>
      <br>
      <h6>Published Date: ${propDetails[0].datePublished}</h6>
	  </div>
	  
	  <div class="list_detail_1l2 clearfix">
      <h4 class="mgt">Property Info</h4>
	  <hr>
	  <div class="list_detail_1l2i clearfix">
	   <div class="col-sm-3 space_left">
	    <h5 class="mgt">BedRooms</h5>
		<h6 class="col_1">${propDetails[0].propRooms}</h6>
	   </div>
	   <div class="col-sm-3 space_left">
	    <h5 class="mgt">Area</h5>
		<h6 class="col_1">${propDetails[0].landSize} sq ft</h6>
	   </div>
	  </div>
	  <div class="list_detail_1l2i clearfix">
	   <div class="col-sm-3 space_left">
	    <h5 class="mgt">Type</h5>
		<h6 class="col_1">${propDetails[0].propType}</h6>
	   </div>
	   <div class="col-sm-3 space_left">
	    <h5 class="mgt">price</h5>
		<h6 class="col_1">$33244</h6>
	   </div>
	   <div class="col-sm-3 space_left">
	    <h5 class="mgt">City</h5>
		<h6 class="col_1">${propDetails[0].propCity}</h6>
	   </div>
	  </div>
	  </div>
	  <div class="list_detail_1l2 clearfix">
      <h4 class="mgt">Description</h4>
	  <hr>
      <p> ${propDetails[0].description}.</p>
	  </div>
	  <div class="list_detail_1l2 clearfix">
      <h4 class="mgt">Floor Plan</h4>
	  <hr>
	  <table>
			  <tbody><tr>
				<th class="big_p"><h5 class="mgt">Size</h5></th>
				<th class="big_p"><h5 class="mgt">Rooms</h5></th>
			  </tr>
			  <tr>
				<td><h6 class="mgt">1400</h6></td>
				<td><h6 class="mgt">5</h6></td>
			  </tr>
		   </tbody></table>
	  </div>
	  </div>
	</div>
	<div class="col-sm-4">
	 <div class="list_detail_1r clearfix">
	 </div>
	</div>
   </div>
  </div>
</div>
</section>
</c:if>
<%@ include file="footer.jsp"%>


<script src="js/classie.js"></script>
<script src="js/cbpAnimatedHeader.js"></script>

</body>
 
</html>
