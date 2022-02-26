<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>REGISTER</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">

</head>

<body>
<h1>USER REGISTRATION PAGE</h1>

<form:form modelAttribute="registersubmit" action="/registersubmit" method="post">
<table class="tableclass">
<tr>
<td><form:label path="name">NAME:</form:label></td>
<td><form:input path="name" /></td>
<td><form:errors path="name"/></td>
</tr>
<tr>
<td><form:label path="mobileno">MOBILE NO:</form:label></td>
<td><form:input path="mobileno" /></td>
<td><form:errors path="mobileno"/></td>
</tr>
<tr>
<td><form:label path="password">PASSWORD:</form:label></td>
<td><form:password path="password"/></td>
<td><form:errors path="password"/></td>
</tr>
<tr>
<td><form:label path="emailid">EMAIL ID:</form:label></td>
<td><form:password path="emailid"/></td>
<td><form:errors path="emailid"/></td>
</tr>
<tr>
<td><form:label path="passhint">PASSWORD HINT:</form:label></td>
<td><form:password path="passhint"/></td>
<td><form:errors path="passhint"/></td>
</tr>
</table>
<form:button type="submit">SUBMIT</form:button>
</form:form>
<h3 style="font-color:red">${msg}</h3>
<br>
<p>your mobile number will be your user id</p>

</body>
</html>