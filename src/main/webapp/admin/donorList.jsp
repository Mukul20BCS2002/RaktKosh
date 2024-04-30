<%@page import="com.entity.Donor"%>
<%@page import="java.util.List"%>
<%@page import="com.db.HibernateUtil"%>
<%@page import="com.dao.DonorRepositoryDao"%>
<%@page import="com.entity.AdminBank"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Donor List</title>
<%@include file="../component/all_css_js.jsp"%>
</head>
<body class="bg-light">
<c:if test="${empty adminbank}">
		<c:redirect url="../login.jsp"></c:redirect>
	</c:if>
	<%@include file="../component/navbar0.jsp"%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-12 offset-md-0">
				<div class="card card-sh">
					<div class="card-header text-center">
						<p class="text-center fs-3">Donor Repository</p>
					</div>
					<div class="card-body">
						<table class="table table-striped table-hover">
							<thead>
								<tr>
									<th scope="col">S. No.</th>
									<th scope="col">Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Blood Group</th>
									<th scope="col">Contact No.</th>
									<th scope="col">State</th>
									<th scope="col">District</th>
									<th scope="col">Address</th>
								</tr>
							</thead>
								<tbody>
									<%
									AdminBank adminbank = (AdminBank)session.getAttribute("adminbank");
									int adminbank_id = adminbank.getId();
									DonorRepositoryDao drdao = new DonorRepositoryDao(HibernateUtil.getSessionFactory());
									List<Donor> donorlist = drdao.getAllDonor(adminbank_id);
									int count = 0;
									for (Donor list : donorlist) {
										count++;
									%>
									<tr>
										<th scope="row"><%=count%></th>
										<td class="table-primary"><%=list.getName()%></td>
										<td class="table-secondary"><%=list.getGender()%></td>
										<td class="table-primary"><%=list.getAge()%></td>
										<td class="table-success"><%=list.getBloodgroup()%></td>
										<td class="table-warning"><%=list.getContact()%></td>
										<td class="table-info"><%=list.getState()%></td>
										<td class="table-light"><%=list.getDistrict()%></td>
										<td class="table-success"><%=list.getAddress()%></td>
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