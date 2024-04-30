<%@page import="com.entity.ThalassemiaRequest"%>
<%@page import="java.util.List"%>
<%@page import="com.db.HibernateUtil"%>
<%@page import="com.dao.ThalassemiaRequestDao"%>
<%@page import="com.entity.ThalassemiaPatientRegister"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Past Thalassemia request</title>
<%@include file="../component/all_css_js.jsp"%>
<style type="text/css">
.card-sh {
	box-shadow: 0 0 6px 0 rgba(0, 0, 0, 0.3)
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
			<div class="col-md-12 offset-md-0">
				<div class="card card-sh">
					<div class="card-header text-center">
						<p class="text-center fs-3">Past Blood Request</p>
					</div>
					<div class="card-body">
						<table class="table table-striped table-hover">
							<thead>
								<tr>
									<th scope="col">S. No.</th>
									<th scope="col">Date</th>
									<th scope="col">Blood Bank Name</th>
									<th scope="col">Quantity</th>
									<th scope="col">Blood Group</th>
									<th scope="col">Component</th>
									<th scope="col">Status</th>
								</tr>
							</thead>

								<tbody>
									<%
									ThalassemiaPatientRegister thalassemiapatient = (ThalassemiaPatientRegister) session.getAttribute("thalassemiapatient");
									int thalassemiapatient_id= thalassemiapatient.getId();
									ThalassemiaRequestDao trdao = new ThalassemiaRequestDao(HibernateUtil.getSessionFactory());
									List<ThalassemiaRequest>thalassemiarequest = trdao.getAllThalassemiaRequestById(thalassemiapatient_id);
									int count = 0;
									for (ThalassemiaRequest list : thalassemiarequest) {
										count++;
										String statusColorClass = "";
							            String status = list.getStatus();
							            if (status.equals("Done")) {
							                statusColorClass = "text-success"; // Green color
							            } else if (status.equals("Remove")) {
							                statusColorClass = "text-danger"; // Red color
							            } else if (status.equals("Pending")) {
							                statusColorClass = "text-warning"; // Orange color
							            } else {
							                statusColorClass = ""; // Default color
							            }
									%>
									<tr>
										<th scope="row"><%=count%></th>
										<td class="table-primary"><%=list.getDate()%></td>
										<td class="table-secondary"><%=list.getBankname()%></td>
										<td class="table-primary"><%=list.getQuantity()%></td>
										<td class="table-success"><%=list.getBloodgroup()%></td>
										<td class="table-warning"><%=list.getComponent()%></td>
										<td class="<%= statusColorClass %>"><%=list.getStatus()%></td>
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