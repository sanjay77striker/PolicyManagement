<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SHOW POLICY</title>

<link rel="stylesheet" type="text/css" href="css/styles2.css">
</head>
<body>
<h4><a id="home" href="/gohome">HOME</a></h4><br>
<h1>POLICY DETAILS</h1>

	<table class="tableclasstwo">
		<tr>
			<th>POLICY ID</th>
			<th>POLICY NAME</th>
			<th>POLICY PAY PERIOD</th>
			<th>DUE AMOUNT(Rs.)</th>
			<th>NUMBER OF YEARS</th>
			<th>MATURITY AMOUNT(Rs.)</th>
			<th>NOMINATION</th>
			<th>BANK NAME</th>
			<th>ACCOUNT NO</th>
			<th>USER ID(MOBILE)</th>
			<th>POLICY HOLDER</th>

		</tr>
		<c:forEach items="${pol}" var="p">
			<tr>
				<td><c:out value="${p.policyid}"></c:out></td>
				<td><c:out value="${p.policyname}"></c:out></td>
				<td><c:out value="${p.policytype}"></c:out></td>
				<td><c:out value="${p.amount}"></c:out></td>
				<td><c:out value="${p.years}"></c:out></td>
				<td><c:out value="${p.maturity}"></c:out></td>
				<td><c:out value="${p.nomination}"></c:out></td>
				<td><c:out value="${p.bankname}"></c:out></td>
				<td><c:out value="${p.accountno}"></c:out></td>
				<td><c:out value="${p.userid}"></c:out></td>
				<td><c:out value="${p.username}"></c:out></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>