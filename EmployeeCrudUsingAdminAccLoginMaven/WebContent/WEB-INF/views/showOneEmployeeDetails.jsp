<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>One Employee Details</title>
<style type="text/css">
.container {
	background-color: gray;
	width: 30%;
	border: 2px solid aqua;
	border-radius: 20px;
	box-shadow: -6px 6px 12px #c5c5c5, -6px 6px 12px #ffffff;
	padding: 20px;
	font-size: 20px;
	color: white;
	margin-left: auto;
	margin-right: auto;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}
h1 {
	border-bottom: 1px solid black;
}
#empForm table tr td input {
	padding: 10px;
	font-size: 20px;
	border: none;
	border-radius: 0.5em;
	background: #e8e8e8;
	border: 1px solid #e8e8e8;
	transition: all .3s;
}
.inputLable {
	border-radius: 15px;
	text-align: right;
}
button {
	background-color: gray;
	margin-top: 20px;
	padding: 0.7em 1.7em;
	font-size: 20px;
	border-radius: 0.5em;
	border: 3px solid #e8e8e8;
	transition: all .3s;
	box-shadow: 6px 6px 12px #c5c5c5, -6px -6px 12px #ffffff;
}
button:hover {
	border: 2px solid pink;
}
a {
	font-size: 25px;
	text-decoration: none;
	color: blue;
}
</style>
</head>
<body>
	<div class="message"><h3>${message}</h3></div>
	<div class="container">
		<h1>Showing Your Data</h1>
		<form id="empForm" action="<%=request.getContextPath()%>/logout"
			method="post">
			<table>
				<tr>
					<td class="inputLable">Employee Id :</td>
					<td><input type="hidden" name="empId"
						value="${generalEmployee.id}" required="required"></td>
				</tr>
				<tr>
					<td class="inputLable">Enter Employee New Name:</td>
					<td><input type="text" name="newEmpName"
						value="${generalEmployee.name}" required="required"></td>
				</tr>
				<tr>
					<td class="inputLable">Enter Employee New Email:</td>
					<td><input type="email" name="newEmpEmail"
						value="${generalEmployee.email}" required="required"></td>
				</tr>
				<tr>
					<td class="inputLable">Enter Employee New Password:</td>
					<td><input type="password" name="newEmpPassword"
						value="${generalEmployee.password}" required="required"></td>
				</tr>
				<tr>
					<td class="inputLable">Enter Employee New EmpType :</td>
					<td><input type="text" name="newEmpType"
						value="${generalEmployee.employeeType}" required="required"></td>
				</tr>
				<tr>
					<td></td>
					<td>
						<button type="submit">Logout</button>&nbsp;&nbsp;

					</td>
				</tr>
			</table>
		</form>
		<br>
	</div>
</body>
</html>