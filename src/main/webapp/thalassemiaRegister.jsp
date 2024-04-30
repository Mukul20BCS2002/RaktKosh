<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Thalassemia Register</title>
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
						<p class="text-center fs-3">Thalassemia Patient Registration</p>
						<c:if test="${not empty msg }">
							<p class="text-center text-dark fs-4">${msg }</p>
							<c:remove var="msg" />
						</c:if>
					</div>
					<div class="card-body">
						<form action="thalassemiaRegister" method="post">
							<div class="mb-3">
								<label class="required-label">First Name</label> <input
									type="text" name="firstname" class="form-control" required>
							</div>
							<div class="mb-3">
								<label>Last Name</label> <input type="text" name="lastname"
									class="form-control ">
							</div>
							<div class="mb-3">
								<label>Guardian Name</label> <input type="text"
									name="guardianname" class="form-control ">
							</div>
							<div class="mb-3">
								<label class="required-label">Date of Birth</label> <input
									type="date" name="dob" class="form-control" required>
							</div>
							<div class="mb-3">
								<label1 class="required-label" >Gender</label1>
								<br> <select id="gender" name="gender" class="form-control">
									<option value="">--Select Gender--</option>
									<option value="Male">Male</option>
									<option value="Female">Female</option>
									<option value="Other">Other</option>
								</select>
							</div>
							<div class="mb-3">
								<label class="required-label">Email</label> <input type="email"
									name="email" class="form-control" required>
							</div>

							<div class="mb-3">
								<label1>State</label1>
								<br> <select id="state" name="state" class="form-control">
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
								<label1 for="district">Select District:</label1>
								<br> <select id="district" name="district" class="form-control" disabled>
									<option value="">--Select District--</option>
								</select>
							</div>
							<div class="mb-3">
								<label>Pincode</label> <input type="text" name="pincode"
									class="form-control">
							</div>
							<div class="mb-3">
								<label class="required-label">Contact No.</label> <input
									type="text" name="contact" class="form-control">
							</div>
							<div class="mb-3">
								<label class="required-label">Password</label> <input
									type="password" name="password" class="form-control" required>
							</div>

							<div class="mb-3">
								<label1 class="required-label">Hospital Type</label1>
								<br> <select id="hospitaltype" name="hospitaltype" class="form-control">
									<option value="">--Select Hospital Type--</option>
									<option value="Goverment">Goverment</option>
									<option value="Private">Private</option>
									<option value="Charitable">Charitable</option>
									<option value="IRCS">IRCS</option>
								</select>
							</div>

							<div class="mb-3">
								<label class="required-label">Registered Hospital Name</label> <input
									type="text" name="hospitalname" class="form-control">
							</div>
							
							<div class="mb-3">
								<label class="required-label">Blood Taken from (Previously)</label> <input
									type="text" name="bloodtakenprev" class="form-control">
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
								<label1 class="required-label">RH</label1>
								<br> <select id="rh" name="rh" class="form-control">
									<option value="Positive">Positive</option>
									<option value="Negative">Negative</option>
								</select>
							</div>
							
							<div class="mb-3">
								<label1 class="required-label">Component</label1>
								<br> <select id="component" name="component" class="form-control">
									<option value="">--Select Componenrt--</option>
									<option value="Whole Blood">Whole Blood</option>
									<option value="Packed Red Blood Cells">Packed Red Blood Cells</option>
									<option value="Fresh Frozen Plasma">Fresh Frozen Plasma</option>
									<option value="Single Donor Platelet">Single Donor Platelet</option>
									<option value="Platelet Rich Plasma">Platelet Rich Plasma</option>
									<option value="Cryoprecipitate">Cryoprecipitate</option>
									<option value="Single Donor Plasma">Single Donor Plasma</option>
									<option value="Plasma">Plasma</option>
									<option value="Platelet Concentrate">Platelet Concentrate</option>
									<option value="Cryo Poor Plasma">Cryo Poor Plasma</option>
									<option value="Random Donor Platelets">Random Donor Platelets</option>
									<option value="Platelets additive solution">Platelets additive solution</option>
									<option value="Sagam Packed Red Blood Cells">Sagam Packed Red Blood Cells</option>
									<option value="Irradiated RBC">Irradiated RBC</option>
									<option value="Leukoreduced RBC">Leukoreduced RBC</option>
								</select>
							</div>
							<button class="btn btn-danger col-md-12">Register</button>
							<div class="text-center mt-2">
								Already have an account <a href="donorLogin.jsp">Login</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="component/search1.js"></script>
</body>
</html>