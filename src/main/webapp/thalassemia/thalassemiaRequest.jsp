<%@page import="com.entity.AdminBank"%>
<%@page import="java.util.List"%>
<%@page import="com.db.HibernateUtil"%>
<%@page import="com.dao.AdminBankRegisterDao"%>
<%@page import="com.entity.ThalassemiaPatientRegister"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Thalassemia Request</title>
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
						<p class="text-center fs-3">Thalassemia Request</p>
						<c:if test="${not empty msg }">
							<p class="text-center text-danger fs-4">${msg }</p>
							<c:remove var="msg" />
						</c:if>
					</div>

					<div class="card-body">
						<form action="../thalassemiaRequest" method="post">
							<div class="mb-3">
								<label class="required-label">Requirement Date</label> <input
									type="date" name="date" class="form-control" required>
							</div>

							<div class="mb-3">
								<label1 class="required-label">Component</label1>
								<br> <select id="component" name="component"
									class="form-control">
									<option value="">--Select Componenrt--</option>
									<option value="Whole Blood">Whole Blood</option>
									<option value="Packed Red Blood Cells">Packed Red
										Blood Cells</option>
									<option value="Fresh Frozen Plasma">Fresh Frozen
										Plasma</option>
									<option value="Single Donor Platelet">Single Donor
										Platelet</option>
									<option value="Platelet Rich Plasma">Platelet Rich
										Plasma</option>
									<option value="Cryoprecipitate">Cryoprecipitate</option>
									<option value="Single Donor Plasma">Single Donor
										Plasma</option>
									<option value="Plasma">Plasma</option>
									<option value="Platelet Concentrate">Platelet
										Concentrate</option>
									<option value="Cryo Poor Plasma">Cryo Poor Plasma</option>
									<option value="Random Donor Platelets">Random Donor
										Platelets</option>
									<option value="Platelets additive solution">Platelets
										additive solution</option>
									<option value="Sagam Packed Red Blood Cells">Sagam
										Packed Red Blood Cells</option>
									<option value="Irradiated RBC">Irradiated RBC</option>
									<option value="Leukoreduced RBC">Leukoreduced RBC</option>
								</select>
							</div>

							<div class="mb-3">
								<label>Quantity</label> <input type="text" name="quantity"
									class="form-control">
							</div>

							<div class="mb-3">
								<label1 class="required-label">Blood Bank Name</label1>
								<br> <select id="bankname" name="bankname"
									class="form-control">
									<%
									ThalassemiaPatientRegister thalassemiapatient = (ThalassemiaPatientRegister) session.getAttribute("thalassemiapatient");
									int patientId = thalassemiapatient.getId();
									String state = thalassemiapatient.getState();
									String district = thalassemiapatient.getDistrict();
									AdminBankRegisterDao abrdao = new AdminBankRegisterDao(HibernateUtil.getSessionFactory());
									List<AdminBank> adminbanklist = abrdao.getAllBank(state, district);
									for(AdminBank list:adminbanklist)
									{
									%>
									<option value="<%= list.getId()%>"><%=list.getName() %></option>
									<%} %>
								</select>
							</div>
							<input type="hidden" name="patientId" value=<%=patientId %>>
							<input type="hidden" name="status" value=<%="pending"%>>
							<div class="mb-3">
								<label1 class="required-label">Blood Group</label1>
								<br> <select id="group" name="bloodgroup"
									class="form-control">
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

							<button class="btn btn-danger col-md-12">Save</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>