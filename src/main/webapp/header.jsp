<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.HttpSession" %>

<%
    HttpSession session1 = request.getSession(false);
    boolean userInSession = (session1 != null && session1.getAttribute("User_ID") != null);
%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Property Pulze</title>
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
<section id="header">
	<nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp"><i class="fa fa-home"></i> Property Pulze</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a class="tag_menu" href="index.jsp">Home</a>
                    </li>
                    <li>
                        <a class="tag_menu" href="supportTicket.jsp">Contact</a>
                    </li>
                    <li class="dropdown">
					  <a class="tag_menu" href="paymentinsert.jsp" data-toggle="dropdown" role="button" aria-expanded="false">Payment<span class="caret"></span></a>
					  <ul class="dropdown-menu drop_1" role="menu">
					  <li><a href="paymentinsert.jsp">Payment Insert Details</a></li>
						<li><a href="paymentaccount.jsp">View Payment Details</a></li>
					  </ul>
                    </li>
                    <% if (userInSession) { %>
				            <li>
                        		<a class="tag_menu" href="userDashboard.jsp">Dashboard</a>
                    		</li>	
				        <% } else { %>
				        <% } %>
                </ul>
				<ul class="nav navbar-nav navbar-right">
                    <li>
				        <% if (userInSession) { %>
				            <a class="tag_menu active_tab" href="<%= request.getContextPath() %>/logout">Logout</a>
				        <% } else { %>
				            <a class="tag_menu active_tab" href="userlogin.jsp">Log In / Sign Up</a>
				        <% } %>
				    </li>
                    <li>
                        <a class="tag_menu button_1 mgt" href="addproperty.jsp">Submit Property</a>
                    </li>
                </ul>	 
            </div>
        </div>
    </nav>
</section>

<script src="js/classie.js"></script>
<script src="js/cbpAnimatedHeader.js"></script>

</body>
 
</html>
