<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>        
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UPDATE POLICY</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>


<form:form modelAttribute="updatepolicy" action="updatepolicy" method="post">
<h4><a id="home" href="/gohome">HOME</a></h4><br><br><br>
<h1>Modify for your policy id: ${updatepolicy.policyid}</h1>
<form:label path="policyid"></form:label>
<form:hidden path="policyid" />
<form:errors path="policyid"/><br>

<table class="tableclass">
<tr>
<td><form:label path="policyname">POLICY NAME:</form:label></td>
<td><form:select path="policyname" items="${policyname}"/></td>
<td><form:errors path="policyname"/></td>
</tr>
<tr>
<td><form:label path="policytype">PAY PERIOD:</form:label></td>
<td><form:select path="policytype" items="${policytype}" /></td>
<td><form:errors path="policytype"/></td>
</tr>
<tr>
<td><form:label path="amount">DUE(Rs.):</form:label></td>
<td><form:input path="amount" /></td>
<td><form:errors path="amount"/></td>
</tr>
<tr>
<td><form:label path="years">YEARS:</form:label></td>
<td><form:input path="years" /></td>
<td><form:errors path="years"/></td>
</tr>
<tr>
<td><form:label path="maturity">MATURITY AMOUNT(Rs.):</form:label></td>
<td><form:input path="maturity" /></td>
<td><form:errors path="maturity"/></td>
</tr>
<tr>
<td><form:label path="nomination">NOMINATION:</form:label></td>
<td><form:input path="nomination" /></td>
<td><form:errors path="nomination"/></td>
</tr>
<tr>
<td><form:label path="bankname">BANK NAME:</form:label></td>
<td><form:input path="bankname" /></td>
<td><form:errors path="bankname"/></td>
</tr>
<tr>
<td><form:label path="accountno">ACCOUNT NO:</form:label></td>
<td><form:input path="accountno" /></td>
<td><form:errors path="accountno"/></td>
</tr>
</table>

<form:button type="submit">SUBMIT</form:button>

</form:form>
</body>
</html>