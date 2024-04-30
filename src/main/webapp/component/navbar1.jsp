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
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="donorHome.jsp"><i
						class="fa-solid fa-house-user"></i> Home</a></li>
				<c:if test="${not empty donor }">
					<li class="nav-item"><a class="nav-link active"
						href="manageProfile.jsp"><i class="fa-solid fa-people-roof"></i> Manage Profile</a></li>

					<li class="nav-item"><a class="nav-link active"
						href="donorRecord.jsp" tabindex="-1"><i class="fa-solid fa-bars"></i> Participants/Donations certificates</a></li>
						<li class="nav-item"><a class="nav-link active"
						href="donorRepository.jsp"><i class="fa-solid fa-file-medical"></i> Donor Repository</a></li>
				</c:if>
			</ul>

		</div>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<c:if test="${not empty donor}">
					<li class="nav-item"><a class="nav-link active" href="#">
							<i class="fa-solid fa-circle-user"></i>Welcome ${donor.name }
					</a></li>

					<li class="nav-item"><a class="nav-link active"
						href="../logout" tabindex="-1"><i
							class="fa-solid fa-right-to-bracket"></i> Logout</a></li>
				</c:if>
			</ul>

		</div>
	</div>
</nav>