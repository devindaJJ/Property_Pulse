<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Payment Delete</title>
</head>
<body><%@ include file="header.jsp"%>
<section id="center" class="clearfix center_about">
 <div class="container clearfix">
  <div class="row">
   <div class="center_about_1 text-center clearfix">
	<div class="col-sm-12">
	 <h1 class="mgt">Payment Delete</h1><br><br>
	</div>
   </div>
  </div>
 </div>
</section>
<%
   
    String cardName = request.getParameter("cardName");
    String cardNumber = request.getParameter("cardNumber");
    String expYear = request.getParameter("expYear");
    String expMonth = request.getParameter("expMonth");
    String cvv = request.getParameter("cvv");
    String userId = request.getParameter("userId");
%>

<form action="delete" method="post">
    <table class="table">
     
        <tr>
            <td>Card Name</td>
            <td><input type="text" name="cardName" value="<%=cardName%>" ></td>
        </tr>
        <tr>
            <td>Card Number</td>
            <td><input type="text" name="cardNumber" value="<%=cardNumber%>" readonly></td>
        </tr>
        <tr>
            <td>Expire Year</td>
            <td><input type="text" name="expYear" value="<%=expYear%>" readonly></td>
        </tr>
        <tr>
            <td>Expire Month</td>
            <td><input type="text" name="expMonth" value="<%=expMonth%>" readonly></td>
        </tr>
        <tr>
            <td>CVV</td>
            <td><input type="text" name="cvv" value="<%=cvv%>" readonly></td>
        </tr>
    </table>
    <br>
    <input type="submit" name="submit" value="Delete My Details" class="btn btn-danger">
</form>
<%@ include file="footer.jsp"%>

</body>
</html>
