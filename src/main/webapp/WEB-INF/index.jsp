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
	<a href="/newDojo">Add a Dojo</a>
	<a href="/newNinja">Add a Ninja</a>
	<br>
	<h1>Hello There We Are Live!</h1>
	

	<ul>
		<c:forEach items="${allDojos}" var="tom">
			<li><a href="/showDojo/${tom.id}">${tom.name}</a></li>
		</c:forEach>
	</ul>
	
	
</body>
</html>