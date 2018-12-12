<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Home Page</title>
</head>
<body>
	<h2>Company Home Page</h2>	
	<hr/>
	<p>
		Welcome to the company page
	</p>
	<hr/>
	<p>
		User: <security:authentication property="principal.username" />
		<br/><br/>
		Role(s): <security:authentication property="principal.authorities" />
	</p>
	
	<security:authorize access="hasRole('Manager')">
		<hr/>
			<p>
				<a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
				(Only for Manager peeps)
			</p>
		<hr/>
	</security:authorize>
	
	<security:authorize access="hasRole('Admin')">
		<hr/>
			<p>
				<a href="${pageContext.request.contextPath}/systems">System Admin Meeting</a>
				(Only for Admin peeps)
			</p>
		<hr/>
	</security:authorize>
	
	<form:form action="${pageContext.request.contextPath}/logout" method="POST">
	
	<input type="submit" class="btn btn-info" value="Logout"/>
	
	
	</form:form>
</body>
</html>