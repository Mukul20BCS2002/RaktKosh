<%@page import="com.entity.ThalassemiaPatientRegister"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Thalassemia Patient Profile Manage</title>
<%@include file="../component/all_css_js.jsp"%>
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
<c:if test="${empty thalassemiapatient }">
		<c:redirect url="../thalassemiaLogin.jsp"></c:redirect>
	</c:if>
	<%@include file="../component/navbar2.jsp"%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card card-sh">
					<div class="card-header">
						<p class="text-center fs-3">Manage Profile</p>
						<c:if test="${not empty msg }">
							<p class="text-center text-dark fs-4">${msg }</p>
							<c:remove var="msg" />
						</c:if>
					</div>
					<%
					ThalassemiaPatientRegister thalassemiapatient = (ThalassemiaPatientRegister) session.getAttribute("thalassemiapatient");
					%>
					<div class="card-body">
					<form action="../managethalassemiapatientProfile" method="post">
						<input type="hidden" name="id" class="form-control"
							value=<%=thalassemiapatient.getId()%>>
						<div class="mb-3">
							<label class="required-label">First Name</label> <input
								type="text" name="firstname" class="form-control"
								value=<%=thalassemiapatient.getFirstname()%> required>

						</div>
						<div class="mb-3">
							<label>Last Name</label> <input type="text" name="lastname"
								class="form-control"
								value="<%=thalassemiapatient.getLastname() == null ? "" : thalassemiapatient.getLastname()%>">
						</div>
						<div class="mb-3">
								<label>Guardian Name</label> <input type="text" name="guardianname"
									class="form-control" value="<%= thalassemiapatient.getGuardianname() == null ? "" : thalassemiapatient.getGuardianname() %>" >
							</div>
							<div class="mb-3">
								<label class="required-label">Email</label> <input type="text" name="email"
									class="form-control" value=<%=thalassemiapatient.getEmail() %> required>
							</div>
							<div class="mb-3">
								<label class="required-label">DOB</label> <input type="date" name="dob"
									class="form-control" value="<%= thalassemiapatient.getDob() == null ? "" : thalassemiapatient.getDob() %>" required>
							</div>
							
							<div class="mb-3">
								<label1 class="required-label">Gender</label1>
								<br> <select id="gender" name="gender" class="form-control">
									<option value="">--Select Value--</option>
									<option value="Male">Male</option>
									<option value="Female">Female</option>
									<option value="Other">Other</option>
								</select>
							</div>
							
							<div class="mb-3">
								<label1 class="required-label">State</label1>
								<br> <select id="state" name="state" class="form-control">
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
								<label1 class="required-label" for="district">Select District:</label1>
								<br> <select id="district" name="district" class="form-control" disabled>
									<option value="">--Select Value--</option>
								</select>
							</div>
							
							
							
							<div class="mb-3">
								<label class="required-label">Pincode</label> <input type="text" name="pincode"
									class="form-control" value="<%= thalassemiapatient.getPincode() == null ? "" : thalassemiapatient.getPincode() %>" required>
							</div>
							
							<div class="mb-3">
								<label1 class="required-label">Blood Group</label1>
								<br> <select id="group" name="bloodgroup" class="form-control">
									<option value="">--Select Value--</option>
									<option value="Ab+Ve">AB+Ve</option>
									<option value="Ab-Ve">Ab-Ve</option>
									<option value="A+Ve">A+Ve</option>
									<option value="A-Ve">A-Ve</option>
									<option value="B+Ve">B+Ve</option>
									<option value="B-Ve">B-Ve</option>
									<option value="Oh+Ve">Oh+Ve</option>
									<option value="Oh-Ve">Oh-Ve</option>
									<option value="O+Ve">O+Ve</option>
									<option value="O-Ve">O-Ve</option>
								</select>
							</div>
							
							
							<div class="mb-3">
								<label class="required-label">Caontact No.</label> <input type="text" name="contact"
									class="form-control" value="<%= thalassemiapatient.getContact() == null ? "" : thalassemiapatient.getContact() %>" required>
							</div>
							
						<button class="btn btn-danger col-md-12">Save</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="../component/search1.js"></script>
</body>
</html>