<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Successful</title>
     <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        .container {
            margin: 50px auto;
            max-width: 500px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #007BFF;
        }

        .success-message {
            color: black;
            font-weight: bold;
        }

        .record {
            text-align: left;
            margin-top: 20px;
            padding: 10px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

       
    </style>
</head>
<body>
    <h1>Registration Successful</h1>
    <div class="container">
        <p class="success-message">Your registration has been successfully completed!</p>
        <div class="record">
            <h2>Inserted Record:</h2>
            <p><strong>First Name:</strong> <%= request.getAttribute("firstname") %></p>
            <p><strong>Last Name:</strong> <%= request.getAttribute("lastname") %></p>
            <p><strong>Age:</strong> <%= request.getAttribute("age") %></p>
            <p><strong>12th Marks:</strong> <%= request.getAttribute("marks") %></p>
            <p><strong>Address:</strong> <%= request.getAttribute("address") %></p>
            <p><strong>Email Address:</strong> <%= request.getAttribute("email") %></p>
        </div>
        
    </div>
    <div class="back-button">
            <a href="index.html">Back to Home</a>
        </div>
</body>
</html>
