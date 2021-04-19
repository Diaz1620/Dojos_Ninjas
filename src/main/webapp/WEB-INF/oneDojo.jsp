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
	<h1>Check Out this Dojo and Their Students</h1>
	<h3>${thisDojo.name}</h3>
	<ul>
		<c:forEach items="${thisDojo.ninjas}" var="nin">
			<li>${nin.firstName} ${nin.lastName} ${nin.age}</li>
		</c:forEach>
	</ul>

	
	
</body>
</html>