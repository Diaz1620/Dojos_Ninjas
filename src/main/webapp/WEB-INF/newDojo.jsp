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
	<h1>Let's Make A Dojo :-)</h1>

	<form:form action="/makeDojo" method="post" modelAttribute="addDojo">
		<form:input path="name" />
		<form:errors path="name" class="text-danger" />
		<input type="submit" value="Add A Dojo" class="btn btn-sm btn-primary" />
	</form:form>
	
	
	
</body>
</html>