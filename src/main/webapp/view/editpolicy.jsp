<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EDIT POLICY</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
<h4><a id="home" href="/gohome">HOME</a></h4><br><br><br>
<h2>ENTER POLICY ID TO EDIT</h2>
<form action="/editpolicy" method="post">
<label for="policyid">POLICY ID:</label>
<input type="text" id="policyid" name="policyid"/><br><br>
<h3>${msg}</h3>
<input type="submit" placeholder="submit">
</form>


</body>
</html>