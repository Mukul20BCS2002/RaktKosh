<%@page import="com.entity.ThalassemiaRequest"%>
<%@page import="java.util.List"%>
<%@page import="com.db.HibernateUtil"%>
<%@page import="com.dao.ThalassemiaRequestDao"%>
<%@page import="com.entity.AdminBank"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blood Request</title>
<style type="text/css">
.card-sh {
	box-shadow: 0 0 6px 0 rgba(0, 0, 0, 0.3)
}
</style>
<%@include file="../component/all_css_js.jsp"%>
</head>
<body class="bg-light">
	<c:if test="${empty adminbank }">
		<c:redirect url="../login.jsp"></c:redirect>
	</c:if>
	<%@include file="../component/navbar0.jsp"%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-12 offset-md-0">
				<div class="card card-sh">
					<div class="card-header text-center">
						<p class="text-center fs-3">Active Blood Request</p>
						<c:if test="${not empty msg }">
							<p class="text-center text-danger fs-4">${msg }</p>
							<c:remove var="msg" />
						</c:if>
					</div>
					<div class="card-body">
						<table class="table table-striped table-hover" class="table-warning">
							<thead>
								<tr>
									<th scope="col">S. No.</th>
									<th scope="col">Date</th>
									<th scope="col">Patient Hospital</th>
									<th scope="col">Patient Contact</th>
									<th scope="col">Quantity</th>
									<th scope="col">Blood Group</th>
									<th scope="col">Component</th>
									<th scope="col">Action</th>
								</tr>
							</thead>

							<tbody>
								<%
								AdminBank admin = (AdminBank) session.getAttribute("adminbank");
								int adminbank_id = admin.getId();
								ThalassemiaRequestDao trdao = new ThalassemiaRequestDao(HibernateUtil.getSessionFactory());
								List<ThalassemiaRequest> thalassemiarequestlist = trdao.getAllBankRequestById(adminbank_id, "pending");
								int count = 0;
								for (ThalassemiaRequest list : thalassemiarequestlist) {
									count++;
								%>
								<tr>
									<th scope="row"><%=count%></th>
									<td class="table-primary"><%=list.getDate()%></td>
									<td class="table-secondary"><%=list.getPatientHospitalName()%></td>
									<td class="table-success"><%=list.getPatientContact()%></td>
									<td class="table-warning"><%=list.getQuantity()%></td>
									<td class="table-info"><%=list.getBloodgroup()%></td>
									<td class="table-light"><%=list.getComponent()%></td>
									<td><a
										href="../processthalassemiarequest?id=<%=list.getId()%>"
										class="btn btn-sm btn-success me-1">Process</a> <a
										href="../removethalassemiarequest?id=<%=list.getId()%>"
										class="btn btn-sm btn-danger me-1">Remove</a></td>
								</tr>
								<%
								}
								%>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>