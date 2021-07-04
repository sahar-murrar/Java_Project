<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main Page</title>
</head>
<body>
	<a href="/login"> Login</a>
	<h1>Search Property</h1>
	<form method="POST" action="/serach_property">
		<p>
			Type: <select name="type" id="type">
				<option value="appartment">Appartment</option>
				<option value="houses">Houses</option>
				<option value="villas">Villas</option>
				<option value="commercial offices">Commercial Offices</option>
			</select>

		</p>
		<p>
			<input type="number" name="area" placeholder="choose prpoerty area" />
		</p>
		<p>
			<input type="number" name="bedrooms"
				placeholder="choose prpoerty #of bedrooms" />
		</p>
		<p>
			<input type="number" name="bathrooms"
				placeholder="choose prpoerty #of bathrooms" />
		</p>
		<p>
			City: <select name="city" id="city">
				<option value="Ramallah">Ramallah</option>
				<option value="Nablus">Nablus</option>
				<option value="Hebron">Hebron</option>
				<option value="Jerusalem">Jerusalem</option>
				<option value="Qalqelia">Qalqelia</option>
				<option value="Jenin">Jenin</option>
				<option value="Jericho">Jericho</option>
				<option value="Bethlehem">Bethlehem</option>
				<option value="Tubas">Tubas</option>
				<option value="Yafa">Yafa</option>
				<option value="Akka">Akka</option>
			</select>

		</p>
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" /> <input type="submit" value="search" />
	</form>
	<h1>Create Property</h1>
	<form:form method="POST" action="/create_property"
		modelAttribute="property">
		<p>
			Type:
			<form:select name="type" id="type" path="type">
				<form:option value="appartment">Appartment</form:option>
				<form:option value="houses">Houses</form:option>
				<form:option value="villas">Villas</form:option>
				<form:option value="commercial offices">Commercial Offices</form:option>
			</form:select>
			<form:errors path="type" />
		</p>
		<p>
			<form:label path="area">Area:</form:label>
			<form:input type="number" path="area" />
			<form:errors path="area" />
		</p>
		<p>
			<form:label path="bedrooms">#of Bedrooms:</form:label>
			<form:input type="number" path="bedrooms" />
			<form:errors path="bedrooms" />
		</p>
		<p>
			<form:label path="bathrooms">#of Bathrooms:</form:label>
			<form:input type="number" path="bathrooms" />
			<form:errors path="bathrooms" />
		</p>

		<p>
			<form:label path="price">Price:</form:label>
			<form:input type="number" path="price" />
			<form:errors path="price" />
		</p>
		<p>
			<form:label path="description">Description:</form:label>
			<form:textarea path="description" />
			<form:errors path="description" />
		</p>
		<p>
			City:
			<form:select name="city" id="city" path="city">
				<form:option value="Ramallah">Ramallah</form:option>
				<form:option value="Nablus">Nablus</form:option>
				<form:option value="Hebron">Hebron</form:option>
				<form:option value="Jerusalem">Jerusalem</form:option>
				<form:option value="Qalqelia">Qalqelia</form:option>
				<form:option value="Jenin">Jenin</form:option>
				<form:option value="Jericho">Jericho</form:option>
				<form:option value="Bethlehem">Bethlehem</form:option>
				<form:option value="Tubas">Tubas</form:option>
				<form:option value="Yafa">Yafa</form:option>
				<form:option value="Akka">Akka</form:option>
			</form:select>
			<form:errors path="city" />
		</p>
		<p>
			<form:input type="hidden" path="status" value="available" />
		</p>
		<input type="submit" value="Create Property" />
	</form:form>


</body>
</html>