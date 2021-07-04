<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registered Successfully</title>
</head>
<body>
	
		<h1>
			Congrats,
			<c:out value="${currentUser.name}" /> you have registered success fully!!
		</h1>
		<h3> click here to sign in to our website:
			<a href="/login">Sign In</a>
		</h3>



</body>
</html>