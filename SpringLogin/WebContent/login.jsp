<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring Sample - Login Page</title>
</head>
<body>
	<center>
		<h3>Login Page</h3>
		<br/>
		<%-- <form:form commandName="login" method="POST" name="login">
			Username:<form:input path="username"/>
				<font color="red"><form:errors path="username"/></font><br/><br/>
			Password:<form:password path="password"/>
				<font color="red"><form:errors path="password"/></font><br/><br/>
			<input type="submit" value="Login"/>
		</form:form> --%>
		<form action="Login.spring" method="post">
			<table>
				<tr>
					<td>User Name</td>
					<td><input type="text" name="userName"/></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password"/></td>
				</tr>
				<tr>
					<td><input type="submit" name="submit"/></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>