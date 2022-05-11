
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
<title>oilLmtd</title>
</head>
	<body style="background-color: skyblue;">
<style>
	form {
		width: 300px;
		margin: 0 auto;
	}
</style>
<form action ="${pageContext.request.contextPath}/src/employees" method="post">


<%-- <c:url>
<c:param name="Id" value="${emp.branch}" />
</c:url> --%>

<div class="form-group">
    <input type="hidden" class="form-control" name ="branch" value="${add.branch}" id="branchManager" aria-describedby="emailHelp" placeholder="Enter Name">
   </div>

<div class="form-group">
    <input type="hidden" class="form-control" name ="branchManager" value="${add.branchManager}" id="branchManager" aria-describedby="emailHelp" placeholder="Enter Name">
   </div>
   <div class="form-group">
    <input type="hidden" class="form-control" name ="location" value="${add.location}" id="branchManager" aria-describedby="emailHelp" placeholder="Enter Name">
   </div>
   <div class="form-group">
    <input type="hidden" class="form-control" name ="oilReserves" value="${add.oilReserves}" id="branchManager" aria-describedby="emailHelp" placeholder="Enter Name">
   </div>
    <div class="form-group">
    <input type="hidden" class="form-control" name ="barrelPrice" value="${add.barrelPrice}" id="branchManager" aria-describedby="emailHelp" placeholder="Enter Name">
   </div>
   <h1>Employees Details</h1>
   <div class="form-group">
    <input type="hidden" class="form-control" name ="emp.branch" value="${add.emp.branch}" id="branchManager" aria-describedby="emailHelp" placeholder="Enter Name">
   </div>
   <div class="form-group">
    <label for="branchManager">Assistant Manager</label>
    <input type="text" class="form-control" name ="emp.assistManager" value="${add.emp.assistManager}" id="branchManager" aria-describedby="emailHelp" placeholder="Enter total no">
   </div>
   
<div class="form-group">
    <label for="branchManager">No.Of Employees</label>
    <input type="number" class="form-control" name ="emp.toatalEmployees" value="${add.emp.toatalEmployees}" id="branchManager" aria-describedby="emailHelp" placeholder="Enter total no">
   </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Salary</label>
    <input type="number" class="form-control" name="emp.salary" id="oilReserves" value="${add.emp.salary}" placeholder="Enter salary">
  </div>
  
  <div class="form-group">
    <input type="hidden" class="form-control" name ="prices.branch" value="${add.prices.branch}" id="branchManager" aria-describedby="emailHelp" placeholder="Enter Name">
   </div>
  
    <div class="form-group">
    <input type="hidden" class="form-control" name="prices.crudePrice" value="${add.prices.crudePrice}" id="oilReserves" placeholder="Enter Barrel Price">
  </div>
  <div class="form-group">
    <input type="hidden" class="form-control" name="prices.petrolPrice" value="${add.prices.petrolPrice}" id="oilReserves" placeholder="Enter Barrel Price">
  </div>
  <div class="form-group">
    <input type="hidden" class="form-control" name="prices.dieselPrice" value="${add.prices.dieselPrice}" id="oilReserves" placeholder="Enter Barrel Price">
  </div>
  <div class="form-group">
    <input type="hidden" class="form-control" name="prices.gasPrice" id="oilReserves" value="${add.prices.gasPrice}" placeholder="Enter Barrel Price">
  </div> 
  <!-- <div class="form-group">
    <label for="exampleInputPassword1">Salary</label>
    <input type="number" class="form-control" name="emp.salary" id="oilReserves" placeholder="Enter Barrel Price">
  </div> -->
 
  <div class="form-group mt-2">
  <button type="submit" class="btn btn-primary">Next</button>
  </div>
</form>

	
</body>
</html>
