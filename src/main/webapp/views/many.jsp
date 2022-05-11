<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action ="${pageContext.request.contextPath}/src/saveCountry" method="post">
<input type="hidden" name="con.barrelPrice">
<input type="hidden" name="con.emp.salary">
<input type="hidden" name="con.prices.crudePrice">
<input type="text" name="country">
<input type="submit">
</form>

</body>
</html>