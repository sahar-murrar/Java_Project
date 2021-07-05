<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Properties</title>
</head>
<body>
<h1>All Properties</h1>
	<c:forEach items="${allProperties}" var="property">
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
		<p>-----------------------------------------------------</p>
	</c:forEach>

</body>
</html>