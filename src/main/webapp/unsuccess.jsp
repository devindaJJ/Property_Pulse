<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Unsuccess Page</title>

<!-- Add Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style>
   
    body {
        background-color: #f0f0f0;
        padding: 20px;
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100vh;
        margin: 0;
    }

    .error-text {
        color: #dc3545; /* Red color for error */
        font-size: 36px;
        text-transform: uppercase;
        text-shadow: 2px 2px 2px rgba(0, 0, 0, 0.4); /* Add a 3D text effect */
        animation: shake 0.5s infinite; /* Apply the shake animation */
    }

    /* Define the shake animation */
    @keyframes shake {
        0% { transform: translateX(0); }
        25% { transform: translateX(-5px); }
        50% { transform: translateX(5px); }
        75% { transform: translateX(-5px); }
        100% { transform: translateX(5px); }
    }
</style>
</head>
<body>
    <div>
        <h1 class="error-text">Attempt Unsuccessful!</h1>
    </div>
</body>
</html>
