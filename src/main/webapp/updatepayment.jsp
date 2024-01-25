<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Update your Payment Details</title>

    <!-- Add Bootstrap CSS -->
    <script> //validation of 16-digit card No
        function validateCardNumber() {
            var cardNumber = document.getElementById("cardNumber").value;
            var cardNumberPattern = /^\d{16}$/; // 16-digit number pattern

            if (!cardNumberPattern.test(cardNumber)) {
                alert("Card number must be a 16-digit number.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>

<c:forEach var="cus" items="${cusDetails}">    
    <c:set var="paymentId" value="${cus.paymentId}"/>
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
	 <form action="updateshowby" method="POST">
           <button type="submit" class="btn btn-primary" id="show-properties-button">Show Payment Details</button>
     </form>
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
        <input type="text" class="form-control" id="cardName" name="cardName" value="${cus.cardName}">
    </div>
    <div class="form-group">
        <label for="cardNumber">Card Number:</label>
        <input type="text" class="form-control" id="cardNumber" name="cardNumber" value="${cus.cardNumber}">
    </div>
    <div class="form-group">
        <label for="expYear">Expire Year:</label>
        <input type="text" class="form-control" id="expYear" name="expYear" value="${cus.expYear}">
    </div>
    <div class="form-group">
        <label for="expMonth">Expire Month:</label>
        <input type="text" class="form-control" id="expMonth" name="expMonth" value="${cus.expMonth}">
    </div>
    <div class="form-group">
        <label for="cvv">CVV:</label>
        <input type="text" class="form-control" id="cvv" name="cvv" value="${cus.cvv}">
    </div>
    <div class="form-group">
        <label for="userId">User Id:</label>
        <input type="text" class="form-control" id="userId" name="userId" value="${cus.paymentUserId}">
    </div>
    <button type="submit" class="btn btn-primary">Update Payment Details</button>
    <a href="<%= request.getContextPath() %>/deletepayment"><button type="button" class="btn btn-primary">Delete Payment</button></a>
</form>

    <br>
<%@ include file="footer.jsp"%>

</body>
</html>
