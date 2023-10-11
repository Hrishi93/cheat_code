<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Registration</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }

        h1 {
            color: #333;
        }

        .container {
            margin: 50px auto;
            max-width: 800px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #007BFF;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: grid;
            font-weight: bold;
        }

        .form-group input[type="text"],
        .form-group input[type="email"],
        .form-group input[type="password"],
        .form-group input[type="number"] {
            width: 50%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-group input[type="submit"] {
            background-color: Hotpink;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-weight: bold;
            border-radius: 5px;
            cursor: pointer;
        }

        .form-group input[type="submit"]:hover {
            background-color: #0056b3;
        }
         .form-group input[type="Reset"] {
            background-color: Hotpink;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-weight: bold;
            border-radius: 5px;
            cursor: pointer;
        }

        .form-group input[type="Reset"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Student Registration</h1>
    <div class="container">
        <form action="RegistrationServlet" method="post">
            <div class="form-group">
                <label for="firstname">First Name:</label>
                <input type="text" id="firstname" name="firstname" required>
            </div>
            <div class="form-group">
                <label for="lastname">Last Name:</label>
                <input type="text" id="lastname" name="lastname" required>
            </div>
            <div class="form-group">
                <label for="age">Age:</label>
                <input type="number" id="age" name="age" required>
            </div>
            <div class="form-group">
                <label for="marks">12th Marks:</label>
                <input type="number" id="marks" name="marks" required>
            </div>
            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" id="address" name="address" required>
            </div>
            <div class="form-group">
                <label for="email">Email Address:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Create Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <input type="submit" value="Register">
                <input type="Reset" value="Reset">
            </div>
        </form>
    </div>
    
    <div class="back-button">
            <a href="index.html">Back to Home</a>
        </div>
</body>
</html>