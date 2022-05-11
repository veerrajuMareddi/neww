
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
<title>Insert title here</title>
</head>
<body>
<center>
<h1>OiL Corporation Complete Data</h1>

<br>
<table border="3" style="width:1000" style="text-align:center">

<tr>
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
<th>Update Details </th>
<th>Delete Details</th>
</tr>
<c:forEach var="emp" items="${oilCorp}" >
<tr>


<c:url var="deleteLink" value="/src/deleteById">
								<c:param name="Id" value="${emp.branch}" />
							</c:url>

<c:url var="updateLink" value="/src/update">
								<c:param name="Id" value="${emp.branch}" />
							</c:url>							
<center>
<td>${emp.branch}</td>
<td>${emp.location}</td>
<td>${emp.branchManager}</td>
<td>${emp.oilReserves}</td>
<td>${emp.barrelPrice}</td>
<td>${emp.emp.toatalEmployees}</td>
<td>${emp.emp.salary}</td>
<td>${emp.prices.crudePrice}</td>
<td>${emp.prices.petrolPrice}</td>
<td>${emp.prices.dieselPrice}</td>
<td>${emp.prices.gasPrice}</td>
<td><a href="${updateLink}" class="btn btn-info">Update</a></td>
<td><a href="${deleteLink}" class="btn btn-danger">delete</a></td>
</center>
</tr>
</c:forEach>

</table>
<a class="btn btn-info" href="/src/callsave">Add Details</a>
<a class="btn btn-primary" href="/src/index">Home</a>


</center>

</body>
</html>

