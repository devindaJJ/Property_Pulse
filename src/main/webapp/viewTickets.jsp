<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>View Ticket</title>
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
	 <h1 class="mgt">View Ticket</h1>
	</div>
   </div>
  </div>
 </div>
</section>

<section id="login">
 <div class="container clearfix">
  <div class="row">
   <div class="login_1 clearfix">
	  <div class="account-box">
            
                <form class="form-signin" action="ticketview" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" name="email" placeholder="*Enter Your Email" required>
                </div>
               
                <input type="submit" class="btn btn-lg btn-block purple-bg" value="View Tickets" >
                    
                <input type="reset" class="btn btn-lg btn-block purple-bg" value="Clear">
                    
                </form><br>          
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
