<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Payment Insert</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/global.css" rel="stylesheet">
	<link href="css/index.css" rel="stylesheet">
	<link href="css/element.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
	<link href="https://fonts.googleapis.com/css?family=Jura" rel="stylesheet">
	<script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </head>

</head>
<body>
<%@ include file="header.jsp"%>

<section id="center" class="clearfix center_about">
 <div class="container clearfix">
  <div class="row">
   <div class="center_about_1 text-center clearfix">
	<div class="col-sm-12">
	 <h1 class="mgt">Payment Insert</h1><br><br>
	</div>
   </div>
  </div>
 </div>
</section>


<form action="insert" method="post">
    <div class="form-group">
        <label for="cardName">Card Name</label>
        <input type="text" id="cardName" name="cardName" class="form-control" required>
    </div>
    <div class="form-group">
        <label for="cardNumber">Card Number</label>
        <input type="text" id="cardNumber" name="cardNumber" class="form-control" required>
    </div>
    <div class="form-group">
        <label for="expYear">Expire Year</label>
        <input type="text" id="expYear" name="expYear" class="form-control" required>
    </div>
    <div class="form-group">
        <label for="expMonth">Expire Month</label>
        <input type="text" id="expMonth" name="expMonth" class="form-control" required>
    </div>
    <div class="form-group">
        <label for="cvv">CVV</label>
        <input type="text" id="cvv" name="cvv" class="form-control" required>
    </div>
    <input type="submit" name="submit" value="Add Payment" class="btn btn-primary">
    
</form>

</body>
    <%@ include file="footer.jsp"%>

</html>
