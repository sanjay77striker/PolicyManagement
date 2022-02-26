<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>INDEX</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">

</head>
<body>
<h1>POLICY MANAGEMENT SYSTEM</h1>
<h2>LOGIN PAGE</h2>
<form action="/loginsubmit" method="post">
<table class="tableclass"><tr>
<td><label for="mobileno">USER ID:</label></td>
<td><input type="text" id="mobileno" name="mobileno"/></td>
</tr>
<tr>
<td><label for="password">PASSWORD:</label></td>
<td><input type="password" id="password" name="password"/></td>
</tr>
</table>
<input type="submit"  value="LOGIN">
</form>
<br>
<h4>${hint}</h4>
<h3>${msg}</h3>
<br>
<a href="/register"><button>REGISTER</button></a>


</body>
</html>