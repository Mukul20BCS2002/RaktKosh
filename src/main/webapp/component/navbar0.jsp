<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-light bg-danger">
	<div class="container-fluid">
		<a class="navbar-brand" href="#"><i class="fa-solid fa-droplet"></i>
			RaktKosh</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				
				<c:if test="${not empty adminbank }">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="home.jsp"><i
						class="fa-solid fa-house-user"></i> Home</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="donorList.jsp"><i class="fa-solid fa-list-ul"></i> Donor
							List</a></li>

					<li class="nav-item"><a class="nav-link active"
						href="bloodRequest.jsp" tabindex="-1"><i
							class="fa-solid fa-bell"></i> View Blood Request</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="managestock.jsp" tabindex="-1"><i
							class="fa-solid fa-bars-progress"></i> Manage Stock</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="addBloodCamp.jsp" tabindex="-1"><i
							class="fa-solid fa-plus"></i> Add Blood Camp</a></li>


				</c:if>
			</ul>

		</div>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<c:if test="${not empty adminbank}">
					<li class="nav-item"><a class="nav-link active" href="#">
							<i class="fa-solid fa-circle-user"></i> ${adminbank.name }
					</a></li>

					<li class="nav-item"><a class="nav-link active"
						href="../logout" tabindex="-1"><i
							class="fa-solid fa-right-to-bracket"></i> Logout</a></li>
				</c:if>
			</ul>
		</div>
	</div>
</nav>