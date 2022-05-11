
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>BranvhDetails</title>
</head>
<body style="background-color: white;">
<style>
	form {
		width: 300px;
		margin: 0 auto;
	}
</style>
<h1>OiL Corporation Required Data</h1>
<a class="btn btn-info" href="/src/callsave">Add Details</a>

<br>
<table border="3" style="width:1000px" style="text-align:center">

<tr>
<center>
<th>Branch</th>
<th>Location</th>
<th>Branch Manager</th>
<th>Resreves</th>
<th>Price</th>
<th>Total Employees</th>
<th>Basic salary</th>
<th>Crude Prices</th>
<th>Petrol prices</th>
<th>Deisel Prices</th>
<th>Gas Prices</th>
</center>
</tr>
<c:forEach var="addi" items="${addii}">	
<tr>
					

<td>${addi.con.branch}</td>
<td>${addi.con.location}</td>
<td>${addi.con.branchManager}</td>
<td>${addi.con.oilReserves}</td>
<td>${addi.con.barrelPrice}</td>
<td>${addi.con.emp.toatalEmployees}</td>
<td>${addi.con.emp.salary}</td>
<td>${addi.con.prices.crudePrice}</td>
<td>${addi.con.prices.petrolPrice}</td>
<td>${addi.con.prices.dieselPrice}</td>
<td>${addi.con.prices.gasPrice}</td>
<td>${addi.country}</td>

	
</tr>
</c:forEach>
</table>
</body>
</html>
