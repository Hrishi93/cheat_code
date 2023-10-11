<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
  	<link rel="stylesheet" type="text/css" href="style.css">
  	<style>
  		form {
    max-width: 400px;
    margin: 0 auto;
    background-color: hotpink;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
}

/* Form label and input styles */
label {
    display: block;
    margin-bottom: 10px;
    font-weight: bold;
}

input[type="email"],
input[type="password"] {
    width: 80%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

input[type="submit"] {
    background-color: #007BFF;
    color: #fff;
    border: none;
    padding: 10px 20px;
    font-weight: bold;
    border-radius: 5px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}
  	</style>
</head>
<body>
<div class="content">
<h1>Login</h1>
    <form action="LoginServlet" method="post">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br>
        <input type="submit" value="Login">
    </form>
</div>
<div class="back-button">
            <a href="index.html">Back to Home</a>
</div>
    
</body>
</html>
    