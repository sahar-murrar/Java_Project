<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Owner Properties</title>
</head>
<body>
	<h1>
		Welcome,
		<c:out value="${user.name}" />
		your own properties are:
	</h1>
	<c:forEach items="${OwnerProperties}" var="property">
		<p>
			<img src="images/<c:out value="${property.image}"></c:out>"
				alt="image_not_found">
		</p>
		<p>
			Property Status:
			<c:out value="${property.status}"></c:out>
			<c:if test="${property.status == 'rented'}">
				<form action="/changeStatus/${property.id}" method="post"
					style="margin-top: 15px">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" /> <input type="submit"
						value="Change Status to available">
				</form>
			</c:if>
		</p>
		<c:if test="${property.client != null}">
			<p>***********client info******************</p>
			<p>
				Property Client:
				<c:out value="${property.client.name}"></c:out>
			</p>
			<p>
				Reservation Start Date:
				<c:out value="${property.startReserveDate}"></c:out>
			</p>
			<p>
				Reservation End Date:
				<c:out value="${property.endReserveDate}"></c:out>
			</p>
			<p>*****************************</p>
		</c:if>

		<p>
			Property Type:
			<c:out value="${property.type}"></c:out>
		</p>
		<p>
			Property Area:
			<c:out value="${property.area}"></c:out>
		</p>
		<p>
			#of bedrooms:
			<c:out value="${property.bedrooms}"></c:out>
		</p>
		<p>
			#of bathrooms:
			<c:out value="${property.bathrooms}"></c:out>
		</p>
		<p>
			City:
			<c:out value="${property.city}"></c:out>
		</p>
		<p>
			Property Price:
			<c:out value="${property.price}"></c:out>
		</p>
		<p>-----------------------------------------------------</p>
	</c:forEach>
</body>
</html>