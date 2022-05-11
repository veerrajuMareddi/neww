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
<body style="background-color: grey ;">
<style>
	form {
		width: 300px;
		margin: 0 auto;
	}
</style>
<form action ="${pageContext.request.contextPath}/src/getByChild" method="post">
<div class="form-group">
    <label for="branchManager">Manager Name</label>
    <input type="text" class="form-control" name ="assistManager"  id="branchManager" aria-describedby="emailHelp" placeholder="Enter Name">
   </div>
    <div class="form-group mt-2">
  <button type="submit" class="btn btn-primary">Next</button>
  </div>
</form>
</body>
</html>