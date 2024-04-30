<%@page import="com.entity.AdminBank"%>
<%@page import="java.util.List"%>
<%@page import="com.db.HibernateUtil"%>
<%@page import="com.dao.AdminBankRegisterDao"%>
<%@page import="com.entity.Donor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Donor Repository</title>
<%@include file="../component/all_css_js.jsp"%>
<style type="text/css">
.card-sh {
	box-shadow: 0 0 6px 0 rgba(0, 0, 0, 0.3)
}

.required-label::after {
	content: " *";
	color: red;
}

.input-group-text {
	padding-right: 10px; /* Adjust this value as needed */
}
</style>
</head>
<body class="bg-light">
	<c:if test="${empty donor }">
		<c:redirect url="../donorlogin.jsp"></c:redirect>
	</c:if>
	<%@include file="../component/navbar1.jsp"%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card card-sh">
					<div class="card-header">
						<p class="text-center fs-3">Donor Repository Details</p>
						<c:if test="${not empty msg }">
							<p class="text-center text-danger fs-4">${msg }</p>
							<c:remove var="msg" />
						</c:if>
					</div>

					<div class="card-body">
						<div class="input-group mb-3">
							<div class="input-group-text">
								<input id="checkboxDonor" class="form-check-input mt-0 me-2"
									type="checkbox" value=""
									aria-label="Checkbox for following text input"> <span
									class="align-middle">I want to be a part of donor
									repository</span>
							</div>
							<input type="text" class="form-control"
								aria-label="Text input with checkbox">
						</div>
						<form id="donorForm" action="../searchadminbank" method="post"
							style="display: none;">
							<div class="mb-3">
								<label1 class="required-label">State</label1>
								<br> <select id="state" name="state" class="form-control" required>
									<option value="">--Select Value--</option>
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
								<label1 class="required-label" for="district">Select
								District:</label1>
								<br> <select id="district" name="district"
									class="form-control" disabled required>
									<option value="">--Select Value--</option>
								</select>
							</div>
							<button class="btn btn-danger col-md-12">Search</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<c:if test="${not empty banklist }">
		<div class="container p-5">
			<div class="row">
				<div class="col-md-12 offset-md-0">
					<div class="card card-sh">
						<div class="card-header text-center">
							<p class="text-center fs-3">Nearest Blood Bank</p>
							<c:if test="${not empty msg }">
								<p class="text-center text-success fs-4">${msg }</p>
								<c:remove var="msg" />
							</c:if>
						</div>
						<div class="card-body">
							<table class="table table-striped table-hover">
								<thead>
									<tr>
										<th scope="col">S. No.</th>
										<th scope="col">State</th>
										<th scope="col">District</th>
										<th scope="col">Address</th>
										<th scope="col">Blood Bank</th>
										<th scope="col">Action</th>
									</tr>
								</thead>
								<tbody>
									<%
									Donor donor = (Donor) session.getAttribute("donor");
									int donorId = donor.getId();
									List<AdminBank> banklist = (List<AdminBank>) session.getAttribute("banklist");
									int count = 0;
									for (AdminBank admin : banklist) {
										count++;
									%>
									<tr>
										<th scope="row"><%=count%></th>
										<td><%=admin.getState()%></td>
										<td><%=admin.getDistrict()%></td>
										<td><%=admin.getAddress()%></td>
										<td><%=admin.getName()%></td>
										<td>
											<form action="../savedonorrepo" method="post">
												<input type="hidden" name="bankId" value=<%=admin.getId() %>>
												<input type="hidden" name="donorId" value=<%=donorId %>>
												<button class="btn btn-sm btn-success me-1">Save</button>

											</form> 
										</td>
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
	<script>
		// Get the checkbox and form elements
		const checkboxDonor = document.getElementById("checkboxDonor");
		const donorForm = document.getElementById("donorForm");

		// Add event listener to the checkbox
		checkboxDonor.addEventListener("change", function() {
			// Toggle the visibility of the form based on the checkbox's checked state
			donorForm.style.display = this.checked ? "block" : "none";
		});
	</script>
	<script src="../component/search1.js"></script>
</body>
</html>