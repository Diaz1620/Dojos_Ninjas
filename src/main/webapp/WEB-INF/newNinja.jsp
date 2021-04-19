<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
    <script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<a href="/">Home</a>
	<br>
	<h1>The Making Of A New Ninja</h1>
	
	<form:form action="/makeNinja" method="post" modelAttribute="addNinja">
		<label>Dojo:</label>
		<select name="dojo" >
			<c:forEach items="${allDojos}" var="dojo">
				<option value="${dojo.id}">${dojo.name} ${dojo.id}</option>
			</c:forEach>
		</select>
		<br>
		<form:label path="firstName">First Name:</form:label>
		<form:errors path="firstName" class="text-danger" />
		<form:input path="firstName" />
		<br>
		<form:label path="lastName">Last Name:</form:label>
		<form:errors path="lastName" class="text-danger" />
		<form:input path="lastName" />
		<br>
		<form:label path="age">Age:</form:label>
		<form:errors path="age" class="text-danger" />
		<form:input type="number" path="age" />
		<br>
		<input type="submit" value="Submit"/>
	</form:form>
	
</body>
</html>