<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

		<h1>New Student!</h1>
		<div>
			<form:form action="/ninjas/new" method="POST" modelAttribute="ninja">
				<p>
					<form:label path="firstName">First Name: </form:label>
					<form:errors path="firstName" />
					<form:input path="firstName" />
				</p>
				<p>
					<form:label path="lastName">Last Name: </form:label>
					<form:errors path="lastName" />
					<form:input path="lastName" />
				</p>
				<p>
					<form:label path="age">Age: </form:label>
					<form:errors path="age" />
					<form:input path="age" type="number" />
				</p>
				<p>
					<form:label path="dojo">Select Dojo:</form:label>
					<form:errors path="dojo" />
					<form:select path="dojo" >
						<option value="" disabled selected></option>
						<c:forEach items="${dojos }" var="d">
							<form:option value="${d.id }">
								${d.name }
							</form:option>
						</c:forEach>
					</form:select>
				</p>
				<input type="submit" value="Create Ninja" />
			</form:form>
		</div>
	</div>

	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/app.js"></script>
</body>

</html>