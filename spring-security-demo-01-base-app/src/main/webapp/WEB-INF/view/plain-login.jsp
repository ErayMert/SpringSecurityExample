<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
		
		<title>Custom Login Page</title>
	</head>
	<body>
		<div class="container">
			<div class="row">	
				<div class="col-md-9">
					<h3>Custom Login Page</h3><br/>
					<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">
						
						<c:if test="${param.error != null}">
							<div class="alert alert-warning" role="alert">
							  Sorry! You entered invalid username/password.
							</div>							
						</c:if>
						
						<div class="form-group">
						    <label>User Name</label>
						    <input type="text" class="form-control" name="username" placeholder="User name">
						</div>
						  <div class="form-group">
						    <label>Password</label>
						    <input type="password" class="form-control" name="password"  placeholder="Password">
						  </div>
						  <input type="submit" class="btn btn-primary" value="Login"/>
					</form:form>
				</div>
			</div>
		</div>
	</body>
</html>