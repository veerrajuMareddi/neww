
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

	<body style="background-color: pink;">
<style>
	form {
		width: 300px;
		margin: 0 auto;
	}
</style>
   <form action ="${pageContext.request.contextPath}/src/saveModel" method="post">
   <h1>Branch Details</h1>
   <div class="form-group">
    <label for="branchManager">Branch Manager</label>
    <input type="text" class="form-control" name ="branchManager" id="branchManager" aria-describedby="emailHelp" placeholder="Enter Name">
   </div>
   <div class="form-group">
    <label for="branchManager">Location</label>
    <input type="text" class="form-control" name ="location" id="branchManager" aria-describedby="emailHelp" placeholder="Enter Branch location">
   </div>
   <div class="form-group">
    <label for="branchManager">oil reserves</label>
    <input type="text" class="form-control" name ="oilReserves" id="branchManager" aria-describedby="emailHelp" placeholder="Enter Oil have">
   </div>
    <div class="form-group">
    <label for="branchManager">Price of Barrel</label>
    <input type="number" class="form-control" name ="barrelPrice" id="branchManager" aria-describedby="emailHelp" placeholder="Enter Price of Barrel">
   </div>
   <div class="form-group">
    <input type="hidden" class="form-control" name ="emp.salary" id="branchManager" aria-describedby="emailHelp" placeholder="Enter Name">
   </div>
  <!-- <div class="form-group">
    <label for="exampleInputPassword1">Salary</label>
    <input type="number" class="form-control" name="emp.salary" id="oilReserves" placeholder="Enter Barrel Price">
  </div> -->
  
    <div class="form-group">
    <input type="hidden" class="form-control" name="prices.crudePrice" id="oilReserves" placeholder="Enter Barrel Price">
  </div>
 <!--  <div class="form-group">
    <label for="exampleInputPassword1"> petrol price</label>
    <input type="number" class="form-control" name="prices.petrolPrice" id="oilReserves" placeholder="Enter Barrel Price">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">diesel price</label>
    <input type="number" class="form-control" name="prices.dieselPrice" id="oilReserves" placeholder="Enter Barrel Price">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Gas price</label>
    <input type="number" class="form-control" name="prices.gasPrice" id="oilReserves" placeholder="Enter Barrel Price">
  </div>
 -->  <!-- <div class="form-group">
    <label for="exampleInputPassword1">Salary</label>
    <input type="number" class="form-control" name="emp.salary" id="oilReserves" placeholder="Enter Barrel Price">
  </div> -->
  <div class="form-group mt-2">
  <button type="submit" class="btn btn-primary">Next</button>
  </div>
</form>	
</body>
</html>


