<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<title>Insert title here</title>
</head>

	<body>
		<div class="container">
			
			<h1>
			<c:out value="${dojo.name }"></c:out>
			Location Ninjas
			</h1>
			<div>
			<table>
				<thead>
					<tr>
						<th>First Name</th>
						<th>Last</th>
						<th>Age</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${dojo.ninjas}" var="n">
						<tr>
							<td><c:out value="${n.firstName}" /></td>
							<td><c:out value="${n.lastName}" /></td>
							<td><c:out value="${n.age}" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			</div>
		</div>
	
		<script src="/webjars/jquery/jquery.min.js"></script>
		<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/app.js"></script>
	</body>
	
</html>