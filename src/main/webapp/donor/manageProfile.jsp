<%@page import="com.entity.Donor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manage Profile</title>
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
	<c:if test="${empty donor }">
		<c:redirect url="../donorlogin.jsp"></c:redirect>
	</c:if>
	<%@include file="../component/navbar1.jsp"%>
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
					Donor donor = (Donor) session.getAttribute("donor");
					%>
					<div class="card-body">
						<form action="../manageProfile" method="post">
							<input type="hidden" name="id" class="form-control"
								value=<%=donor.getId()%>> 
							
							<div class="mb-3">
								<label>Donor Name</label> <input
									type="text" name="name" class="form-control"
									value="<%=donor.getName() == null ? "" : donor.getName()%>" >
							</div>
							<div class="mb-3">
								<label>Age</label> <input type="text"
									name="age" class="form-control"
									value="<%=donor.getAge() == null ? "" : donor.getAge()%>"
									>
							</div>

							<div class="mb-3">
								<label>DOB</label> <input type="date"
									name="dob" class="form-control"
									value="<%=donor.getDob() == null ? "" : donor.getDob()%>"
									>
							</div>

							<div class="mb-3">
								<label1 class="required-label">Gender</label1>
								<br> <select id="gender" name="gender" class="form-control" required>
									<option value="">--Select Value--</option>
									<option value="Male">Male</option>
									<option value="Female">Female</option>
									<option value="Other">Other</option>
								</select>
							</div>
							<div class="mb-3">
								<label class="required-label">Contact No.</label> <input
									type="text" name="contact" class="form-control"
									value=<%=donor.getContact()%> required>
							</div>
							<div class="mb-3">
								<label>Email/UserName</label> <input
									type="text" name="email" class="form-control"
									value="<%=donor.getEmail() == null ? "" : donor.getEmail()%>">
							</div>
							
							<div class="mb-3">
								<label1 class="required-label">Blood Group</label1>
								<br> <select id="group" name="bloodgroup"
									class="form-control" required>
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
								<label1>Maritial Status</label1>
								<br> <select id="Marital Status" name="maritialstatus"
									class="form-control">
									<option value="">--Select Maritial Status--</option>
									<option value="Single">Single</option>
									<option value="Married">Married</option>
									<option value="Divorced">Divorced</option>
									<option value="Separated">Separated</option>
									<option value="Widow/Widower">Widow/Widower</option>
								</select>
							</div>
							<div class="mb-3">
								<label1>Religion</label1>
								<br> <select id="religion" name="religion"
									class="form-control">
									<option value="">--Select Religion--</option>
									<option value="Hinduism">Hinduism</option>
									<option value="Buddhism">Buddhism</option>
									<option value="Christianity">Christianity</option>
									<option value="Islam">Islam</option>
									<option value="Jainism">Jainism</option>
									<option value="Sikkhism">Sikkhism</option>
									<option value="Other">Other</option>
								</select>
							</div>
							<div class="mb-3">
								<label1>Occupation</label1>
								<br> <select id="occupation" name="occupation"
									class="form-control">
									<option value="">--Select Occupation--</option>
									<option value="Agricultural,Fishey and Related Labour">Agricultural,Fishey
										and Related Labour</option>
									<option value="Blanks">Blanks</option>
									<option value="Businessman">Businessman</option>
									<option value="Corporate Manager">Corporate Manager</option>
									<option value="Customer Service Clerk">Customer
										Service Clerk</option>
									<option value="Drivers and Mobile Plant Operators">Drivers
										and Mobile Plant Operators"</option>
									<option
										value="Labour in mining,construction,manufacturing and transport">Labour
										in mining,construction,manufacturing and transport</option>
									<option value="Metal,machinary and Related workers">Metal,machinary
										and Related workers</option>
									<option value="Model,sales person and demonstration">Model,sales
										person and demonstration</option>
									<option value="Office Clerk">Office Clerk</option>
									<option value="Other Professional">Other Professional</option>
								</select>
							</div>
							
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
									class="form-control" required disabled>
									<option value="">--Select Value--</option>
								</select>
							</div>



							<div class="mb-3">
								<label class="required-label">Pincode</label> <input type="text"
									name="pincode" class="form-control"
									value="<%=donor.getPincode() == null ? "" : donor.getPincode()%>"
									required>
							</div>
							<div class="mb-3">
								<label class="required-label">Addresss</label> <input
									type="text" name="address" class="form-control"
									value="<%=donor.getAddress() == null ? "" : donor.getAddress()%>"
									required>
							</div>
							
							<div class="mb-3">
								<label class="required-label">Change Password</label> <input
									type="password" name="password" class="form-control"
									value="<%=donor.getAddress() == null ? "" : donor.getPassword()%>"
									required>
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