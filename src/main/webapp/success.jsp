<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Success Page</title>

    <!-- Add Bootstrap CSS -->
<!--     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> -->

    <style>
        body {
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        h1 {
            color: #007bff;
            text-shadow: 2px 2px 2px rgba(0, 0, 0, 0.4); /* Add a 3D text effect */
            animation: scale 2s ease infinite; /* Add a scale animation */
        }

        /* Define the scale animation */
        @keyframes scale {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.2); } /* Scales up to 120% */
        }
    </style>
</head>
<body>
<%@ include file="header.jsp"%>

    <h1>Attempt Successful!</h1>
    
    
</body>
</html>
