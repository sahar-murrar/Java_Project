<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reserve Property</title>
</head>
<body>
	<p>
		<img src="images/<c:out value="${property.image}"></c:out>"
			alt="image_not_found">
	</p>
	<p>
		<c:out value="${property.type}"></c:out>
	</p>
	<p>
		<c:out value="${property.area}"></c:out>
	</p>
	<p>
		<c:out value="${property.bedrooms}"></c:out>
	</p>
	<p>
		<c:out value="${property.bathrooms}"></c:out>
	</p>
	<p>
		<c:out value="${property.city}"></c:out>
	</p>
	<p>Determine The Reservation Duration:</p>
	<form action="/property/reserve/${property.id}" method="post"
		style="margin-top: 15px">
		<p>
			Start Reservation Date: <input type="date" name="startReserveDate">
		</p>
		<p>
			End Reservation Date: <input type="date" name="endReserveDate">
		</p>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<input type="submit" value="Confirm Reservation">
	</form>

</body>
</html>