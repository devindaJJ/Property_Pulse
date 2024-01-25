<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Payment Account</title>
    
    <!-- Add Bootstrap CSS -->
<!--     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> -->
    
    <style>
    
        
        body {
            background-color: #f0f0f0;
        }
        table {
            width: 50%;
            margin: 0 auto;
        }
        td {
            padding: 5px;
        }
    </style>
</head>
<body>
<c:forEach var="cus" items="${cusDetails}">    
    <c:set var="paymentId" value="${cus.payment_id}"/>
    <c:set var="cardName" value="${cus.cardName}"/>
    <c:set var="cardNumber" value="${cus.cardNumber}"/>
    <c:set var="expYear" value="${cus.expYear}"/>
    <c:set var="expMonth" value="${cus.expMonth}"/>
    <c:set var="cvv" value="${cus.cvv}"/>
    <c:set var="userId" value="${cus.paymentUserId}"/>    
</c:forEach>

<%@ include file="header.jsp"%>
<section id="center" class="clearfix center_about">
 <div class="container clearfix">
  <div class="row">
   <div class="center_about_1 text-center clearfix">
	<div class="col-sm-12">
	 <h1 class="mgt">Update Payment Details</h1><br><br>
	 <a href="<%= request.getContextPath() %>/show"><button type="button" class="btn btn-primary">Show Payment Details</button></a>
	</div>
   </div>
  </div>
 </div>
</section>

 <form action="update" method="post"> 
    <div class="form-group">
        <label for="paymentId">Payment Id:</label>
        <input type="text" class="form-control" id="paymentId" name="paymentId" value="${paymentId}">
    </div>
    <div class="form-group">
        <label for="cardName">Card Name:</label>
        <input type="text" class="form-control" id="cardName" name="cardName" value="${cardName}">
    </div>
    <div class="form-group">
        <label for="cardNumber">Card Number:</label>
        <input type="text" class="form-control" id="cardNumber" name="cardNumber" value="${cardNumber}">
    </div>
    <div class="form-group">
        <label for="expYear">Expire Year:</label>
        <input type="text" class="form-control" id="expYear" name="expYear" value="${expYear}">
    </div>
    <div class="form-group">
        <label for="expMonth">Expire Month:</label>
        <input type="text" class="form-control" id="expMonth" name="expMonth" value="${expMonth}">
    </div>
    <div class="form-group">
        <label for="cvv">CVV:</label>
        <input type="text" class="form-control" id="cvv" name="cvv" value="${cvv}">
    </div>
    <button type="submit" class="btn btn-primary">Update Payment Details</button>
	<a href="<%= request.getContextPath() %>/delete?paymentId=${paymentId}">
    <button type="button" class="btn btn-primary">Delete Payment</button></a>
	</form> 
    
    <%@ include file="footer.jsp"%>
    
</body>
</html>
