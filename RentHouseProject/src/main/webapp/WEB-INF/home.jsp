<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
</head>
<body>
	<div style="display: flex; justify-content: space-between">
		<h1>
			Welcome,
			<c:out value="${currentUser.name}" />
		</h1>
		<form id="logoutForm" method="POST" action="/logout">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" /> <input type="submit" value="Logout!" />
		</form>
	</div>
	<div style="display: flex">
		<a href="/mainPage"> Go to Main Page</a> 
		<c:if test="${userRolles.contains(ownerRole)}">
		<a href="/view_ownProperties" style="margin-left: 15px">View My Own Properties</a>
		
		</c:if>
		

	</div>



</body>
</html>