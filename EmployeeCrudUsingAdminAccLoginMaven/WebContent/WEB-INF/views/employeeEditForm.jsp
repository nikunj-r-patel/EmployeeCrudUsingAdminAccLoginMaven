<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Edit Page</title>
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
	border: 1px solid #e8e8e8;
	transition: all .3s;
	box-shadow: 6px 6px 12px #c5c5c5, -6px -6px 12px #ffffff;
}
button:hover {
	border: 1px solid pink;
}
a {
	text-decoration: none;
}
.outOfContainer {
	background-color: gray;
	margin-top: 20px;
	padding: 0.7em 1.7em;
	font-size: 20px;
	border-radius: 0.5em;
	border: 3px solid pink;
	transition: all .3s;
	box-shadow: 6px 6px 12px #c5c5c5, -6px -6px 12px #ffffff;
	font-size: 20px;
	padding: 10px;
	margin-right: auto;
	display: flex;
	flex-direction: row;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Update Employee Data</h1>
		<form id="empForm" action="<%=request.getContextPath()%>/update"
			method="post">
			<table>
				<tr>
					<td class="inputLable">Employee Id :</td>
					<td><input type="hidden" name="empId"
						value="${employeeEdit.id}" required="required"></td>
				</tr>
				<tr>
					<td class="inputLable">Enter Employee New Name:</td>
					<td><input type="text" name="newEmpName"
						value="${employeeEdit.name}" required="required"></td>
				</tr>
				<tr>
					<td class="inputLable">Enter Employee New Email:</td>
					<td><input type="email" name="newEmpEmail"
						value="${employeeEdit.email}" required="required"></td>
				</tr>
				<tr>
					<td class="inputLable">Enter Employee New Password:</td>
					<td><input type="password" name="newEmpPassword"
						value="${employeeEdit.password}" required="required"></td>
				</tr>
				<tr>
					<td class="inputLable">Enter Employee New EmpType :</td>
					<td><input type="text" name="newEmpType"
						value="${employeeEdit.employeeType}" required="required"></td>
				</tr>
				<tr>
					<td></td>
					<td>
						<button type="submit">Update & Save</button>&nbsp;&nbsp;
						<button type="reset">Reset</button>
					</td>
				</tr>
			</table>
		</form>
		<br>
	</div>
</body>
</html>