<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
</head>
<body>

	<div>
		<h1>Register!</h1>

		<p>
			<form:errors path="user.*" />
		</p>

		<form:form method="POST" action="/registration" modelAttribute="user">
			<p>
				<form:label path="name">Name:</form:label>
				<form:input type="text" path="name" />
			</p>
			<p>
				<form:label path="email">Email:</form:label>
				<form:input type="email" path="email" />
			</p>
			<p> City:
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
			</p>
			<p>Phone Number:
				<form:input type="text" path="phone" />
				<form:errors path="phone" />
				

			</p>

			<p>

				<input type="radio" name="role" value="ADMIN" />Admin <input
					type="radio" name="role" value="CLIENT" />Client <input
					type="radio" name="role" value="OWNER" />Owner
			</p>
			<p>
				<form:label path="password">Password:</form:label>
				<form:password path="password" />
			</p>
			<p>
				<form:label path="passwordConfirmation">Password Conf:</form:label>
				<form:password path="passwordConfirmation" />
			</p>
			<input type="submit" value="Register" />
		</form:form>

	</div>




</body>
</html>