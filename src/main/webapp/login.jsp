<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<%@include file="component/all_css_js.jsp"%>
<style type="text/css">
.card-sh {
	box-shadow: 0 0 6px 0 rgba(0, 0, 0, 0.3)
}
.required-label::after {
        content: " *";
        color: red;
    }
</style>
</head>
<body class="bg-light">
	<%@include file="component/navbar.jsp"%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card card-sh">
					<div class="card-header">
						<p class="text-center fs-3">Blood Bank Login</p>
						<c:if test="${not empty msg }">
						<p class="text-center text-danger fs-4">${msg }</p>
						<c:remove var="msg"/>
						</c:if>
					</div>
					<div class="card-body">
						<form action="adminLogin" method="post">
							<div class="mb-3">
								<label class="required-label">Email</label> <input type="email" name="email"
									class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="required-label">Password</label> <input type="password" name="password"
									class="form-control" required>
							</div>
							<button class="btn btn-danger col-md-12">Login</button>
							<div class="text-center mt-2">
							Don't have account <a href="register.jsp">Create one</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>