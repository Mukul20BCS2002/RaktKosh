<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Donor Record</title>
</head>
<body>
<c:if test="${empty donor }">
		<c:redirect url="../donorlogin.jsp"></c:redirect>
	</c:if>
</body>
</html>