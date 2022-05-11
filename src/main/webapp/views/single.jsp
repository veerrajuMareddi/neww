
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<title>details</title>
</head>
<body>

<h1>Confirm Details Once</h1>
<br>
<table border="1">
<tr>
<th>Branch</th>
<th>Location</th>
<th>Branch Manager</th>
<th>Resreves</th>
<th>Price</th>
<th>Assitant Manager</th>
<th>Total Employees</th>
<th>Basic salary</th>
<th>Crude Prices</th>
<th>Petrol prices</th>
<th>Deisel Prices</th>
<th>Gas Prices</th>
<th>update</th>
<th>Delete</th>

</tr>
<c:url var="deleteLink" value="/src/deleteById">
								<c:param name="Id" value="${details.branch}" />
							</c:url>

<c:url var="updateLink" value="/src/update">
								<c:param name="Id" value="${details.branch}" />
							</c:url>

<tr>							
<center>
<td>${details.branch}</td>
<td>${details.location}</td>
<td>${details.branchManager}</td>
<td>${details.oilReserves}</td>
<td>${details.barrelPrice}</td>
<td>${details.emp.assistManager}</td>
<td>${details.emp.toatalEmployees}</td>
<td>${details.emp.salary}</td>
<td>${details.prices.crudePrice}</td>
<td>${details.prices.petrolPrice}</td>
<td>${details.prices.dieselPrice}</td>
<td>${details.prices.gasPrice}</td>
<td><a href="${updateLink}" class="btn btn-info">Update</a></td>
<td><a href="${deleteLink}" class="btn btn-danger">delete</a></td>


</center>
</tr>

</table>

<a href=></a>
<a class="btn btn-info" href="/src/index">Home</a>
</body>
</html>
