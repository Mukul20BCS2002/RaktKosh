<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Blood Camp</title>
<%@include file="../component/all_css_js.jsp"%>
</head>
<body>
<c:if test="${empty adminbank }">
		<c:redirect url="../login.jsp"></c:redirect>
	</c:if>
<%@include file="../component/navbar0.jsp"%>
</body>
</html>