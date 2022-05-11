
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
	<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>BranvhDetails</title>
</head>
<body style="background-color: white;">

<center>
<style>
	form {
		width: 300px;
		margin: 0 auto;
	}
</style>
<h1>OiL Corporation Required Data</h1>

<br>
<center>
<table border="3" width=1000 style="text-align:center">
 <TR>
  </TR>
</center>
<tr>
<center>
<th>Branch</th>
<th>Location</th>
<th>Branch Manager</th>
<th>Resreves</th>
<th>Price</th>
<th>Assistant Manager</th>
<th>Total Employees</th>
<th>Basic salary</th>
<th>Crude Prices</th>
<th>Petrol prices</th>
<th>Deisel Prices</th>
<th>Gas Prices</th>
</center>

</tr>
<tr>							
<center>

<c:forEach var="getId" items="${getId}">

<td>${getId.corp.branch}</td>
<td>${getId.corp.location}</td>
<td>${getId.corp.branchManager}</td>
<td>${getId.corp.oilReserves}</td>
<td>${getId.corp.barrelPrice}</td>
<td>${getId.assistManager}</td>
<td>${getId.toatalEmployees}</td>
<td>${getId.salary}</td>
<td>${getId.corp.prices.crudePrice}</td>
<td>${getId.corp.prices.petrolPrice}</td>
<td>${getId.corp.prices.dieselPrice}</td>
<td>${getId.corp.prices.gasPrice}</td>


</center>
</tr>
</c:forEach>
</table>
</center>
<a class="btn btn-info" href="/src/callsave">Add Details</a>
<a class="btn btn-danger" href="/src/index">Back</a>


</body>
</html>
