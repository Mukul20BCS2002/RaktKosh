<%@page import="com.entity.AdminBank"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blood Availabilty</title>
<%@include file="../component/all_css_js.jsp"%>
<style type="text/css">
.card-sh {
	box-shadow: 0 0 6px 0 rgba(0, 0, 0, 0.3)
}
</style>
</head>
<body class="bg-light">
	<%@include file="../component/navbar.jsp"%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card card-sh">
					<div class="card-header">
						<p class="text-center fs-3">Blood Stock Availability</p>
					</div>
					<div class="card-body">
						<form action="bloodAvailability" method="post">
							<div class="mb-3">
								<label1>State</label1>
								<br> <select id="state" name="state">
									<option value="">--Select State--</option>
									<option value="Andhra Pradesh">Andhra Pradesh</option>
									<option value="Arunachal Pradesh">Arunachal Pradesh</option>
									<option value="Assam">Assam</option>
									<option value="Bihar">Bihar</option>
									<option value="Chhattisgarh">Chhattisgarh</option>
									<option value="Goa">Goa</option>
									<option value="Gujarat">Gujarat</option>
									<option value="Haryana">Haryana</option>
									<option value="Himachal Pradesh">Himachal Pradesh</option>
									<option value="Jammu and Kashmir">Jammu and Kashmir</option>
									<option value="Jharkhand">Jharkhand</option>
									<option value="Karnataka">Karnataka</option>
									<option value="Kerala">Kerala</option>
									<option value="Madhya Pradesh">Madhya Pradesh</option>
									<option value="Maharashtra">Maharashtra</option>
									<option value="Manipur">Manipur</option>
									<option value="Meghalaya">Meghalaya</option>
									<option value="Mizoram">Mizoram</option>
									<option value="Nagaland">Nagaland</option>
									<option value="Odisha">Odisha</option>
									<option value="Punjab">Punjab</option>
									<option value="Rajasthan">Rajasthan</option>
									<option value="Sikkim">Sikkim</option>
									<option value="Tamil Nadu">Tamil Nadu</option>
									<option value="Telangana">Telangana</option>
									<option value="Tripura">Tripura</option>
									<option value="Uttar Pradesh">Uttar Pradesh</option>
									<option value="Uttarakhand">Uttarakhand</option>
									<option value="WestBengal">West Bengal</option>
								</select>
							</div>
							<div class="mb-3">
								<label1 for="district">Select District:</label1><br>
								<select id="district" name="district" disabled>
									<option value="">--Select District--</option>
								</select>
							</div>
							<button class="btn btn-danger col-md-12">Search</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<c:if test="${not empty banklist }">
	<div class="container p-5">
			<div class="row">
				<div class="col-md-12 offset-md-0">
					<div class="card card-sh">
						<div class="card-header text-center">
							<p class="text-center fs-3">Nearest Blood Bank</p>
						</div>
						<div class="card-body">
							<table class="table table-striped table-hover" class="table-primary">
								<thead>
									<tr>
										<th scope="col">S. No.</th>
										<th scope="col">Name</th>
										<th scope="col">Address</th>
										<th scope="col">Contact No.</th>
										<th scope="col">Category</th>
										
									</tr>
								</thead>
								<tbody>
									<%
									List<AdminBank> banklist = (List<AdminBank>) session.getAttribute("banklist");
									int count = 0;
									for (AdminBank admin : banklist) {
										count++;
									%>
									<tr>
										<th scope="row"><%=count%></th>
										<td class="table-primary"><%=admin.getName()%></td>
										<td class="table-secondary"><%=admin.getAddress()%></td>
										<td class="table-success"><%=admin.getContact()%></td>
										<td class="table-warning"><%=admin.getCategory()%></td>
									</tr>
									<%
									}
									session.removeAttribute("banklist");
									%>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:if>

	
	<script src="component/search1.js"></script>
</body>
</html>