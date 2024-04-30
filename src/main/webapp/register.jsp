<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
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
						<p class="text-center fs-3">Add Blood Bank</p>
						<c:if test="${not empty msg }">
							<p class="text-center text-dark fs-4">${msg }</p>
							<c:remove var="msg" />
						</c:if>
					</div>
					<div class="card-body">
						<form action="adminRegister" method="post">
							<div class="mb-3">
								<label class="required-label">Blood Bank Name</label> <input type="text" name="name"
									class="form-control" required>
							</div>
							<div class="mb-3">
								<label1 class="required-label">Category</label1>
								<br> <select id="category" name="category" class="form-control">
									<option value="">--Select categorry--</option>
									<option value="Goverment">Goverment</option>
									<option value="RedCross">RedCross</option>
									<option value="Charitable/vol">Charitable/vol</option>
									<option value="Private">Private</option>
								</select>
							</div>
							<div class="mb-3">
								<label class="required-label">Contact Person</label> <input type="text" name="person"
									class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="required-label">Email</label> <input type="email" name="email"
									class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="required-label">Password</label> <input type="password" name="password"
									class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="required-label">Contact No.</label> <input type="text" name="contact"
									class="form-control" required>
							</div>
							<div class="mb-3">
								<label1 class="required-label">State</label1>
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
								<label1class="required-label" for="district" >Select District:</label1>
								<br> <select id="district" name="district" class="form-control" disabled>
									<option value="">--Select District--</option>
								</select>
							</div>
							<div class="mb-3">
								<label class="required-label">Pincode</label> <input type="text" name="pincode"
									class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="required-label">Addresss</label> <input type="text" name="address"
									class="form-control" required>
							</div>
							
							<button class="btn btn-danger col-md-12">Add</button>
							<div class="text-center mt-2">
								Already have an account <a href="login.jsp">Login</a>
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