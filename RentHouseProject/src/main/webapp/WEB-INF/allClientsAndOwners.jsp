<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Clients and Owners</title>
</head>
<body>
	<div style="display: flex">
		<div>
			<c:forEach items="${allClients}" var="user">
				<p>=================================Client
					Info=====================================</p>
				<div style="display: flex">
					<p>
						Client name:
						<c:out value="${user.name}"></c:out>
					</p>

					<form action="/deleteClient/${user.id}" method="post"
						style="margin-top: 15px; margin-left: 15px">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" /> <input type="submit"
							value="Delete Client">
					</form>
				</div>
				<p>
					Client email:
					<c:out value="${user.email}"></c:out>
				</p>
				<p>
					Client phone:
					<c:out value="${user.phone}"></c:out>
				</p>
				<p>
					Client rented property:
					<c:forEach items="${user.rentedProperties}" var="property">
						<p>***************************property
							Info*******************************</p>
						<p>
							Property Owner:
							<c:out value="${property.owner.name}"></c:out>
						</p>
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
						<p>
							Reservation Start Date:
							<c:out value="${property.startReserveDate}"></c:out>
						</p>
						<p>
							Reservation End Date:
							<c:out value="${property.endReserveDate}"></c:out>
						</p>
						<p>*******************************************************************</p>
					</c:forEach>
				</p>
				<p>=================================================================================</p>
			</c:forEach>
		</div>

		<div>
			<c:forEach items="${allOwners}" var="user">
				<p>=================================Owner
					Info=====================================</p>
				<div style="display: flex">
					<p>
						Owner name:
						<c:out value="${user.name}"></c:out>
					</p>
					<form action="/deleteOwner/${user.id}" method="post"
						style="margin-top: 15px; margin-left: 15px">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" /> <input type="submit"
							value="Delete Owner">
					</form>
				</div>
				<p>
					Client email:
					<c:out value="${user.email}"></c:out>
				</p>
				<p>
					Client phone:
					<c:out value="${user.phone}"></c:out>
				</p>
				<p>
					Owner properties:
					<c:forEach items="${user.ownedProperties}" var="property">
						<p>***************************property
							Info*******************************</p>
						<p>
							Property Status:
							<c:out value="${property.status}"></c:out>
						</p>
						<c:if test="${property.client != null}">
							<p>****************client info*******************</p>
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
							<p>***********************************************</p>
						</c:if>
						<p>
							Property Owner:
							<c:out value="${property.owner.name}"></c:out>
						</p>
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
						<p>*******************************************************************</p>
					</c:forEach>
				</p>
				<p>=================================================================================</p>
			</c:forEach>

		</div>
	</div>


</body>
</html>