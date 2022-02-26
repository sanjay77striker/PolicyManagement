<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HOME</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
<h4><a id="home" href="/logout">LOG OUT</a></h4><br><br><br>
	<h1>${username}</h1>
	<h2>HOME PAGE</h2><br><br>
	
	<a href="/addpolicy"><button>ADD POLICY</button></a>
	<a href="/showpolicy"><button>SHOW POLICY</button></a>
	<a href="/editpolicy"><button>EDIT POLICY</button></a>
	<a href="/deletepolicy"><button>DELETE POLICY</button></a><br><br>
	<h3>${msg}</h3>
	
	
</body>
</html>