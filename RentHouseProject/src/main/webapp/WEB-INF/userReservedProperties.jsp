<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Reserved Properties</title>
</head>
<body>
	<h3>
		Welcome,
		<c:out value="${user.name}" />
		your reserved properties are:
	</h3>
	<c:forEach items="${clientReservedProperties}" var="property">
		<p>
			<img src="images/<c:out value="${property.image}"></c:out>"
				alt="image_not_found">
		</p>
		<p> Property Owner:
			<c:out value="${property.owner.name}"></c:out>
		</p>
		<p>Property Type:
			<c:out value="${property.type}"></c:out>
		</p>
		<p>Property Area:
			<c:out value="${property.area}"></c:out>
		</p>
		<p>#of bedrooms:
			<c:out value="${property.bedrooms}"></c:out>
		</p>
		<p>#of bathrooms:
			<c:out value="${property.bathrooms}"></c:out>
		</p>
		<p>City:
			<c:out value="${property.city}"></c:out>
		</p>
		<p>Property Price:
			<c:out value="${property.price}"></c:out>
		</p>
		<p> Reservation Start Date:
			<c:out value="${property.startReserveDate}"></c:out>
		</p>
		<p>Reservation End Date:
			<c:out value="${property.endReserveDate}"></c:out>
		</p>
		<p>-----------------------------------------------------</p>
	</c:forEach>


</body>
</html>