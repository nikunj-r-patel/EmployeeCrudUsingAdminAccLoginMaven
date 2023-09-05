<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Employees Details</title>
<style type="text/css">
#logout {
	text-align: right;
	width: 50%;
}
.table {
	border: 3px solid pink;
	background-color: gray;
	border-radius: 10px;
	border-spacing: 5px;
	padding: 5px;
}
th, td {
	font-size: 20px
}
a {
	font-size: 25px;
	text-decoration: none;
	color: blue;
}
</style>
</head>
<body>
	<div id="logout">
		<a href="<%=request.getContextPath()%>/logout">Click here to
			Logout</a>
	</div>
	<div class="head">
		<a href="<%=request.getContextPath()%>/register">&larr; Add New
			Employee</a>
	</div>
	<br>
	<br>
	<div class=bigBox>
		<table class="table" border="1" width="60%">
			<thead>
				<th>ID</th>
				<th>NAME</th>
				<th>EMAIL</th>
				<th>PASSWORD</th>
				<th>EMPLOYEE TYPE</th>
				<th colspan="2">EDIT OPTIONS</th>
			</thead>
			<tbody>
				<c:forEach var="employee" items="${listOfAllEmployee}">
					<tr>
						<td><c:out value="${employee.id}" /></td>
						<td><c:out value="${employee.name}" /></td>
						<td><c:out value="${employee.email}" /></td>
						<td><c:out value="${employee.password}" /></td>
						<td><c:out value="${employee.employeeType}" /></td>
						<td><a href="edit?id=<c:out value='${employee.id}'/>">Update</a></td>
						<td><a href="delete?id=<c:out value='${employee.id}'/>">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>