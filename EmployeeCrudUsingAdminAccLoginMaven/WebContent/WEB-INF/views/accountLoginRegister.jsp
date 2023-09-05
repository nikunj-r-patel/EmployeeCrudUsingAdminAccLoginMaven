<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login/Register Page</title>
<style type="text/css">
.container {
	background-color: gray;
	width: 40%;
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
#radio {
	accent-color: rgb(0, 255, 0);
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
	border: 2px solid pink;
}
a {
	font-size: 25px;
	text-decoration: none;
	color: blue;
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
	<div class="message"><h3>${message}</h3></div>
	<div class="container">
		<h1>Add New Employee</h1>
		<form id="empForm" action="<%=request.getContextPath()%>/insert"
			method="post">
			<table>
				<!-- 	<tr>
					<td class="inputLable">Enter Employee Id:</td>
					<td><input type="number" name="empId" placeholder="enter id "
						required="required"></td>
				</tr> -->
				<tr>
					<td class="inputLable">Enter Employee Name:</td>
					<td><input type="text" name="empName"
						placeholder="enter name " required="required"></td>
				</tr>
				<tr>
					<td class="inputLable">Enter Employee Email:</td>
					<td><input type="email" name="empEmail"
						placeholder="enter email " required="required"></td>
				</tr>
				<tr>
					<td class="inputLable">Enter Employee Password:</td>
					<td><input type="password" name="empPassword"
						placeholder="enter password " required="required"></td>
				</tr>
				<tr>
					<td class="inputLable">Enter Employee Type:</td>
					<td><input id="radio" type="radio" name="empType"
						value="Admin" required="required">Admin <input id="radio"
						type="radio" name="empType" value="General" required="required">General</td>
				</tr>
				<tr>
					<td></td>
					<td>
						<button type="submit">Register</button>&nbsp;&nbsp;
						<button type="reset">Reset</button>
					</td>
				</tr>
			</table>
		</form>
		<br>
		<div class="outOfContainer">
			<a href="<%=request.getContextPath()%>/list">See All Employees</a>
		</div>
		<div class="outOfContainer">
			<a href="<%=request.getContextPath()%>/logout">Logout</a>
		</div>
	</div>
</body>
</html>